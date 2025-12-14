class FeedingRecord {
  final String id;
  final DateTime date;
  final String foodType;
  final double amount; // in grams or cups
  final String? notes;

  FeedingRecord({
    required this.id,
    required this.date,
    required this.foodType,
    required this.amount,
    this.notes,
  });
}

