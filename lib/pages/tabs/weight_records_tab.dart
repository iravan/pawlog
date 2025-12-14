import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../../providers/cat_provider.dart';
import '../../models/weight_record.dart';
import 'add_weight_record_dialog.dart';

class WeightRecordsTab extends StatelessWidget {
  final String catId;

  const WeightRecordsTab({super.key, required this.catId});

  Map<String, List<WeightRecord>> _groupRecordsByDay(
      List<WeightRecord> records) {
    final Map<String, List<WeightRecord>> grouped = {};

    for (var record in records) {
      final dayKey = DateFormat('yyyy-MM-dd').format(record.date);
      if (!grouped.containsKey(dayKey)) {
        grouped[dayKey] = [];
      }
      grouped[dayKey]!.add(record);
    }

    // Sort records within each day by time (newest first)
    grouped.forEach((key, value) {
      value.sort((a, b) => b.date.compareTo(a.date));
    });

    return grouped;
  }

  List<String> _getSortedDayKeys(Map<String, List<WeightRecord>> grouped) {
    final keys = grouped.keys.toList();
    keys.sort((a, b) => b.compareTo(a)); // Sort descending (newest first)
    return keys;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CatProvider>(
      builder: (context, catProvider, _) {
        final records = catProvider.getWeightRecords(catId);

        if (records.isEmpty) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.monitor_weight_outlined,
                    size: 64,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No weight records yet',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Tap the + button to add a record',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AddWeightRecordDialog(catId: catId),
                );
              },
              child: const Icon(Icons.add),
            ),
          );
        }

        final groupedRecords = _groupRecordsByDay(records);
        final dayKeys = _getSortedDayKeys(groupedRecords);

        return Scaffold(
          body: ListView.builder(
            padding: const EdgeInsets.all(16),
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: dayKeys.length,
            itemBuilder: (context, dayIndex) {
              final dayKey = dayKeys[dayIndex];
              final dayRecords = groupedRecords[dayKey]!;
              final dayDate = DateTime.parse(dayKey);

              // Format day header
              String dayHeader;
              final today = DateTime.now();
              final yesterday = today.subtract(const Duration(days: 1));

              if (dayDate.year == today.year &&
                  dayDate.month == today.month &&
                  dayDate.day == today.day) {
                dayHeader = 'Today';
              } else if (dayDate.year == yesterday.year &&
                  dayDate.month == yesterday.month &&
                  dayDate.day == yesterday.day) {
                dayHeader = 'Yesterday';
              } else {
                dayHeader = DateFormat('EEEE, MMM dd, yyyy').format(dayDate);
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 8),
                    child: Text(
                      dayHeader,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  ...dayRecords.map((record) => Card(
                        margin: const EdgeInsets.only(bottom: 12),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16),
                          leading: CircleAvatar(
                            backgroundColor: Colors.deepPurple.shade100,
                            child: const Icon(
                              Icons.monitor_weight,
                              color: Colors.deepPurple,
                            ),
                          ),
                          title: Text(
                            '${record.weight} kg',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: null,
                          trailing: PopupMenuButton<String>(
                            icon: const Icon(Icons.more_vert),
                            onSelected: (value) {
                              final catProvider = Provider.of<CatProvider>(
                                  context,
                                  listen: false);
                              if (value == 'edit') {
                                showDialog(
                                  context: context,
                                  builder: (context) => AddWeightRecordDialog(
                                    catId: catId,
                                    record: record,
                                  ),
                                );
                              } else if (value == 'delete') {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text('Delete Weight Record'),
                                    content: Text(
                                        'Are you sure you want to delete this weight record (${record.weight} kg)?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                        child: const Text('Cancel'),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          catProvider.deleteWeightRecord(
                                              catId, record.id);
                                          Navigator.of(context).pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          foregroundColor: Colors.white,
                                        ),
                                        child: const Text('Delete'),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                            itemBuilder: (context) => [
                              const PopupMenuItem(
                                value: 'edit',
                                child: Row(
                                  children: [
                                    Icon(Icons.edit, size: 20),
                                    SizedBox(width: 8),
                                    Text('Edit'),
                                  ],
                                ),
                              ),
                              const PopupMenuItem(
                                value: 'delete',
                                child: Row(
                                  children: [
                                    Icon(Icons.delete,
                                        size: 20, color: Colors.red),
                                    SizedBox(width: 8),
                                    Text('Delete',
                                        style: TextStyle(color: Colors.red)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AddWeightRecordDialog(catId: catId),
              );
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
