import 'package:flutter/foundation.dart';
import '../models/cat.dart';
import '../models/group.dart';
import '../models/weight_record.dart';
import '../models/feeding_record.dart';
import '../services/storage_service.dart';

class CatProvider with ChangeNotifier {
  List<Group> _groups = [];
  List<Cat> _cats = [];
  Map<String, List<WeightRecord>> _weightRecords = {};
  Map<String, List<FeedingRecord>> _feedingRecords = {};
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
        name: 'Indoor Cats',
        description: 'Cats that stay indoors',
        icon: '🏠',
      ),
      Group(
        id: 'group2',
        name: 'Outdoor Cats',
        description: 'Cats that go outside',
        icon: '🌳',
      ),
      Group(
        id: 'group3',
        name: 'Kittens',
        description: 'Young cats under 1 year',
        icon: '🐾',
      ),
    ];
  }

  List<Cat> _getDefaultCats() {
    return [
      Cat(
        id: '1',
        name: 'Whiskers',
        description: 'A playful orange tabby who loves to explore',
        icon: '🐱',
        groupId: 'group1',
      ),
      Cat(
        id: '2',
        name: 'Luna',
        description: 'A graceful black cat with green eyes',
        icon: '🐈',
        groupId: 'group1',
      ),
      Cat(
        id: '3',
        name: 'Max',
        description: 'A friendly white Persian cat',
        icon: '🐈‍⬛',
        groupId: 'group2',
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

  List<WeightRecord> getWeightRecords(String catId) {
    return _weightRecords[catId] ?? [];
  }

  List<FeedingRecord> getFeedingRecords(String catId) {
    return _feedingRecords[catId] ?? [];
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
        return Cat(
          id: cat.id,
          name: cat.name,
          description: cat.description,
          icon: cat.icon,
          groupId: null,
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
    String description,
    String icon,
    String? groupId,
  ) async {
    final index = _cats.indexWhere((c) => c.id == catId);
    if (index != -1) {
      _cats[index] = Cat(
        id: catId,
        name: name,
        description: description,
        icon: icon,
        groupId: groupId,
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
}
