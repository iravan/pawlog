class Group {
  final String id;
  final String name;
  final String? description;
  final String icon; // Using emoji or icon name

  Group({
    required this.id,
    required this.name,
    this.description,
    required this.icon,
  });
}

