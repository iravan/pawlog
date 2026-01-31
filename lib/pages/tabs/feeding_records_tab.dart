import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart' as intl;
import '../../l10n/app_localizations.dart';
import '../../providers/cat_provider.dart';
import '../../models/feeding_record.dart';
import 'add_feeding_record_dialog.dart';

class FeedingRecordsTab extends StatelessWidget {
  final String catId;

  const FeedingRecordsTab({super.key, required this.catId});

  Map<String, List<FeedingRecord>> _groupRecordsByDay(
      List<FeedingRecord> records) {
    final Map<String, List<FeedingRecord>> grouped = {};

    for (var record in records) {
      final dayKey = intl.DateFormat('yyyy-MM-dd').format(record.date);
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

  List<String> _getSortedDayKeys(Map<String, List<FeedingRecord>> grouped) {
    final keys = grouped.keys.toList();
    keys.sort((a, b) => b.compareTo(a)); // Sort descending (newest first)
    return keys;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Consumer<CatProvider>(
      builder: (context, catProvider, _) {
        final records = catProvider.getFeedingRecords(catId);

        if (records.isEmpty) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.restaurant_outlined,
                    size: 64,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    l10n.noFeedingRecordsYet,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.tapTheButtonToAddARecord,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AddFeedingRecordDialog(catId: catId),
                );
              },
              icon: const Icon(Icons.add, size: 24),
              label: Text(
                l10n.addFeeding,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
              elevation: 4,
              highlightElevation: 8,
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

              final l10n = AppLocalizations.of(context)!;
              final locale = Localizations.localeOf(context);
              if (dayDate.year == today.year &&
                  dayDate.month == today.month &&
                  dayDate.day == today.day) {
                dayHeader = l10n.today;
              } else if (dayDate.year == yesterday.year &&
                  dayDate.month == yesterday.month &&
                  dayDate.day == yesterday.day) {
                dayHeader = l10n.yesterday;
              } else {
                dayHeader = intl.Intl.withLocale(
                  locale.toString(),
                  () => intl.DateFormat.yMMMMEEEEd().format(dayDate),
                );
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
                        shadowColor: Colors.black.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1,
                          ),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16),
                          leading: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Icon(
                              Icons.restaurant,
                              color: Colors.orange.shade700,
                              size: 24,
                            ),
                          ),
                          title: Text(
                            '${record.foodType} • ${record.amount}g',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade900,
                            ),
                          ),
                          subtitle:
                              record.notes != null && record.notes!.isNotEmpty
                                  ? Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        record.notes!,
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey.shade700,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    )
                                  : null,
                          trailing: PopupMenuButton<String>(
                            icon: const Icon(Icons.more_vert),
                            onSelected: (value) {
                              final catProvider = Provider.of<CatProvider>(
                                  context,
                                  listen: false);
                              if (value == 'edit') {
                                showDialog(
                                  context: context,
                                  builder: (context) => AddFeedingRecordDialog(
                                    catId: catId,
                                    record: record,
                                  ),
                                );
                              } else if (value == 'delete') {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    title: Text(
                                      l10n.deleteFeedingRecord,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade900,
                                      ),
                                    ),
                                    content: Text(
                                      l10n.deleteFeedingRecordConfirm(record.foodType, '${record.amount}'),
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade700,
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                        child: Text(
                                          l10n.cancel,
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          catProvider.deleteFeedingRecord(
                                              catId, record.id);
                                          Navigator.of(context).pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Theme.of(context)
                                              .colorScheme
                                              .error,
                                          foregroundColor: Colors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                        ),
                                        child: Text(l10n.delete),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                            itemBuilder: (context) {
                              final l10n = AppLocalizations.of(context)!;
                              return [
                                PopupMenuItem(
                                  value: 'edit',
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit, size: 20),
                                      SizedBox(width: 8),
                                      Text(l10n.edit),
                                    ],
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 'delete',
                                  child: Row(
                                    children: [
                                      Icon(Icons.delete,
                                          size: 20, color: Colors.red),
                                      SizedBox(width: 8),
                                      Text(l10n.delete,
                                          style: TextStyle(color: Colors.red)),
                                    ],
                                  ),
                                ),
                              ];
                            },
                          ),
                        ),
                      )),
                ],
              );
            },
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AddFeedingRecordDialog(catId: catId),
              );
            },
            icon: const Icon(Icons.add, size: 24),
            label: Text(
              l10n.addFeeding,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
            elevation: 4,
            highlightElevation: 8,
          ),
        );
      },
    );
  }
}
