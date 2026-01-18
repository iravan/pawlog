import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../l10n/app_localizations.dart';
import '../providers/cat_provider.dart';

class FoodTypesDialog extends StatefulWidget {
  const FoodTypesDialog({super.key});

  @override
  State<FoodTypesDialog> createState() => _FoodTypesDialogState();
}

class _FoodTypesDialogState extends State<FoodTypesDialog> {
  final _newFoodTypeController = TextEditingController();

  @override
  void dispose() {
    _newFoodTypeController.dispose();
    super.dispose();
  }

  Future<void> _addFoodType() async {
    final foodType = _newFoodTypeController.text.trim();
    if (foodType.isNotEmpty) {
      final catProvider = Provider.of<CatProvider>(context, listen: false);
      await catProvider.addFoodType(foodType);
      _newFoodTypeController.clear();
      if (mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.foodTypeAdded(foodType)),
            duration: const Duration(seconds: 1),
          ),
        );
      }
    }
  }

  Future<void> _deleteFoodType(String foodType) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        final l10n = AppLocalizations.of(context)!;
        return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                  size: 32,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                l10n.deleteFoodType,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade900,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                l10n.deleteFoodTypeConfirm(foodType),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade700,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(false),
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
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
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
                    child: Text(
                      l10n.delete,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        );
      },
    );

    if (confirmed == true && mounted) {
      final catProvider = Provider.of<CatProvider>(context, listen: false);
      await catProvider.removeFoodType(foodType);
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
                          Icons.restaurant_menu,
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
                              l10n.manageFoodTypes,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey.shade900,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              l10n.addAndManageFoodTypesForFeedingRecords,
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
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Add new food type section
                        Text(
                          l10n.addNewFoodType,
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
                              child: TextField(
                                controller: _newFoodTypeController,
                                decoration: InputDecoration(
                                  labelText: l10n.foodTypeName,
                                  hintText: l10n.enterFoodTypeName,
                                  prefixIcon: Icon(
                                    Icons.restaurant,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey.shade50,
                                ),
                                style: const TextStyle(fontSize: 16),
                                onSubmitted: (_) => _addFoodType(),
                              ),
                            ),
                            const SizedBox(width: 12),
                            ElevatedButton.icon(
                              onPressed: _addFoodType,
                              icon: const Icon(Icons.add, size: 20),
                              label: Text(l10n.add),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).colorScheme.primary,
                                foregroundColor: Colors.white,
                                elevation: 0,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        // List of food types
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              l10n.foodTypes,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade900,
                              ),
                            ),
                            if (catProvider.foodTypes.isNotEmpty)
                              Text(
                                '${catProvider.foodTypes.length} ${catProvider.foodTypes.length == 1 ? l10n.type : l10n.types}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        if (catProvider.foodTypes.isEmpty)
                          Container(
                            padding: const EdgeInsets.all(32),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey.shade200),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.restaurant_outlined,
                                  size: 48,
                                  color: Colors.grey.shade400,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  l10n.noFoodTypesYet,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Add your first food type above',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        else
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey.shade200),
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: catProvider.foodTypes.length,
                              itemBuilder: (context, index) {
                                final foodType = catProvider.foodTypes[index];
                                return Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey.shade200,
                                        width: index <
                                                catProvider.foodTypes.length - 1
                                            ? 1
                                            : 0,
                                      ),
                                    ),
                                  ),
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 8,
                                    ),
                                    leading: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(
                                        Icons.restaurant,
                                        size: 20,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                    title: Text(
                                      foodType,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade900,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      icon: Icon(
                                        Icons.delete_outline,
                                        color: Colors.grey.shade600,
                                        size: 22,
                                      ),
                                      onPressed: () =>
                                          _deleteFoodType(foodType),
                                      tooltip: 'Delete',
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
              ],
            ),
          ),
        );
      },
    );
  }
}
