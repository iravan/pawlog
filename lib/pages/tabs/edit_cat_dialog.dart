import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/cat_provider.dart';
import '../../models/cat.dart';

class EditCatDialog extends StatefulWidget {
  final Cat cat;

  const EditCatDialog({super.key, required this.cat});

  @override
  State<EditCatDialog> createState() => _EditCatDialogState();
}

class _EditCatDialogState extends State<EditCatDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  String _selectedIcon = '🐱';
  String? _selectedGroupId;

  final List<String> _iconOptions = [
    '🐱', '🐈', '🐈‍⬛', '😸', '😹', '😻', '😼', '😽',
    '🙀', '😿', '😾', '🐾', '🦁', '🐯', '🐅', '🐆',
  ];

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.cat.name;
    _descriptionController.text = widget.cat.description;
    _selectedIcon = widget.cat.icon;
    _selectedGroupId = widget.cat.groupId;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      final catProvider = Provider.of<CatProvider>(context, listen: false);
      catProvider.updateCat(
        widget.cat.id,
        _nameController.text.trim(),
        _descriptionController.text.trim(),
        _selectedIcon,
        _selectedGroupId,
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CatProvider>(
      builder: (context, catProvider, _) {
        return AlertDialog(
          title: const Text('Edit Cat Information'),
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
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String?>(
                    value: _selectedGroupId,
                    decoration: const InputDecoration(
                      labelText: 'Group (optional)',
                      prefixIcon: Icon(Icons.group),
                    ),
                    items: [
                      const DropdownMenuItem<String?>(
                        value: null,
                        child: Text('No Group'),
                      ),
                      ...catProvider.groups.map((group) {
                        return DropdownMenuItem<String?>(
                          value: group.id,
                          child: Row(
                            children: [
                              Text(group.icon),
                              const SizedBox(width: 8),
                              Text(group.name),
                            ],
                          ),
                        );
                      }),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _selectedGroupId = value;
                      });
                    },
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
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}

