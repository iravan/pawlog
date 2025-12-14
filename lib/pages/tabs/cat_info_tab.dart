import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/cat_provider.dart';
import '../../utils/string_utils.dart';
import 'edit_cat_dialog.dart';

class CatInfoTab extends StatelessWidget {
  final String catId;

  const CatInfoTab({super.key, required this.catId});

  Future<void> _deleteCat(BuildContext context) async {
    final catProvider = Provider.of<CatProvider>(context, listen: false);
    final cat = catProvider.getCatById(catId);

    if (cat == null) return;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Cat'),
        content: Text(
          'Are you sure you want to delete "${cat.name}"?\n\n'
          'This will permanently delete:\n'
          '- The cat profile\n'
          '- All weight records\n'
          '- All feeding records\n\n'
          'This action cannot be undone.',
        ),
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

    if (confirmed == true && context.mounted) {
      await catProvider.deleteCat(catId);
      if (context.mounted) {
        Navigator.of(context).pop(); // Go back to main page
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${cat.name} has been deleted'),
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
          return const Center(child: Text('Cat not found'));
        }

        final weightRecords = catProvider.getWeightRecords(catId);
        // Get the latest weight record (most recent date)
        final latestWeightRecord = weightRecords.isNotEmpty
            ? weightRecords.reduce((a, b) => a.date.isAfter(b.date) ? a : b)
            : null;

        return Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                // Cat Icon
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.deepPurple.shade100,
                  child: Text(
                    cat.icon,
                    style: const TextStyle(fontSize: 64),
                  ),
                ),
                const SizedBox(height: 24),
                // Cat Name
                Text(
                  StringUtils.getFirstTwoWords(cat.name),
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                // Cat Description
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    cat.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32),
                // Latest Weight
                if (latestWeightRecord != null)
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.deepPurple.shade200,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.monitor_weight,
                              color: Colors.deepPurple,
                              size: 32,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Latest Weight',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          '${latestWeightRecord.weight} kg',
                          style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.monitor_weight_outlined,
                          color: Colors.grey.shade400,
                          size: 32,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'No weight records yet',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 32),
                // Edit Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => EditCatDialog(cat: cat),
                      );
                    },
                    icon: const Icon(Icons.edit),
                    label: const Text(
                      'Edit Cat Information',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Delete Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () => _deleteCat(context),
                    icon: const Icon(Icons.delete),
                    label: const Text(
                      'Delete Cat',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
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
