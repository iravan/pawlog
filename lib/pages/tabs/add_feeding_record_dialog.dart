import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../l10n/app_localizations.dart';
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
            final errorMessage = e.toString().replaceAll('Exception: ', '');
            final isLimitError = errorMessage.contains('Maximum') && 
                                 errorMessage.contains('feeding records');
            
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
              ),
            );
            
            // Close dialog if limit is reached
            if (isLimitError) {
              Navigator.of(context).pop();
            }
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isEdit = widget.record != null;
    
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500, maxHeight: 700),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.restaurant,
                      color: Theme.of(context).colorScheme.primary,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isEdit ? l10n.editFeedingRecord : l10n.addFeedingRecord,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade900,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          isEdit
                              ? l10n.updateFeedingInformation
                              : l10n.recordYourPetsFeeding,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.grey.shade600),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            // Content
            Flexible(
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Food Type Section
                      Consumer<CatProvider>(
                        builder: (context, catProvider, _) {
                          final uniqueFoodTypes =
                              catProvider.foodTypes.toSet().toList();
                          String? validSelectedValue = _selectedFoodType;

                          if (widget.record == null &&
                              _selectedFoodType == null &&
                              uniqueFoodTypes.isNotEmpty) {
                            validSelectedValue = uniqueFoodTypes.first;
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
                            decoration: InputDecoration(
                              labelText: l10n.foodType,
                              hintText: l10n.selectFoodType,
                              prefixIcon: Icon(
                                Icons.restaurant,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade50,
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
                      const SizedBox(height: 24),
                      // Amount Section
                      TextFormField(
                        controller: _amountController,
                        decoration: InputDecoration(
                          labelText: l10n.amount,
                          hintText: l10n.enterAmount,
                          prefixIcon: Icon(
                            Icons.scale,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade50,
                        ),
                        keyboardType:
                            const TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^\d+\.?\d{0,2}')),
                        ],
                        style: const TextStyle(fontSize: 16),
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
                          final parts = value.split('.');
                          if (parts.length > 1 && parts[1].length > 2) {
                            return l10n.pleaseEnterAValidAmount;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      // Date Section
                      Text(
                        l10n.date,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade900,
                        ),
                      ),
                      const SizedBox(height: 12),
                      InkWell(
                        onTap: () => _selectDate(context),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: Theme.of(context).colorScheme.primary,
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey.shade600,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      // Notes Section
                      TextFormField(
                        controller: _notesController,
                        decoration: InputDecoration(
                          labelText: l10n.notes,
                          hintText: l10n.enterNotes,
                          prefixIcon: Icon(
                            Icons.note,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade50,
                        ),
                        maxLines: 3,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Footer Actions
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      l10n.cancel,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: _saveRecord,
                    icon: const Icon(Icons.check, size: 20),
                    label: Text(
                      l10n.saveChanges,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
