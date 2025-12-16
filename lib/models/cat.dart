enum PetType { cat, dog }

class Pet {
  final String id;
  final String name;
  final String? description; // Optional description
  final String icon; // Using emoji or icon name
  final String? groupId; // Optional group ID
  final List<String> tags; // Tags for categorization
  final PetType type; // Pet type: cat or dog

  Pet({
    required this.id,
    required this.name,
    this.description,
    required this.icon,
    this.groupId,
    this.tags = const [],
    this.type = PetType.cat, // Default to cat for backward compatibility
  });
}

// Keep Cat as an alias for backward compatibility during migration
typedef Cat = Pet;
