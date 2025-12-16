import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:yaml/yaml.dart';
import '../models/cat.dart';
import '../models/group.dart';
import '../models/weight_record.dart';
import '../models/feeding_record.dart';
import '../models/medical_record.dart';
import '../providers/cat_provider.dart';

class ExportImportService {
  /// Export all data to YAML format and share it
  static Future<String?> exportToYaml(CatProvider catProvider) async {
    try {
      // Collect all data
      final groups = catProvider.groups;
      final cats = catProvider.cats;
      final weightRecords = <String, List<Map<String, dynamic>>>{};
      final feedingRecords = <String, List<Map<String, dynamic>>>{};
      final medicalRecords = <String, List<Map<String, dynamic>>>{};
      final foodTypes = catProvider.foodTypes;

      // Convert weight records
      for (var cat in cats) {
        final records = catProvider.getWeightRecords(cat.id);
        weightRecords[cat.id] = records
            .map((r) => {
                  'id': r.id,
                  'date': r.date.toIso8601String(),
                  'weight': r.weight,
                })
            .toList();
      }

      // Convert feeding records
      for (var cat in cats) {
        final records = catProvider.getFeedingRecords(cat.id);
        feedingRecords[cat.id] = records
            .map((r) => {
                  'id': r.id,
                  'date': r.date.toIso8601String(),
                  'foodType': r.foodType,
                  'amount': r.amount,
                  'notes': r.notes,
                })
            .toList();
      }

      // Convert medical records
      for (var cat in cats) {
        final records = catProvider.getMedicalRecords(cat.id);
        medicalRecords[cat.id] = records
            .map((r) => {
                  'id': r.id,
                  'date': r.date.toIso8601String(),
                  'title': r.title,
                  'notes': r.notes,
                })
            .toList();
      }

      // Build YAML structure
      final yamlData = {
        'version': '1.0',
        'exportDate': DateTime.now().toIso8601String(),
        'groups': groups
            .map((g) => {
                  'id': g.id,
                  'name': g.name,
                  'description': g.description,
                  'icon': g.icon,
                })
            .toList(),
        'cats': cats
            .map((c) => {
                  'id': c.id,
                  'name': c.name,
                  'description': c.description,
                  'icon': c.icon,
                  'groupId': c.groupId,
                  'tags': c.tags,
                })
            .toList(),
        'weightRecords': weightRecords,
        'feedingRecords': feedingRecords,
        'medicalRecords': medicalRecords,
        'foodTypes': foodTypes,
      };

      // Convert to YAML string
      final yamlString = _mapToYaml(yamlData);

      // Save to temporary file and share
      final directory = await getTemporaryDirectory();
      final timestamp =
          DateTime.now().toIso8601String().replaceAll(':', '-').split('.')[0];
      final file = File('${directory.path}/pawslog_export_$timestamp.yaml');
      await file.writeAsString(yamlString);

      // Share the file
      await Share.shareXFiles(
        [XFile(file.path)],
        text: 'PawsLog Data Export',
        subject: 'PawsLog Backup',
      );

      return null; // Success
    } catch (e) {
      return 'Export failed: $e';
    }
  }

  /// Import data from YAML file
  /// Returns null on success, 'CANCELLED' if user cancelled, or error message string
  static Future<String?> importFromYaml(CatProvider catProvider) async {
    try {
      // Pick YAML file
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['yaml', 'yml'],
        withData: true,
      );

      if (result == null || result.files.isEmpty) {
        return 'CANCELLED'; // User cancelled
      }

      final file = result.files.first;
      if (file.bytes == null) {
        return 'Failed to read file';
      }

      // Read and parse YAML
      final yamlString = utf8.decode(file.bytes!);
      final yamlData = loadYaml(yamlString) as Map;

      // Validate version
      if (yamlData['version'] == null) {
        return 'Invalid file format: missing version';
      }

      // Import groups
      if (yamlData['groups'] != null) {
        final groupsData = yamlData['groups'] as List;
        final groups = groupsData
            .map((g) => Group(
                  id: g['id'] as String,
                  name: g['name'] as String,
                  description: g['description'] as String?,
                  icon: g['icon'] as String,
                ))
            .toList();
        await catProvider.saveGroupsDirectly(groups);
      }

      // Import cats
      if (yamlData['cats'] != null) {
        final catsData = yamlData['cats'] as List;
        final cats = catsData
            .map((c) => Cat(
                  id: c['id'] as String,
                  name: c['name'] as String,
                  description: c['description'] as String?,
                  icon: c['icon'] as String,
                  groupId: c['groupId'] as String?,
                  tags: c['tags'] != null
                      ? List<String>.from(c['tags'] as List)
                      : [],
                ))
            .toList();
        await catProvider.saveCatsDirectly(cats);
      }

      // Import weight records
      if (yamlData['weightRecords'] != null) {
        final weightRecordsData = yamlData['weightRecords'] as Map;
        final weightRecords = <String, List<WeightRecord>>{};
        weightRecordsData.forEach((catId, recordsList) {
          final records = (recordsList as List)
              .map((r) => WeightRecord(
                    id: r['id'] as String,
                    date: DateTime.parse(r['date'] as String),
                    weight: (r['weight'] as num).toDouble(),
                  ))
              .toList();
          weightRecords[catId as String] = records;
        });
        await catProvider.saveWeightRecordsDirectly(weightRecords);
      }

      // Import feeding records
      if (yamlData['feedingRecords'] != null) {
        final feedingRecordsData = yamlData['feedingRecords'] as Map;
        final feedingRecords = <String, List<FeedingRecord>>{};
        feedingRecordsData.forEach((catId, recordsList) {
          final records = (recordsList as List)
              .map((r) => FeedingRecord(
                    id: r['id'] as String,
                    date: DateTime.parse(r['date'] as String),
                    foodType: r['foodType'] as String,
                    amount: (r['amount'] as num).toDouble(),
                    notes: r['notes'] as String?,
                  ))
              .toList();
          feedingRecords[catId as String] = records;
        });
        await catProvider.saveFeedingRecordsDirectly(feedingRecords);
      }

      // Import medical records
      if (yamlData['medicalRecords'] != null) {
        final medicalRecordsData = yamlData['medicalRecords'] as Map;
        final medicalRecords = <String, List<MedicalRecord>>{};
        medicalRecordsData.forEach((catId, recordsList) {
          final records = (recordsList as List)
              .map((r) => MedicalRecord(
                    id: r['id'] as String,
                    date: DateTime.parse(r['date'] as String),
                    title: r['title'] as String,
                    notes: r['notes'] as String?,
                  ))
              .toList();
          medicalRecords[catId as String] = records;
        });
        await catProvider.saveMedicalRecordsDirectly(medicalRecords);
      }

      // Import food types
      if (yamlData['foodTypes'] != null) {
        final foodTypesData = yamlData['foodTypes'] as List;
        final foodTypes = foodTypesData.map((f) => f.toString()).toList();
        await catProvider.saveFoodTypesDirectly(foodTypes);
      }

      // Refresh provider
      await catProvider.initialize();

      return null; // Success
    } catch (e) {
      return 'Import failed: $e';
    }
  }

  /// Convert Map to YAML string
  static String _mapToYaml(dynamic data, {int indent = 0}) {
    final buffer = StringBuffer();
    final indentStr = '  ' * indent;

    if (data is Map) {
      for (var entry in data.entries) {
        final key = entry.key;
        final value = entry.value;

        if (value is Map) {
          buffer.writeln('$indentStr$key:');
          buffer.write(_mapToYaml(value, indent: indent + 1));
        } else if (value is List) {
          if (value.isEmpty) {
            buffer.writeln('$indentStr$key: []');
          } else {
            buffer.writeln('$indentStr$key:');
            for (var item in value) {
              if (item is Map) {
                buffer.writeln('$indentStr  -');
                buffer.write(_mapToYaml(item, indent: indent + 2));
              } else {
                buffer.write('$indentStr  - ');
                buffer.writeln(_formatYamlValue(item, indent: indent + 2));
              }
            }
          }
        } else {
          buffer.write('$indentStr$key: ');
          buffer.writeln(_formatYamlValue(value, indent: indent));
        }
      }
    } else if (data is List) {
      for (var item in data) {
        if (item is Map) {
          buffer.writeln('$indentStr-');
          buffer.write(_mapToYaml(item, indent: indent + 1));
        } else {
          buffer.write('$indentStr- ');
          buffer.writeln(_formatYamlValue(item, indent: indent));
        }
      }
    }

    return buffer.toString();
  }

  static String _formatYamlValue(dynamic value, {required int indent}) {
    if (value == null) {
      return 'null';
    } else if (value is String) {
      // Check if string needs quoting
      if (value.isEmpty ||
          value.contains(':') ||
          value.contains('\n') ||
          value.contains('"') ||
          value.contains("'") ||
          value.trim() != value ||
          _isNumericString(value) ||
          value.toLowerCase() == 'true' ||
          value.toLowerCase() == 'false' ||
          value.toLowerCase() == 'null') {
        // Escape quotes and newlines
        final escaped = value
            .replaceAll('\\', '\\\\')
            .replaceAll('"', '\\"')
            .replaceAll('\n', '\\n');
        return '"$escaped"';
      }
      return value;
    } else if (value is bool) {
      return value.toString();
    } else if (value is num) {
      return value.toString();
    } else {
      return value.toString();
    }
  }

  static bool _isNumericString(String str) {
    return double.tryParse(str) != null || int.tryParse(str) != null;
  }
}
