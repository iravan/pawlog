class Cat {
  final String id;
  final String name;
  final String description;
  final String icon; // Using emoji or icon name
  final String? groupId; // Optional group ID

  Cat({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    this.groupId,
  });
}

