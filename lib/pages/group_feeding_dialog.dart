import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../l10n/app_localizations.dart';
import '../providers/cat_provider.dart';
import '../models/feeding_record.dart';

class GroupFeedingDialog extends StatefulWidget {
  final String groupId;

  const GroupFeedingDialog({super.key, required this.groupId});

  @override
  State<GroupFeedingDialog> createState() => _GroupFeedingDialogState();
}

class _GroupFeedingDialogState extends State<GroupFeedingDialog> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedFoodType;
  final _amountController = TextEditingController();
  final _notesController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _amountController.text = '10'; // Default amount
  }

  @override
  void dispose() {
    _amountController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _saveRecord(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    if (_formKey.currentState!.validate()) {
      final amount = double.tryParse(_amountController.text);
      if (amount != null &&
          amount >= 0.5 &&
          amount <= 1000 &&
          _selectedFoodType != null) {
        final record = FeedingRecord(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          date: _selectedDate,
          foodType: _selectedFoodType!,
          amount: amount,
          notes: _notesController.text.isEmpty ? null : _notesController.text,
        );

        final catProvider = Provider.of<CatProvider>(context, listen: false);
        final catsInGroup = catProvider.getCatsByGroup(widget.groupId);
        int successCount = 0;
        int failedCount = 0;

        for (var cat in catsInGroup) {
          try {
            final uniqueRecord = FeedingRecord(
              id: '${record.id}_${cat.id}_${DateTime.now().millisecondsSinceEpoch}',
              date: record.date,
              foodType: record.foodType,
              amount: record.amount,
              notes: record.notes,
            );
            await catProvider.addFeedingRecord(cat.id, uniqueRecord);
            successCount++;
          } catch (e) {
            failedCount++;
          }
        }

        if (context.mounted) {
          Navigator.of(context).pop();
          if (failedCount > 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  // Note: count parameter is unused but required by generated code until regeneration
                  l10n.addedToCats(successCount, failedCount, 0),
                ),
                backgroundColor: Colors.orange,
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  l10n.addedToAllCats(successCount),
                ),
              ),
            );
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final catProvider = Provider.of<CatProvider>(context);
    final group = catProvider.getGroupById(widget.groupId);
    final catsInGroup = catProvider.getCatsByGroup(widget.groupId);

    return AlertDialog(
      title: Row(
        children: [
          if (group != null) ...[
            Text(group.icon, style: const TextStyle(fontSize: 24)),
            const SizedBox(width: 8),
          ],
          Text(group?.name ?? l10n.groupFeeding),
        ],
      ),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.thisWillAddAFeedingRecordToCats(catsInGroup.length),
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(height: 8),
              ...catsInGroup.map((cat) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Row(
                      children: [
                        Text(cat.icon, style: const TextStyle(fontSize: 16)),
                        const SizedBox(width: 8),
                        Text(
                          cat.name,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(height: 16),
              Consumer<CatProvider>(
                builder: (context, catProvider, _) {
                  // Remove duplicates
                  final uniqueFoodTypes =
                      catProvider.foodTypes.toSet().toList();

                  // Set default to first food type if not selected
                  if (_selectedFoodType == null && uniqueFoodTypes.isNotEmpty) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (mounted) {
                        setState(() {
                          _selectedFoodType = uniqueFoodTypes.first;
                        });
                      }
                    });
                  }

                  return DropdownButtonFormField<String>(
                    value: _selectedFoodType ??
                        (uniqueFoodTypes.isNotEmpty
                            ? uniqueFoodTypes.first
                            : null),
                    decoration: InputDecoration(
                      labelText: l10n.foodType,
                      prefixIcon: Icon(Icons.restaurant),
                    ),
                    items: uniqueFoodTypes.map((foodType) {
                      return DropdownMenuItem(
                        value: foodType,
                        child: Text(foodType),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedFoodType = value;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return l10n.pleaseSelectAFoodType;
                      }
                      return null;
                    },
                  );
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _amountController,
                decoration: InputDecoration(
                  labelText: l10n.amount,
                  prefixIcon: Icon(Icons.scale),
                  hintText: l10n.enterAmount,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return l10n.pleaseEnterAValidAmount;
                  }
                  final amount = double.tryParse(value);
                  if (amount == null) {
                    return l10n.pleaseEnterAValidAmount;
                  }
                  if (amount < 0.5 || amount > 1000) {
                    return l10n.pleaseEnterAValidAmount;
                  }
                  // Check decimal places
                  final parts = value.split('.');
                  if (parts.length > 1 && parts[1].length > 2) {
                    return l10n.pleaseEnterAValidAmount;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () => _selectDate(context),
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: l10n.date,
                    prefixIcon: Icon(Icons.calendar_today),
                  ),
                  child: Text(
                    '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _notesController,
                decoration: InputDecoration(
                  labelText: l10n.notes,
                  prefixIcon: Icon(Icons.note),
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.cancel),
        ),
        ElevatedButton(
          onPressed: () => _saveRecord(context),
          child: Text(l10n.saveToAllCats),
        ),
      ],
    );
  }
}
