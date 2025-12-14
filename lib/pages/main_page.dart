import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cat_provider.dart';
import '../providers/auth_provider.dart';
import '../models/group.dart';
import '../utils/string_utils.dart';
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
        title: const Text('Delete Group'),
        content: Text(
          catsInGroup.isEmpty
              ? 'Are you sure you want to delete "${group.name}"?'
              : 'Are you sure you want to delete "${group.name}"?\n\n'
                  'This will remove ${catsInGroup.length} cat(s) from this group.',
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
      await catProvider.deleteGroup(group.id);
      setState(() {
        _expandedGroups.remove(group.id);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final catProvider = Provider.of<CatProvider>(context);
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cats'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          icon: const Icon(Icons.restaurant_menu),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const FoodTypesDialog(),
            );
          },
          tooltip: 'Manage Food Types',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await authProvider.signOut();
              if (context.mounted) {
                Navigator.of(context).pushReplacementNamed('/login');
              }
            },
            tooltip: 'Sign Out',
          ),
        ],
      ),
      body: catProvider.groups.isEmpty
          ? const Center(
              child: Text('No groups available'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: catProvider.groups.length,
              itemBuilder: (context, index) {
                final group = catProvider.groups[index];
                final catsInGroup = catProvider.getCatsByGroup(group.id);
                final isExpanded = _expandedGroups[group.id] ?? false;

                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.all(16),
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.deepPurple.shade100,
                          child: Text(
                            group.icon,
                            style: const TextStyle(fontSize: 32),
                          ),
                        ),
                        title: Text(
                          group.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: group.description != null
                            ? Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                  group.description!,
                                  style: const TextStyle(fontSize: 14),
                                ),
                              )
                            : null,
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Group action button for feeding
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
                            // Menu button for edit/delete
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
                                      Icon(Icons.delete,
                                          size: 20, color: Colors.red),
                                      SizedBox(width: 8),
                                      Text('Delete Group',
                                          style: TextStyle(color: Colors.red)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              icon: Icon(
                                isExpanded
                                    ? Icons.expand_less
                                    : Icons.expand_more,
                              ),
                              onPressed: () {
                                setState(() {
                                  _expandedGroups[group.id] = !isExpanded;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      if (isExpanded) ...[
                        const Divider(height: 1),
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
                          ...catsInGroup.map((cat) => ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                leading: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.grey.shade200,
                                  child: Text(
                                    cat.icon,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                                title: Text(
                                  StringUtils.getFirstTwoWords(cat.name),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                subtitle: Text(
                                  cat.description,
                                  style: const TextStyle(fontSize: 12),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    // Reminder icon if no feeding record today
                                    if (!catProvider
                                        .hasFeedingRecordToday(cat.id))
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.restaurant,
                                          color: Colors.orange,
                                          size: 20,
                                        ),
                                      ),
                                    const Icon(
                                      Icons.chevron_right,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CatDetailPage(catId: cat.id),
                                    ),
                                  );
                                },
                              )),
                      ],
                      // Add Cat Button
                      if (isExpanded)
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: OutlinedButton.icon(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AddCatDialog(
                                    groupId: group.id,
                                  ),
                                );
                              },
                              icon: const Icon(Icons.add),
                              label: const Text('Add Cat'),
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _createGroup(context),
        child: const Icon(Icons.add),
        tooltip: 'Create Group',
      ),
    );
  }
}
