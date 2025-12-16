import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cat_provider.dart';
import '../models/group.dart';
import '../models/cat.dart';
import '../utils/string_utils.dart';
import '../services/export_import_service.dart';
import 'cat_detail_page.dart';
import 'group_feeding_dialog.dart';
import 'create_edit_group_dialog.dart';
import 'food_types_dialog.dart';
import 'add_cat_dialog.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Map<String, bool> _expandedGroups = {};
  final Set<String> _selectedTags = {};

  @override
  void initState() {
    super.initState();
    _updateExpandedGroups();
  }

  void _updateExpandedGroups() {
    final catProvider = Provider.of<CatProvider>(context, listen: false);
    // Initialize all groups as expanded
    for (var group in catProvider.groups) {
      if (!_expandedGroups.containsKey(group.id)) {
        _expandedGroups[group.id] = true;
      }
    }
    // Remove groups that no longer exist
    _expandedGroups.removeWhere((groupId, _) {
      return !catProvider.groups.any((g) => g.id == groupId);
    });
  }

  Future<void> _createGroup(BuildContext context) async {
    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => const CreateEditGroupDialog(),
    );

    if (result != null && context.mounted) {
      final catProvider = Provider.of<CatProvider>(context, listen: false);
      final newGroup = Group(
        id: catProvider.generateGroupId(),
        name: result['name'] as String,
        description: result['description'] as String?,
        icon: result['icon'] as String,
      );
      await catProvider.addGroup(newGroup);
      setState(() {
        _expandedGroups[newGroup.id] = true;
      });
    }
  }

  Future<void> _editGroup(BuildContext context, Group group) async {
    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => CreateEditGroupDialog(group: group),
    );

    if (result != null && context.mounted) {
      final catProvider = Provider.of<CatProvider>(context, listen: false);
      await catProvider.updateGroup(
        group.id,
        result['name'] as String,
        result['description'] as String?,
        result['icon'] as String,
      );
    }
  }

  Future<void> _deleteGroup(BuildContext context, Group group) async {
    final catProvider = Provider.of<CatProvider>(context, listen: false);
    final catsInGroup = catProvider.getCatsByGroup(group.id);

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        title: Text(
          'Delete Group',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade900,
          ),
        ),
        content: Text(
          catsInGroup.isEmpty
              ? 'Are you sure you want to delete "${group.name}"?'
              : 'Are you sure you want to delete "${group.name}"?\n\n'
                  'This will remove ${catsInGroup.length} cat(s) from this group.',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade700,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(
              'Cancel',
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
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      await catProvider.deleteGroup(group.id);
      setState(() {
        _expandedGroups.remove(group.id);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final catProvider = Provider.of<CatProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Pets'),
        backgroundColor: Colors.white,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (value) async {
              if (value == 'food_types') {
                showDialog(
                  context: context,
                  builder: (context) => const FoodTypesDialog(),
                );
              } else if (value == 'import') {
                final catProvider =
                    Provider.of<CatProvider>(context, listen: false);
                final error =
                    await ExportImportService.importFromYaml(catProvider);
                if (context.mounted) {
                  if (error == null) {
                    // Success
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Data imported successfully!'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  } else if (error != 'CANCELLED') {
                    // Error (not cancellation)
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(error),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                  // If CANCELLED, don't show any message
                }
              } else if (value == 'export') {
                final catProvider =
                    Provider.of<CatProvider>(context, listen: false);
                final error =
                    await ExportImportService.exportToYaml(catProvider);
                if (context.mounted && error != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(error),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'food_types',
                child: Row(
                  children: [
                    Icon(Icons.restaurant_menu, size: 20),
                    SizedBox(width: 12),
                    Text('Manage Food Types'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'import',
                child: Row(
                  children: [
                    Icon(Icons.upload_file, size: 20),
                    SizedBox(width: 12),
                    Text('Import Data'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'export',
                child: Row(
                  children: [
                    Icon(Icons.download, size: 20),
                    SizedBox(width: 12),
                    Text('Export Data'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: catProvider.groups.isEmpty &&
              catProvider.cats.where((cat) => cat.groupId == null).isEmpty
          ? const Center(
              child: Text('No groups or pets available'),
            )
          : Column(
              children: [
                // Tag Filter Row
                _buildTagFilterRow(context, catProvider),
                // Cat List
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      // Groups
                      ...catProvider.groups.map((group) {
                        final catsInGroup = _filterCatsByTags(
                          catProvider.getCatsByGroup(group.id),
                        );
                        final isExpanded = _expandedGroups[group.id] ?? false;
                        return _buildGroupCard(
                          context,
                          group,
                          catsInGroup,
                          isExpanded,
                          catProvider,
                        );
                      }),
                      // Cats without groups
                      Builder(
                        builder: (context) {
                          final catsWithoutGroup = _filterCatsByTags(
                            catProvider.cats
                                .where((cat) => cat.groupId == null)
                                .toList(),
                          );

                          if (catsWithoutGroup.isEmpty) {
                            return const SizedBox.shrink();
                          }

                          final isExpanded =
                              _expandedGroups['ungrouped'] ?? false;
                          return _buildUngroupedCatsCard(
                            context,
                            catsWithoutGroup,
                            isExpanded,
                            catProvider,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _createGroup(context),
        icon: const Icon(Icons.add, size: 24),
        label: const Text(
          'New Group',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        tooltip: 'Create Group',
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        elevation: 4,
        highlightElevation: 8,
      ),
    );
  }

  List<String> _getAllTags(CatProvider catProvider) {
    final allTags = <String>{};
    for (var cat in catProvider.cats) {
      allTags.addAll(cat.tags);
    }
    return allTags.toList()..sort();
  }

  List<Cat> _filterCatsByTags(List<Cat> cats) {
    if (_selectedTags.isEmpty) {
      return cats;
    }
    return cats.where((cat) {
      return cat.tags.any((tag) => _selectedTags.contains(tag));
    }).toList();
  }

  Widget _buildTagFilterRow(BuildContext context, CatProvider catProvider) {
    final allTags = _getAllTags(catProvider);

    if (allTags.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.filter_list,
                size: 18,
                color: Colors.grey.shade600,
              ),
              const SizedBox(width: 8),
              Text(
                'Filter by tags:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700,
                ),
              ),
              const Spacer(),
              if (_selectedTags.isNotEmpty)
                TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedTags.clear();
                    });
                  },
                  child: Text(
                    'Clear',
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 6,
              runSpacing: 6,
              children: allTags.map((tag) {
                final isSelected = _selectedTags.contains(tag);
                return FilterChip(
                  label: Text(tag),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        _selectedTags.add(tag);
                      } else {
                        _selectedTags.remove(tag);
                      }
                    });
                  },
                  backgroundColor: Colors.grey.shade100,
                  selectedColor:
                      Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  checkmarkColor: Theme.of(context).colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey.shade700,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                    side: BorderSide(
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey.shade300,
                      width: 1,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGroupCard(
    BuildContext context,
    Group group,
    List<Cat> catsInGroup,
    bool isExpanded,
    CatProvider catProvider,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1,
      shadowColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(16),
            leading: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  group.icon,
                  style: const TextStyle(fontSize: 28),
                ),
              ),
            ),
            title: Text(
              group.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade900,
              ),
            ),
            subtitle: group.description != null
                ? Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      group.description!,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  )
                : null,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.restaurant),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          GroupFeedingDialog(groupId: group.id),
                    );
                  },
                  tooltip: 'Feed Group',
                  color: Colors.orange,
                ),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (value) {
                    if (value == 'edit') {
                      _editGroup(context, group);
                    } else if (value == 'delete') {
                      _deleteGroup(context, group);
                    }
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'edit',
                      child: Row(
                        children: [
                          Icon(Icons.edit, size: 20),
                          SizedBox(width: 8),
                          Text('Edit Group'),
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'delete',
                      child: Row(
                        children: [
                          Icon(Icons.delete, size: 20, color: Colors.red),
                          SizedBox(width: 8),
                          Text('Delete Group',
                              style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: isExpanded
                ? Column(
                    children: [
                      if (catsInGroup.isEmpty)
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'No cats in this group',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        )
                      else
                        ...catsInGroup.map((cat) => _buildCatListTile(
                              context,
                              cat,
                              catProvider,
                            )),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) =>
                                    AddCatDialog(groupId: group.id),
                              );
                            },
                            icon: const Icon(Icons.add, size: 20),
                            label: const Text('Add Pet'),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
          Center(
            child: AnimatedRotation(
              turns: isExpanded ? 0.5 : 0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: IconButton(
                icon: const Icon(Icons.expand_more),
                onPressed: () {
                  setState(() {
                    _expandedGroups[group.id] = !isExpanded;
                  });
                },
                tooltip: isExpanded ? 'Collapse' : 'Expand',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUngroupedCatsCard(
    BuildContext context,
    List<Cat> catsWithoutGroup,
    bool isExpanded,
    CatProvider catProvider,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1,
      shadowColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(16),
            leading: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.pets,
                size: 28,
                color: Colors.grey.shade700,
              ),
            ),
            title: Text(
              'Ungrouped Pets',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade900,
              ),
            ),
            subtitle: Text(
              '${catsWithoutGroup.length} pet${catsWithoutGroup.length != 1 ? 's' : ''}',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: isExpanded
                ? Column(
                    children: [
                      ...catsWithoutGroup.map((cat) => _buildCatListTile(
                            context,
                            cat,
                            catProvider,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) =>
                                    const AddCatDialog(groupId: null),
                              );
                            },
                            icon: const Icon(Icons.add, size: 20),
                            label: const Text('Add Pet'),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
          Center(
            child: AnimatedRotation(
              turns: isExpanded ? 0.5 : 0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: IconButton(
                icon: const Icon(Icons.expand_more),
                onPressed: () {
                  setState(() {
                    _expandedGroups['ungrouped'] = !isExpanded;
                  });
                },
                tooltip: isExpanded ? 'Collapse' : 'Expand',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCatListTile(
    BuildContext context,
    Cat cat,
    CatProvider catProvider,
  ) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            cat.icon,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
      title: Text(
        StringUtils.getFirstTwoWords(cat.name),
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade900,
        ),
      ),
      subtitle: cat.tags.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Wrap(
                spacing: 4,
                runSpacing: 4,
                children: cat.tags.take(3).map((tag) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      tag,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          : null,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!catProvider.hasFeedingRecordToday(cat.id))
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Icon(
                Icons.restaurant,
                color: Colors.orange,
                size: 18,
              ),
            ),
          const Icon(
            Icons.chevron_right,
            size: 18,
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CatDetailPage(catId: cat.id),
          ),
        );
      },
    );
  }
}
