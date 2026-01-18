import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../l10n/app_localizations.dart';
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
    // Cats - most common
    '🐱', '🐈', '🐈‍⬛', '😸', '😻',
    // Dogs - most common
    '🐶', '🐕', '🐕‍🦺', '😊',
    // Other
    '🐾', '🦁', '🐯',
  ];

  PetType _selectedPetType = PetType.cat;

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.cat.name;
    _descriptionController.text = widget.cat.description ?? '';
    _selectedIcon = widget.cat.icon;
    _selectedGroupId = widget.cat.groupId;
    _selectedPetType = widget.cat.type;
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
        _descriptionController.text.trim().isEmpty
            ? null
            : _descriptionController.text.trim(),
        _selectedIcon,
        _selectedGroupId,
        _selectedPetType,
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Consumer<CatProvider>(
      builder: (context, catProvider, _) {
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
                          Icons.edit_outlined,
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
                              l10n.editPetInformation,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey.shade900,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              l10n.updateYourPetsDetails,
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
                          _buildSectionTitle(
                            l10n.description,
                            Icons.description_outlined,
                          ),
                          const SizedBox(height: 12),
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
                          _buildSectionTitle(
                              l10n.selectIcon, Icons.emoji_emotions_outlined),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 72,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
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
                                      duration:
                                          const Duration(milliseconds: 200),
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
                          const SizedBox(height: 24),
                          // Group Selection Section
                          _buildSectionTitle(l10n.group, Icons.group_outlined),
                          const SizedBox(height: 12),
                          DropdownButtonFormField<String?>(
                            value: _selectedGroupId,
                            decoration: InputDecoration(
                              labelText: l10n.groupOptional,
                              hintText: l10n.selectAGroup,
                              prefixIcon: Icon(
                                Icons.group,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade50,
                            ),
                            items: [
                              DropdownMenuItem<String?>(
                                value: null,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.group_off,
                                      size: 20,
                                      color: Colors.grey.shade600,
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      l10n.noGroup,
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ...catProvider.groups.map((group) {
                                return DropdownMenuItem<String?>(
                                  value: group.id,
                                  child: Row(
                                    children: [
                                      Text(
                                        group.icon,
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                      const SizedBox(width: 12),
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
                        icon: const Icon(Icons.check, size: 20),
                        label: Text(
                          l10n.saveChanges,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
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
      },
    );
  }

  Widget _buildSectionTitle(String title, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: Colors.grey.shade600,
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade900,
          ),
        ),
      ],
    );
  }
}
