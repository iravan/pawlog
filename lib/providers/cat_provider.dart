import 'package:flutter/foundation.dart';
import '../models/cat.dart';
import '../models/group.dart';
import '../models/weight_record.dart';
import '../models/feeding_record.dart';
import '../models/medical_record.dart';
import '../services/storage_service.dart';

class CatProvider with ChangeNotifier {
  List<Group> _groups = [];
  List<Cat> _cats = [];
  Map<String, List<WeightRecord>> _weightRecords = {};
  Map<String, List<FeedingRecord>> _feedingRecords = {};
  Map<String, List<MedicalRecord>> _medicalRecords = {};
  List<String> _foodTypes = [];
  bool _isInitialized = false;

  List<Group> get groups => _groups;
  List<Cat> get cats => _cats;
  List<String> get foodTypes => _foodTypes;

  Future<void> initialize() async {
    if (_isInitialized) return;

    // Load data from storage
    _groups = await StorageService.loadGroups();
    _cats = await StorageService.loadCats();
    _weightRecords = await StorageService.loadWeightRecords();
    _feedingRecords = await StorageService.loadFeedingRecords();
    _medicalRecords = await StorageService.loadMedicalRecords();
    _foodTypes = await StorageService.loadFoodTypes();

    // If no data exists, initialize with defaults
    if (_groups.isEmpty) {
      _groups = _getDefaultGroups();
      await StorageService.saveGroups(_groups);
    }

    if (_cats.isEmpty) {
      _cats = _getDefaultCats();
      await StorageService.saveCats(_cats);
    }

    if (_foodTypes.isEmpty) {
      _foodTypes = _getDefaultFoodTypes();
      await StorageService.saveFoodTypes(_foodTypes);
    }

    _isInitialized = true;
    notifyListeners();
  }

  List<String> _getDefaultFoodTypes() {
    return ['Wet food', 'Dry Food'];
  }

  List<Group> _getDefaultGroups() {
    return [
      Group(
        id: 'group1',
        name: 'Indoor Pets',
        description: 'Pets that stay indoors',
        icon: '🏠',
      ),
      Group(
        id: 'group2',
        name: 'Outdoor Pets',
        description: 'Pets that go outside',
        icon: '🌳',
      ),
      Group(
        id: 'group3',
        name: 'Young Pets',
        description: 'Young pets under 1 year',
        icon: '🐾',
      ),
    ];
  }

  List<Cat> _getDefaultCats() {
    return [
      Pet(
        id: '1',
        name: 'Whiskers',
        description: 'A playful orange tabby who loves to explore',
        icon: '🐱',
        groupId: 'group1',
        type: PetType.cat,
      ),
      Pet(
        id: '2',
        name: 'Luna',
        description: 'A graceful black cat with green eyes',
        icon: '🐈',
        groupId: 'group1',
        type: PetType.cat,
      ),
      Pet(
        id: '3',
        name: 'Max',
        description: 'A friendly golden retriever',
        icon: '🐶',
        groupId: 'group2',
        type: PetType.dog,
      ),
    ];
  }

  Future<void> _saveGroups() async {
    await StorageService.saveGroups(_groups);
  }

  Future<void> _saveCats() async {
    await StorageService.saveCats(_cats);
  }

  Future<void> _saveWeightRecords() async {
    await StorageService.saveWeightRecords(_weightRecords);
  }

  Future<void> _saveFeedingRecords() async {
    await StorageService.saveFeedingRecords(_feedingRecords);
  }

  Future<void> _saveMedicalRecords() async {
    await StorageService.saveMedicalRecords(_medicalRecords);
  }

  List<WeightRecord> getWeightRecords(String catId) {
    return _weightRecords[catId] ?? [];
  }

  List<FeedingRecord> getFeedingRecords(String catId) {
    return _feedingRecords[catId] ?? [];
  }

  List<MedicalRecord> getMedicalRecords(String catId) {
    return _medicalRecords[catId] ?? [];
  }

  bool hasFeedingRecordToday(String catId) {
    final records = getFeedingRecords(catId);
    if (records.isEmpty) return false;

    final today = DateTime.now();
    final todayDate = DateTime(today.year, today.month, today.day);

    return records.any((record) {
      final recordDate =
          DateTime(record.date.year, record.date.month, record.date.day);
      return recordDate.isAtSameMomentAs(todayDate);
    });
  }

  Future<void> addWeightRecord(String catId, WeightRecord record) async {
    if (!_weightRecords.containsKey(catId)) {
      _weightRecords[catId] = [];
    }

    // Check if a record exists for the same day
    final recordDate =
        DateTime(record.date.year, record.date.month, record.date.day);
    final existingIndex = _weightRecords[catId]!.indexWhere((r) {
      final rDate = DateTime(r.date.year, r.date.month, r.date.day);
      return rDate.isAtSameMomentAs(recordDate);
    });

    if (existingIndex != -1) {
      // Update existing record for that day
      _weightRecords[catId]![existingIndex] = record;
    } else {
      // Add new record
      _weightRecords[catId]!.add(record);
    }

    await _saveWeightRecords();
    notifyListeners();
  }

  Future<void> addFeedingRecord(String catId, FeedingRecord record) async {
    if (!_feedingRecords.containsKey(catId)) {
      _feedingRecords[catId] = [];
    }

    // Check if there are already 5 records for the same day
    final recordDate =
        DateTime(record.date.year, record.date.month, record.date.day);
    final recordsForDay = _feedingRecords[catId]!.where((r) {
      final rDate = DateTime(r.date.year, r.date.month, r.date.day);
      return rDate.isAtSameMomentAs(recordDate);
    }).toList();

    if (recordsForDay.length >= 5) {
      throw Exception('Maximum 5 feeding records allowed per day');
    }

    _feedingRecords[catId]!.add(record);
    await _saveFeedingRecords();
    notifyListeners();
  }

  Future<void> addFeedingRecordToGroup(
      String groupId, FeedingRecord record) async {
    final catsInGroup = _cats.where((cat) => cat.groupId == groupId).toList();
    for (var cat in catsInGroup) {
      // Create a unique record for each cat with the same data
      final uniqueRecord = FeedingRecord(
        id: '${record.id}_${cat.id}_${DateTime.now().millisecondsSinceEpoch}',
        date: record.date,
        foodType: record.foodType,
        amount: record.amount,
        notes: record.notes,
      );
      await addFeedingRecord(cat.id, uniqueRecord);
    }
  }

  Future<void> updateWeightRecord(
      String catId, String recordId, WeightRecord updatedRecord) async {
    if (_weightRecords.containsKey(catId)) {
      final index = _weightRecords[catId]!.indexWhere((r) => r.id == recordId);
      if (index != -1) {
        _weightRecords[catId]![index] = updatedRecord;
        await _saveWeightRecords();
        notifyListeners();
      }
    }
  }

  Future<void> deleteWeightRecord(String catId, String recordId) async {
    if (_weightRecords.containsKey(catId)) {
      _weightRecords[catId]!.removeWhere((r) => r.id == recordId);
      await _saveWeightRecords();
      notifyListeners();
    }
  }

  Future<void> updateFeedingRecord(
      String catId, String recordId, FeedingRecord updatedRecord) async {
    if (_feedingRecords.containsKey(catId)) {
      final index = _feedingRecords[catId]!.indexWhere((r) => r.id == recordId);
      if (index != -1) {
        _feedingRecords[catId]![index] = updatedRecord;
        await _saveFeedingRecords();
        notifyListeners();
      }
    }
  }

  Future<void> deleteFeedingRecord(String catId, String recordId) async {
    if (_feedingRecords.containsKey(catId)) {
      _feedingRecords[catId]!.removeWhere((r) => r.id == recordId);
      await _saveFeedingRecords();
      notifyListeners();
    }
  }

  Future<void> addMedicalRecord(String catId, MedicalRecord record) async {
    if (!_medicalRecords.containsKey(catId)) {
      _medicalRecords[catId] = [];
    }

    _medicalRecords[catId]!.add(record);
    await _saveMedicalRecords();
    notifyListeners();
  }

  Future<void> updateMedicalRecord(
      String catId, String recordId, MedicalRecord updatedRecord) async {
    if (_medicalRecords.containsKey(catId)) {
      final index = _medicalRecords[catId]!.indexWhere((r) => r.id == recordId);
      if (index != -1) {
        _medicalRecords[catId]![index] = updatedRecord;
        await _saveMedicalRecords();
        notifyListeners();
      }
    }
  }

  Future<void> deleteMedicalRecord(String catId, String recordId) async {
    if (_medicalRecords.containsKey(catId)) {
      _medicalRecords[catId]!.removeWhere((r) => r.id == recordId);
      await _saveMedicalRecords();
      notifyListeners();
    }
  }

  List<Cat> getCatsByGroup(String groupId) {
    return _cats.where((cat) => cat.groupId == groupId).toList();
  }

  Group? getGroupById(String id) {
    try {
      return _groups.firstWhere((group) => group.id == id);
    } catch (e) {
      return null;
    }
  }

  Cat? getCatById(String id) {
    try {
      return _cats.firstWhere((cat) => cat.id == id);
    } catch (e) {
      return null;
    }
  }

  Future<void> addGroup(Group group) async {
    _groups.add(group);
    await _saveGroups();
    notifyListeners();
  }

  Future<void> updateGroup(
      String groupId, String name, String? description, String icon) async {
    final index = _groups.indexWhere((g) => g.id == groupId);
    if (index != -1) {
      _groups[index] = Group(
        id: groupId,
        name: name,
        description: description,
        icon: icon,
      );
      await _saveGroups();
      notifyListeners();
    }
  }

  Future<void> deleteGroup(String groupId) async {
    // Remove group
    _groups.removeWhere((g) => g.id == groupId);
    await _saveGroups();

    // Set groupId to null for cats in this group
    _cats = _cats.map((cat) {
      if (cat.groupId == groupId) {
        return Pet(
          id: cat.id,
          name: cat.name,
          description: cat.description,
          icon: cat.icon,
          groupId: null,
          tags: cat.tags,
          type: cat.type,
        );
      }
      return cat;
    }).toList();
    await _saveCats();
    notifyListeners();
  }

  Future<void> updateCat(
    String catId,
    String name,
    String? description,
    String icon,
    String? groupId, [
    PetType? type,
  ]) async {
    final index = _cats.indexWhere((c) => c.id == catId);
    if (index != -1) {
      final existingCat = _cats[index];
      _cats[index] = Pet(
        id: catId,
        name: name,
        description: description,
        icon: icon,
        groupId: groupId,
        tags: existingCat.tags,
        type: type ?? existingCat.type,
      );
      await _saveCats();
      notifyListeners();
    }
  }

  Future<void> addTagToCat(String catId, String tag) async {
    final index = _cats.indexWhere((c) => c.id == catId);
    if (index != -1) {
      final cat = _cats[index];
      final trimmedTag = tag.trim();
      if (trimmedTag.isNotEmpty && !cat.tags.contains(trimmedTag)) {
        _cats[index] = Pet(
          id: cat.id,
          name: cat.name,
          description: cat.description,
          icon: cat.icon,
          groupId: cat.groupId,
          tags: [...cat.tags, trimmedTag],
          type: cat.type,
        );
        await _saveCats();
        notifyListeners();
      }
    }
  }

  Future<void> removeTagFromCat(String catId, String tag) async {
    final index = _cats.indexWhere((c) => c.id == catId);
    if (index != -1) {
      final cat = _cats[index];
      _cats[index] = Pet(
        id: cat.id,
        name: cat.name,
        description: cat.description,
        icon: cat.icon,
        groupId: cat.groupId,
        tags: cat.tags.where((t) => t != tag).toList(),
        type: cat.type,
      );
      await _saveCats();
      notifyListeners();
    }
  }

  Future<void> deleteCat(String catId) async {
    // Remove cat
    _cats.removeWhere((c) => c.id == catId);
    await _saveCats();

    // Remove all weight records for this cat
    _weightRecords.remove(catId);
    await _saveWeightRecords();

    // Remove all feeding records for this cat
    _feedingRecords.remove(catId);
    await _saveFeedingRecords();

    // Remove all medical records for this cat
    _medicalRecords.remove(catId);
    await _saveMedicalRecords();

    notifyListeners();
  }

  String generateGroupId() {
    return 'group_${DateTime.now().millisecondsSinceEpoch}';
  }

  String generateCatId() {
    return 'cat_${DateTime.now().millisecondsSinceEpoch}';
  }

  Future<void> addCat(Cat cat) async {
    _cats.add(cat);
    await _saveCats();
    notifyListeners();
  }

  Future<void> addFoodType(String foodType) async {
    if (!_foodTypes.contains(foodType.trim())) {
      _foodTypes.add(foodType.trim());
      await StorageService.saveFoodTypes(_foodTypes);
      notifyListeners();
    }
  }

  Future<void> removeFoodType(String foodType) async {
    _foodTypes.remove(foodType);
    await StorageService.saveFoodTypes(_foodTypes);
    notifyListeners();
  }

  // Direct save methods for import functionality
  Future<void> saveGroupsDirectly(List<Group> groups) async {
    _groups = groups;
    await _saveGroups();
    notifyListeners();
  }

  Future<void> saveCatsDirectly(List<Cat> cats) async {
    _cats = cats;
    await _saveCats();
    notifyListeners();
  }

  Future<void> saveWeightRecordsDirectly(
      Map<String, List<WeightRecord>> records) async {
    _weightRecords = records;
    await _saveWeightRecords();
    notifyListeners();
  }

  Future<void> saveFeedingRecordsDirectly(
      Map<String, List<FeedingRecord>> records) async {
    _feedingRecords = records;
    await _saveFeedingRecords();
    notifyListeners();
  }

  Future<void> saveMedicalRecordsDirectly(
      Map<String, List<MedicalRecord>> records) async {
    _medicalRecords = records;
    await _saveMedicalRecords();
    notifyListeners();
  }

  Future<void> saveFoodTypesDirectly(List<String> foodTypes) async {
    _foodTypes = foodTypes;
    await StorageService.saveFoodTypes(_foodTypes);
    notifyListeners();
  }
}
