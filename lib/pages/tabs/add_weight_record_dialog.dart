import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    return AlertDialog(
      title: Text(widget.record != null ? 'Edit Weight Record' : 'Add Weight Record'),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _weightController,
                decoration: const InputDecoration(
                  labelText: 'Weight (kg)',
                  prefixIcon: Icon(Icons.monitor_weight),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter weight';
                  }
                  final weight = double.tryParse(value);
                  if (weight == null || weight <= 0) {
                    return 'Please enter a valid weight';
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

