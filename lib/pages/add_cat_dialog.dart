import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cat_provider.dart';
import '../models/cat.dart';

class AddCatDialog extends StatefulWidget {
  final String groupId;

  const AddCatDialog({super.key, required this.groupId});

  @override
  State<AddCatDialog> createState() => _AddCatDialogState();
}

class _AddCatDialogState extends State<AddCatDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  String _selectedIcon = '🐱';

  final List<String> _iconOptions = [
    '🐱', '🐈', '🐈‍⬛', '😸', '😹', '😻', '😼', '😽',
    '🙀', '😿', '😾', '🐾', '🦁', '🐯', '🐅', '🐆',
  ];

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      final catProvider = Provider.of<CatProvider>(context, listen: false);
      final newCat = Cat(
        id: catProvider.generateCatId(),
        name: _nameController.text.trim(),
        description: _descriptionController.text.trim(),
        icon: _selectedIcon,
        groupId: widget.groupId,
      );
      catProvider.addCat(newCat);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final catProvider = Provider.of<CatProvider>(context);
    final group = catProvider.getGroupById(widget.groupId);

    return AlertDialog(
      title: Row(
        children: [
          if (group != null) ...[
            Text(group.icon, style: const TextStyle(fontSize: 24)),
            const SizedBox(width: 8),
          ],
          const Text('Add Cat'),
        ],
      ),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Cat Name',
                  prefixIcon: Icon(Icons.label),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a cat name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  prefixIcon: Icon(Icons.description),
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'Select Icon:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: _iconOptions.map((icon) {
                  final isSelected = icon == _selectedIcon;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIcon = icon;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Colors.deepPurple.shade100
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: isSelected
                              ? Colors.deepPurple
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          icon,
                          style: const TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
                  );
                }).toList(),
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
          onPressed: _save,
          child: const Text('Add'),
        ),
      ],
    );
  }
}

