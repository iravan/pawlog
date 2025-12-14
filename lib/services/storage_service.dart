import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/cat.dart';
import '../models/group.dart';
import '../models/weight_record.dart';
import '../models/feeding_record.dart';

class StorageService {
  static const String _groupsBoxName = 'groups';
  static const String _catsBoxName = 'cats';
  static const String _weightRecordsBoxName = 'weightRecords';
  static const String _feedingRecordsBoxName = 'feedingRecords';
  static const String _foodTypesBoxName = 'foodTypes';

  static Future<void> init() async {
    await Hive.initFlutter();
  }

  // Groups
  static Future<void> saveGroups(List<Group> groups) async {
    final box = await Hive.openBox(_groupsBoxName);
    final groupsJson = groups.map((g) => {
      'id': g.id,
      'name': g.name,
      'description': g.description,
      'icon': g.icon,
    }).toList();
    await box.put('groups', jsonEncode(groupsJson));
  }

  static Future<List<Group>> loadGroups() async {
    try {
      final box = await Hive.openBox(_groupsBoxName);
      final groupsJson = box.get('groups');
      if (groupsJson == null) return [];
      
      final List<dynamic> decoded = jsonDecode(groupsJson);
      return decoded.map((g) => Group(
        id: g['id'],
        name: g['name'],
        description: g['description'],
        icon: g['icon'],
      )).toList();
    } catch (e) {
      return [];
    }
  }

  // Cats
  static Future<void> saveCats(List<Cat> cats) async {
    final box = await Hive.openBox(_catsBoxName);
    final catsJson = cats.map((c) => {
      'id': c.id,
      'name': c.name,
      'description': c.description,
      'icon': c.icon,
      'groupId': c.groupId,
    }).toList();
    await box.put('cats', jsonEncode(catsJson));
  }

  static Future<List<Cat>> loadCats() async {
    try {
      final box = await Hive.openBox(_catsBoxName);
      final catsJson = box.get('cats');
      if (catsJson == null) return [];
      
      final List<dynamic> decoded = jsonDecode(catsJson);
      return decoded.map((c) => Cat(
        id: c['id'],
        name: c['name'],
        description: c['description'],
        icon: c['icon'],
        groupId: c['groupId'],
      )).toList();
    } catch (e) {
      return [];
    }
  }

  // Weight Records
  static Future<void> saveWeightRecords(Map<String, List<WeightRecord>> records) async {
    final box = await Hive.openBox(_weightRecordsBoxName);
    final recordsJson = <String, dynamic>{};
    records.forEach((catId, recordList) {
      recordsJson[catId] = recordList.map((r) => {
        'id': r.id,
        'date': r.date.toIso8601String(),
        'weight': r.weight,
      }).toList();
    });
    await box.put('records', jsonEncode(recordsJson));
  }

  static Future<Map<String, List<WeightRecord>>> loadWeightRecords() async {
    try {
      final box = await Hive.openBox(_weightRecordsBoxName);
      final recordsJson = box.get('records');
      if (recordsJson == null) return {};
      
      final Map<String, dynamic> decoded = jsonDecode(recordsJson);
      final Map<String, List<WeightRecord>> records = {};
      decoded.forEach((catId, recordList) {
        records[catId] = (recordList as List).map((r) => WeightRecord(
          id: r['id'],
          date: DateTime.parse(r['date']),
          weight: (r['weight'] as num).toDouble(),
        )).toList();
      });
      return records;
    } catch (e) {
      return {};
    }
  }

  // Feeding Records
  static Future<void> saveFeedingRecords(Map<String, List<FeedingRecord>> records) async {
    final box = await Hive.openBox(_feedingRecordsBoxName);
    final recordsJson = <String, dynamic>{};
    records.forEach((catId, recordList) {
      recordsJson[catId] = recordList.map((r) => {
        'id': r.id,
        'date': r.date.toIso8601String(),
        'foodType': r.foodType,
        'amount': r.amount,
        'notes': r.notes,
      }).toList();
    });
    await box.put('records', jsonEncode(recordsJson));
  }

  static Future<Map<String, List<FeedingRecord>>> loadFeedingRecords() async {
    try {
      final box = await Hive.openBox(_feedingRecordsBoxName);
      final recordsJson = box.get('records');
      if (recordsJson == null) return {};
      
      final Map<String, dynamic> decoded = jsonDecode(recordsJson);
      final Map<String, List<FeedingRecord>> records = {};
      decoded.forEach((catId, recordList) {
        records[catId] = (recordList as List).map((r) => FeedingRecord(
          id: r['id'],
          date: DateTime.parse(r['date']),
          foodType: r['foodType'],
          amount: (r['amount'] as num).toDouble(),
          notes: r['notes'],
        )).toList();
      });
      return records;
    } catch (e) {
      return {};
    }
  }

  // Food Types
  static Future<void> saveFoodTypes(List<String> foodTypes) async {
    final box = await Hive.openBox(_foodTypesBoxName);
    await box.put('foodTypes', jsonEncode(foodTypes));
  }

  static Future<List<String>> loadFoodTypes() async {
    try {
      final box = await Hive.openBox(_foodTypesBoxName);
      final foodTypesJson = box.get('foodTypes');
      if (foodTypesJson == null) return [];
      
      final List<dynamic> decoded = jsonDecode(foodTypesJson);
      return decoded.map((f) => f.toString()).toList();
    } catch (e) {
      return [];
    }
  }
}

