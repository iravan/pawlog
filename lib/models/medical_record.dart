class MedicalRecord {
  final String id;
  final DateTime date;
  final String title;
  final String? notes;

  MedicalRecord({
    required this.id,
    required this.date,
    required this.title,
    this.notes,
  });
}

