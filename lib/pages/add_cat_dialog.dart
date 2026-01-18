import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../l10n/app_localizations.dart';
import '../providers/cat_provider.dart';
import '../models/cat.dart';

class AddCatDialog extends StatefulWidget {
  final String? groupId;

  const AddCatDialog({super.key, this.groupId});

  @override
  State<AddCatDialog> createState() => _AddCatDialogState();
}

class _AddCatDialogState extends State<AddCatDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  String _selectedIcon = '🐱';

  final List<String> _iconOptions = [
    // Cats
    '🐱',
    '🐈',
    '🐈‍⬛',
    '😸',
    '😹',
    '😻',
    '😼',
    '😽',
    '🙀',
    '😿',
    '😾',
    // Dogs
    '🐶',
    '🐕',
    '🐕‍🦺',
    '😊',
    '😍',
    '😎',
    '🤗',
    '🦮',
    '🐩',
    '🐺',
    // Other
    '🐾',
    '🦁',
    '🐯',
    '🐅',
    '🐆',
  ];

  PetType _selectedPetType = PetType.cat;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      final catProvider = Provider.of<CatProvider>(context, listen: false);
      final newCat = Pet(
        id: catProvider.generateCatId(),
        name: _nameController.text.trim(),
        description: _descriptionController.text.trim().isEmpty
            ? null
            : _descriptionController.text.trim(),
        icon: _selectedIcon,
        groupId: widget.groupId,
        type: _selectedPetType,
      );
      catProvider.addCat(newCat);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final catProvider = Provider.of<CatProvider>(context);
    final group = widget.groupId != null
        ? catProvider.getGroupById(widget.groupId!)
        : null;

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
                      Icons.pets,
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
                          l10n.addNewPet,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade900,
                          ),
                        ),
                        if (group != null) ...[
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                group.icon,
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(width: 6),
                              Text(
                                group.name,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ] else
                          const SizedBox(height: 4),
                        Text(
                          l10n.createANewPetProfile,
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
                      // Pet Type Section
                      Text(
                        l10n.petType,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade900,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedPetType = PetType.cat;
                                  if (_selectedIcon == '🐶' ||
                                      _selectedIcon == '🐕' ||
                                      _selectedIcon == '🐕‍🦺') {
                                    _selectedIcon = '🐱';
                                  }
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: _selectedPetType == PetType.cat
                                      ? Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.15)
                                      : Colors.grey.shade50,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: _selectedPetType == PetType.cat
                                        ? Theme.of(context).colorScheme.primary
                                        : Colors.grey.shade300,
                                    width:
                                        _selectedPetType == PetType.cat ? 2 : 1,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('🐱',
                                        style: const TextStyle(fontSize: 24)),
                                    const SizedBox(width: 8),
                                    Text(
                                      l10n.cat,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: _selectedPetType == PetType.cat
                                            ? Theme.of(context)
                                                .colorScheme
                                                .primary
                                            : Colors.grey.shade700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedPetType = PetType.dog;
                                  if (_selectedIcon == '🐱' ||
                                      _selectedIcon == '🐈' ||
                                      _selectedIcon == '🐈‍⬛') {
                                    _selectedIcon = '🐶';
                                  }
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: _selectedPetType == PetType.dog
                                      ? Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.15)
                                      : Colors.grey.shade50,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: _selectedPetType == PetType.dog
                                        ? Theme.of(context).colorScheme.primary
                                        : Colors.grey.shade300,
                                    width:
                                        _selectedPetType == PetType.dog ? 2 : 1,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('🐶',
                                        style: const TextStyle(fontSize: 24)),
                                    const SizedBox(width: 8),
                                    Text(
                                      l10n.dog,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: _selectedPetType == PetType.dog
                                            ? Theme.of(context)
                                                .colorScheme
                                                .primary
                                            : Colors.grey.shade700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      // Pet Name Section
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: l10n.name,
                          hintText: l10n.enterPetName,
                          prefixIcon: Icon(
                            Icons.pets,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade50,
                        ),
                        style: const TextStyle(fontSize: 16),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return l10n.pleaseEnterACatName;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      // Description Section
                      TextFormField(
                        controller: _descriptionController,
                        decoration: InputDecoration(
                          labelText: l10n.descriptionOptional,
                          hintText: l10n.tellUsAboutYourPet,
                          prefixIcon: Icon(
                            Icons.text_fields,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade50,
                        ),
                        maxLines: 3,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 24),
                      // Icon Selection Section
                      Text(
                        l10n.selectIcon,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade900,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 72,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          itemCount: _iconOptions.length,
                          itemBuilder: (context, index) {
                            final icon = _iconOptions[index];
                            final isSelected = icon == _selectedIcon;
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedIcon = icon;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  width: 56,
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.15)
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: isSelected
                                          ? Theme.of(context)
                                              .colorScheme
                                              .primary
                                          : Colors.grey.shade300,
                                      width: isSelected ? 2 : 1,
                                    ),
                                    boxShadow: isSelected
                                        ? [
                                            BoxShadow(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary
                                                  .withOpacity(0.2),
                                              blurRadius: 8,
                                              offset: const Offset(0, 2),
                                            ),
                                          ]
                                        : null,
                                  ),
                                  child: Center(
                                    child: Text(
                                      icon,
                                      style: const TextStyle(fontSize: 28),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
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
                    onPressed: _save,
                    icon: const Icon(Icons.add, size: 20),
                    label: Text(
                      l10n.addPet,
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
