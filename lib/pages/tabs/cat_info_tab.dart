import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../l10n/app_localizations.dart';
import '../../providers/cat_provider.dart';
import '../../models/cat.dart';
import '../../utils/string_utils.dart';
import 'edit_cat_dialog.dart';

class CatInfoTab extends StatelessWidget {
  final String catId;

  const CatInfoTab({super.key, required this.catId});

  Future<void> _deleteCat(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final catProvider = Provider.of<CatProvider>(context, listen: false);
    final cat = catProvider.getCatById(catId);

    if (cat == null) return;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        final l10n = AppLocalizations.of(context)!;
        return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        title: Text(
          l10n.deletePet,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade900,
          ),
        ),
        content: Text(
          l10n.deletePetConfirm(cat.name),
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade700,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(
              l10n.cancel,
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Text(l10n.delete),
          ),
        ],
        );
      },
    );

    if (confirmed == true && context.mounted) {
      await catProvider.deleteCat(catId);
      if (context.mounted) {
        Navigator.of(context).pop(); // Go back to main page
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.petHasBeenDeleted(cat.name)),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CatProvider>(
      builder: (context, catProvider, _) {
        final cat = catProvider.getCatById(catId);

        if (cat == null) {
          final l10n = AppLocalizations.of(context)!;
          return Center(child: Text(l10n.petNotFound));
        }

        final weightRecords = catProvider.getWeightRecords(catId);
        // Get the latest weight record (most recent date)
        final latestWeightRecord = weightRecords.isNotEmpty
            ? weightRecords.reduce((a, b) => a.date.isAfter(b.date) ? a : b)
            : null;

        return Scaffold(
          backgroundColor: Colors.grey.shade50,
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Header Section with Gradient-like Background
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(24, 40, 24, 32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Cat Icon with better styling
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.08),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.2),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          cat.icon,
                          style: const TextStyle(fontSize: 72),
                        ),
                      ),
                      const SizedBox(height: 24),
                      // Cat Name
                      Text(
                        StringUtils.getFirstTwoWords(cat.name),
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade900,
                          letterSpacing: -0.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      if (cat.description != null &&
                          cat.description!.isNotEmpty) ...[
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.grey.shade200,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            cat.description!,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade700,
                              height: 1.6,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                // Content Section
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // Tags Section
                      _buildTagsSection(context, catProvider, cat),
                      const SizedBox(height: 16),
                      // Latest Weight Card
                      _buildWeightCard(context, latestWeightRecord),
                      const SizedBox(height: 24),
                      // Action Buttons
                      _buildActionButtons(context, cat, catProvider),
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

  Widget _buildTagsSection(
    BuildContext context,
    CatProvider catProvider,
    Cat cat,
  ) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.label_outline,
                    size: 20,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    l10n.tags,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
              OutlinedButton.icon(
                onPressed: () => _showAddTagDialog(context, catProvider, cat),
                icon: const Icon(Icons.add, size: 18),
                label: Text(l10n.add),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          if (cat.tags.isEmpty)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Text(
                  l10n.noTagsYet,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            )
          else
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: cat.tags.map((tag) {
                return Chip(
                  label: Text(tag),
                  deleteIcon: const Icon(Icons.close, size: 16),
                  onDeleted: () {
                    catProvider.removeTagFromCat(cat.id, tag);
                  },
                  backgroundColor:
                      Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  deleteIconColor: Colors.grey.shade600,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }

  Widget _buildWeightCard(BuildContext context, dynamic latestWeightRecord) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: latestWeightRecord != null
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    const SizedBox(width: 12),
                    Text(
                      l10n.latestWeight,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  '${latestWeightRecord.weight} kg',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.primary,
                    letterSpacing: -1,
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.monitor_weight_outlined,
                  color: Colors.grey.shade400,
                  size: 28,
                ),
                const SizedBox(width: 12),
                Text(
                  l10n.noWeightRecordsYet,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildActionButtons(
    BuildContext context,
    Cat cat,
    CatProvider catProvider,
  ) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => EditCatDialog(cat: cat),
              );
            },
            icon: const Icon(Icons.edit_outlined, size: 20),
            label: Text(
              l10n.edit,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Center(
          child: TextButton.icon(
            onPressed: () => _deleteCat(context),
            icon: Icon(
              Icons.delete_outline,
              size: 18,
              color: Colors.grey.shade500,
            ),
            label: Text(
              l10n.delete,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500,
                decoration: TextDecoration.underline,
                decorationColor: Colors.grey.shade400,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Future<void> _showAddTagDialog(
    BuildContext context,
    CatProvider catProvider,
    Cat cat,
  ) async {
    await showDialog(
      context: context,
      builder: (context) => _AddTagDialog(
        catProvider: catProvider,
        cat: cat,
      ),
    );
  }
}

class _AddTagDialog extends StatefulWidget {
  final CatProvider catProvider;
  final Cat cat;

  const _AddTagDialog({
    required this.catProvider,
    required this.cat,
  });

  @override
  State<_AddTagDialog> createState() => _AddTagDialogState();
}

class _AddTagDialogState extends State<_AddTagDialog> {
  late final TextEditingController _tagController;

  @override
  void initState() {
    super.initState();
    _tagController = TextEditingController();
  }

  @override
  void dispose() {
    _tagController.dispose();
    super.dispose();
  }

  void _addTag() {
    if (_tagController.text.trim().isNotEmpty) {
      widget.catProvider.addTagToCat(widget.cat.id, _tagController.text.trim());
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: Text(
        l10n.addTag,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade900,
        ),
      ),
      content: TextField(
        controller: _tagController,
        autofocus: true,
        decoration: InputDecoration(
          labelText: l10n.tagName,
          hintText: l10n.enterTagName,
        ),
        onSubmitted: (_) => _addTag(),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            l10n.cancel,
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: _addTag,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Text(l10n.add),
        ),
      ],
    );
  }
}
