import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../l10n/app_localizations.dart';
import '../../providers/cat_provider.dart';
import '../../models/weight_record.dart';

class AddWeightRecordDialog extends StatefulWidget {
  final String catId;
  final WeightRecord? record; // null for add, non-null for edit

  const AddWeightRecordDialog({super.key, required this.catId, this.record});

  @override
  State<AddWeightRecordDialog> createState() => _AddWeightRecordDialogState();
}

class _AddWeightRecordDialogState extends State<AddWeightRecordDialog> {
  final _formKey = GlobalKey<FormState>();
  final _weightController = TextEditingController();
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    if (widget.record != null) {
      _weightController.text = widget.record!.weight.toString();
      _selectedDate = widget.record!.date;
    } else {
      _selectedDate = DateTime.now();
    }
  }

  @override
  void dispose() {
    _weightController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: widget.record != null ? DateTime.now() : DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _saveRecord() {
    if (_formKey.currentState!.validate()) {
      final weight = double.tryParse(_weightController.text);
      if (weight != null && weight > 0) {
        final catProvider = Provider.of<CatProvider>(context, listen: false);
        
        if (widget.record != null) {
          // Update existing record
          final updatedRecord = WeightRecord(
            id: widget.record!.id,
            date: _selectedDate,
            weight: weight,
          );
          catProvider.updateWeightRecord(widget.catId, widget.record!.id, updatedRecord);
        } else {
          // Add new record (will replace if one exists for that day)
          final record = WeightRecord(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            date: _selectedDate,
            weight: weight,
          );
          catProvider.addWeightRecord(widget.catId, record);
        }

        Navigator.of(context).pop();
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
        constraints: const BoxConstraints(maxWidth: 500, maxHeight: 600),
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
                      Icons.monitor_weight,
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
                          isEdit ? l10n.editWeightRecord : l10n.addWeightRecord,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade900,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          isEdit
                              ? l10n.updateWeightInformation
                              : l10n.recordYourCatsWeight,
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
                      // Weight Section
                      TextFormField(
                        controller: _weightController,
                        decoration: InputDecoration(
                          labelText: l10n.weightKg,
                          hintText: l10n.enterWeight,
                          prefixIcon: Icon(
                            Icons.scale,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade50,
                        ),
                        keyboardType: const TextInputType.numberWithOptions(decimal: true),
                        style: const TextStyle(fontSize: 16),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return l10n.pleaseEnterAValidWeight;
                          }
                          final weight = double.tryParse(value);
                          if (weight == null || weight <= 0) {
                            return l10n.pleaseEnterAValidWeight;
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

