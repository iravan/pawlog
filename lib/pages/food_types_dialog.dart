import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$foodType added'),
            duration: const Duration(seconds: 1),
          ),
        );
      }
    }
  }

  Future<void> _deleteFoodType(String foodType) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Food Type'),
        content: Text('Are you sure you want to delete "$foodType"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      final catProvider = Provider.of<CatProvider>(context, listen: false);
      await catProvider.removeFoodType(foodType);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CatProvider>(
      builder: (context, catProvider, _) {
        return AlertDialog(
          title: const Text('Food Types'),
          content: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Add new food type
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _newFoodTypeController,
                        decoration: const InputDecoration(
                          labelText: 'New Food Type',
                          hintText: 'Enter food type name',
                        ),
                        onSubmitted: (_) => _addFoodType(),
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: _addFoodType,
                      tooltip: 'Add Food Type',
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 8),
                // List of food types
                if (catProvider.foodTypes.isEmpty)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'No food types yet',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                else
                  Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: catProvider.foodTypes.length,
                      itemBuilder: (context, index) {
                        final foodType = catProvider.foodTypes[index];
                        return ListTile(
                          leading: const Icon(Icons.restaurant),
                          title: Text(foodType),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _deleteFoodType(foodType),
                            tooltip: 'Delete',
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

