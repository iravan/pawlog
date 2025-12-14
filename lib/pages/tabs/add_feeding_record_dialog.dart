import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../providers/cat_provider.dart';
import '../../models/feeding_record.dart';

class AddFeedingRecordDialog extends StatefulWidget {
  final String catId;
  final FeedingRecord? record; // null for add, non-null for edit

  const AddFeedingRecordDialog({super.key, required this.catId, this.record});

  @override
  State<AddFeedingRecordDialog> createState() => _AddFeedingRecordDialogState();
}

class _AddFeedingRecordDialogState extends State<AddFeedingRecordDialog> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedFoodType;
  final _amountController = TextEditingController();
  final _notesController = TextEditingController();
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    if (widget.record != null) {
      // Only set selected food type if it exists in the current food types list
      // This will be validated when the Consumer builds
      _selectedFoodType = widget.record!.foodType;
      _amountController.text = widget.record!.amount.toString();
      _notesController.text = widget.record!.notes ?? '';
      _selectedDate = widget.record!.date;
    } else {
      _selectedDate = DateTime.now();
      _amountController.text = '10'; // Default amount
    }
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
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _saveRecord() async {
    if (_formKey.currentState!.validate()) {
      final amount = double.tryParse(_amountController.text);
      if (amount != null &&
          amount >= 0.5 &&
          amount <= 1000 &&
          _selectedFoodType != null) {
        final catProvider = Provider.of<CatProvider>(context, listen: false);

        try {
          if (widget.record != null) {
            // Update existing record
            final updatedRecord = FeedingRecord(
              id: widget.record!.id,
              date: _selectedDate,
              foodType: _selectedFoodType!,
              amount: amount,
              notes:
                  _notesController.text.isEmpty ? null : _notesController.text,
            );
            await catProvider.updateFeedingRecord(
                widget.catId, widget.record!.id, updatedRecord);
          } else {
            // Add new record
            final record = FeedingRecord(
              id: DateTime.now().millisecondsSinceEpoch.toString(),
              date: _selectedDate,
              foodType: _selectedFoodType!,
              amount: amount,
              notes:
                  _notesController.text.isEmpty ? null : _notesController.text,
            );
            await catProvider.addFeedingRecord(widget.catId, record);
          }

          if (context.mounted) {
            Navigator.of(context).pop();
          }
        } catch (e) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(e.toString().replaceAll('Exception: ', '')),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
          widget.record != null ? 'Edit Feeding Record' : 'Add Feeding Record'),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Consumer<CatProvider>(
                builder: (context, catProvider, _) {
                  // Remove duplicates and ensure selected value exists
                  final uniqueFoodTypes =
                      catProvider.foodTypes.toSet().toList();
                  String? validSelectedValue = _selectedFoodType;

                  // For new records, set default to first food type
                  if (widget.record == null &&
                      _selectedFoodType == null &&
                      uniqueFoodTypes.isNotEmpty) {
                    validSelectedValue = uniqueFoodTypes.first;
                    // Update state to reflect the default selection
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (mounted) {
                        setState(() {
                          _selectedFoodType = validSelectedValue;
                        });
                      }
                    });
                  } else if (_selectedFoodType != null &&
                      !uniqueFoodTypes.contains(_selectedFoodType)) {
                    validSelectedValue = null;
                  }

                  return DropdownButtonFormField<String>(
                    value: validSelectedValue,
                    decoration: const InputDecoration(
                      labelText: 'Food Type',
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
                        return 'Please select a food type';
                      }
                      return null;
                    },
                  );
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _amountController,
                decoration: const InputDecoration(
                  labelText: 'Amount (grams)',
                  prefixIcon: Icon(Icons.scale),
                  hintText: '0.5 - 1000',
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter amount';
                  }
                  final amount = double.tryParse(value);
                  if (amount == null) {
                    return 'Please enter a valid number';
                  }
                  if (amount < 0.5 || amount > 1000) {
                    return 'Amount must be between 0.5 and 1000';
                  }
                  // Check decimal places
                  final parts = value.split('.');
                  if (parts.length > 1 && parts[1].length > 2) {
                    return 'Maximum 2 decimal places allowed';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () => _selectDate(context),
                child: InputDecorator(
                  decoration: const InputDecoration(
                    labelText: 'Date',
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
                decoration: const InputDecoration(
                  labelText: 'Notes (optional)',
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
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _saveRecord,
          child: const Text('Save'),
        ),
      ],
    );
  }
}
