// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth => 'Track your pet\'s health and activities';

  @override
  String get getStarted => 'Get Started';

  @override
  String get myPets => 'My Pets';

  @override
  String get noGroupsOrPetsAvailable => 'No groups or pets available';

  @override
  String get newGroup => 'New Group';

  @override
  String get createGroup => 'Create Group';

  @override
  String get filterByTags => 'Filter by tags:';

  @override
  String get clear => 'Clear';

  @override
  String get ungroupedPets => 'Ungrouped Pets';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pets',
      one: '1 pet',
      zero: '0 pets',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => 'No pets in this group';

  @override
  String get addPet => 'Add Pet';

  @override
  String get expand => 'Expand';

  @override
  String get collapse => 'Collapse';

  @override
  String get feedGroup => 'Feed Group';

  @override
  String get editGroup => 'Edit Group';

  @override
  String get deleteGroup => 'Delete Group';

  @override
  String get deleteGroupTitle => 'Delete Group';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return 'Are you sure you want to delete \"$groupName\"?';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return 'Are you sure you want to delete \"$groupName\"?\n\nThis will remove $count cat(s) from this group.';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get manageFoodTypes => 'Manage Food Types';

  @override
  String get importData => 'Import Data';

  @override
  String get exportData => 'Export Data';

  @override
  String get dataImportedSuccessfully => 'Data imported successfully!';

  @override
  String get addNewPet => 'Add New Pet';

  @override
  String get createANewPetProfile => 'Create a new pet profile';

  @override
  String get petType => 'Pet Type';

  @override
  String get cat => 'Cat';

  @override
  String get dog => 'Dog';

  @override
  String get name => 'Name';

  @override
  String get enterPetName => 'Enter pet name';

  @override
  String get pleaseEnterACatName => 'Please enter a cat name';

  @override
  String get descriptionOptional => 'Description (optional)';

  @override
  String get tellUsAboutYourPet => 'Tell us about your pet...';

  @override
  String get selectIcon => 'Select Icon';

  @override
  String get editGroupTitle => 'Edit Group';

  @override
  String get createGroupTitle => 'Create Group';

  @override
  String get updateGroupInformation => 'Update group information';

  @override
  String get organizeYourPetsIntoGroups => 'Organize your pets into groups';

  @override
  String get enterGroupName => 'Enter group name';

  @override
  String get pleaseEnterAGroupName => 'Please enter a group name';

  @override
  String get describeThisGroup => 'Describe this group...';

  @override
  String get saveChanges => 'Save Changes';

  @override
  String get deletePet => 'Delete Pet';

  @override
  String deletePetConfirm(String petName) {
    return 'Are you sure you want to delete \"$petName\"?\n\nThis will permanently delete:\n- The pet profile\n- All weight records\n- All feeding records\n\nThis action cannot be undone.';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName has been deleted';
  }

  @override
  String get petNotFound => 'Pet not found';

  @override
  String get tags => 'Tags';

  @override
  String get add => 'Add';

  @override
  String get noTagsYet => 'No tags yet';

  @override
  String get latestWeight => 'Latest Weight';

  @override
  String get noWeightRecordsYet => 'No weight records yet';

  @override
  String get edit => 'Edit';

  @override
  String get addTag => 'Add Tag';

  @override
  String get tagName => 'Tag name';

  @override
  String get enterTagName => 'Enter tag name';

  @override
  String get noFeedingRecordsYet => 'No feeding records yet';

  @override
  String get tapTheButtonToAddARecord => 'Tap the + button to add a record';

  @override
  String get addFeeding => 'Add Feeding';

  @override
  String get addWeight => 'Add Weight';

  @override
  String get addRecord => 'Add Record';

  @override
  String get noMedicalRecordsYet => 'No medical records yet';

  @override
  String get catNotFound => 'Cat Not Found';

  @override
  String get info => 'Info';

  @override
  String get medical => 'Medical';

  @override
  String get weight => 'Weight';

  @override
  String get feeding => 'Feeding';

  @override
  String get addFeedingRecord => 'Add Feeding Record';

  @override
  String get editFeedingRecord => 'Edit Feeding Record';

  @override
  String get recordYourPetsFeeding => 'Record your pet\'s feeding';

  @override
  String get updateFeedingInformation => 'Update feeding information';

  @override
  String get foodType => 'Food Type';

  @override
  String get selectFoodType => 'Select food type';

  @override
  String get pleaseSelectAFoodType => 'Please select a food type';

  @override
  String get amount => 'Amount';

  @override
  String get enterAmount => 'Enter amount';

  @override
  String get pleaseEnterAValidAmount =>
      'Please enter a valid amount (0.5-1000)';

  @override
  String get date => 'Date';

  @override
  String get selectDate => 'Select date';

  @override
  String get notes => 'Notes';

  @override
  String get enterNotes => 'Enter notes (optional)';

  @override
  String get addWeightRecord => 'Add Weight Record';

  @override
  String get editWeightRecord => 'Edit Weight Record';

  @override
  String get recordYourCatsWeight => 'Record your cat\'s weight';

  @override
  String get updateWeightInformation => 'Update weight information';

  @override
  String get weightKg => 'Weight (kg)';

  @override
  String get enterWeight => 'Enter weight';

  @override
  String get pleaseEnterAValidWeight => 'Please enter a valid weight';

  @override
  String get addMedicalRecord => 'Add Medical Record';

  @override
  String get editMedicalRecord => 'Edit Medical Record';

  @override
  String get recordMedicalInformation => 'Record medical information';

  @override
  String get updateMedicalInformation => 'Update medical information';

  @override
  String get title => 'Title';

  @override
  String get enterTitle => 'Enter title';

  @override
  String get pleaseEnterATitle => 'Please enter a title';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType added';
  }

  @override
  String get deleteFoodType => 'Delete Food Type';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return 'Are you sure you want to delete \"$foodType\"?\n\nThis will remove it from all feeding records.';
  }

  @override
  String get editFoodType => 'Edit Food Type';

  @override
  String get enterFoodTypeName => 'Enter food type name';

  @override
  String get pleaseEnterAFoodTypeName => 'Please enter a food type name';

  @override
  String get saveToAllCats => 'Save to All Cats';

  @override
  String addedToAllCats(int count) {
    return 'Added to all $count cat(s) successfully.';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Are you sure you want to delete \"$groupName\"?\n\nThis will remove $count pet(s) from this group.';
  }

  @override
  String get editPetInformation => 'Edit Pet Information';

  @override
  String get updateYourPetsDetails => 'Update your pet\'s details';

  @override
  String get groupOptional => 'Group (optional)';

  @override
  String get selectAGroup => 'Select a group';

  @override
  String get noGroup => 'No Group';

  @override
  String get description => 'Description';

  @override
  String get group => 'Group';

  @override
  String get help => 'Help';

  @override
  String get changeThemeColor => 'Change theme color';

  @override
  String get themeColor => 'Theme Color';

  @override
  String addedToCats(int successCount, int failedCount, Object count) {
    return 'Added to $successCount cat(s). $failedCount cat(s) already have 5 records for this day.';
  }

  @override
  String get groupFeeding => 'Group Feeding';

  @override
  String get recordFeedingForAllPetsInGroup =>
      'Record feeding for all pets in this group';

  @override
  String get gettingStarted => 'Getting Started';

  @override
  String get creatingYourFirstPet => 'Creating Your First Pet';

  @override
  String get creatingYourFirstPetDescription =>
      'Tap the \"New Group\" button at the bottom to create a group, then tap \"Add Pet\" to add your first pet to the group.';

  @override
  String get addingPets => 'Adding Pets';

  @override
  String get addingPetsDescription =>
      'You can add pets directly to a group or add them without a group. Pets can be moved between groups later.';

  @override
  String get petTypes => 'Pet Types';

  @override
  String get petTypesDescription =>
      'Choose between Cat or Dog when adding a pet. You can also select a custom icon for each pet.';

  @override
  String get managingPets => 'Managing Pets';

  @override
  String get viewingPetDetails => 'Viewing Pet Details';

  @override
  String get viewingPetDetailsDescription =>
      'Tap on any pet in the list to view detailed information, including weight records, feeding history, and medical records.';

  @override
  String get editingPetInformation => 'Editing Pet Information';

  @override
  String get editingPetInformationDescription =>
      'Tap the \"Edit\" button in the pet\'s info tab to update name, description, icon, or group assignment.';

  @override
  String get deletingPets => 'Deleting Pets';

  @override
  String get deletingPetsDescription =>
      'Use the \"Delete\" button in the pet\'s info tab to permanently remove a pet and all associated records.';

  @override
  String get recordingData => 'Recording Data';

  @override
  String get weightRecords => 'Weight Records';

  @override
  String get weightRecordsDescription =>
      'Track your pet\'s weight over time. Tap the + button in the Weight tab to add a new record.';

  @override
  String get feedingRecords => 'Feeding Records';

  @override
  String get feedingRecordsDescription =>
      'Record feeding times, food types, and amounts. You can add up to 5 records per day per pet.';

  @override
  String get medicalRecords => 'Medical Records';

  @override
  String get medicalRecordsDescription =>
      'Keep track of vet visits, medications, vaccinations, and other medical information.';

  @override
  String get groupsAndOrganization => 'Groups & Organization';

  @override
  String get creatingGroups => 'Creating Groups';

  @override
  String get creatingGroupsDescription =>
      'Create groups to organize your pets. Tap \"New Group\" to create a group, then add pets to it.';

  @override
  String get groupFeedingDescription =>
      'Use the group feeding feature to record the same feeding for all pets in a group at once.';

  @override
  String get tagsDescription =>
      'Add tags to pets for easy filtering. Tap \"Add\" in the Tags section to create custom tags.';

  @override
  String get dataManagement => 'Data Management';

  @override
  String get exportingData => 'Exporting Data';

  @override
  String get exportingDataDescription =>
      'Export your data to share or backup. Go to Settings and tap \"Export Data\".';

  @override
  String get importingData => 'Importing Data';

  @override
  String get importingDataDescription =>
      'Import previously exported data to restore your pets and records.';

  @override
  String get foodTypes => 'Food Types';

  @override
  String get managingFoodTypes => 'Managing Food Types';

  @override
  String get managingFoodTypesDescription =>
      'Go to the menu (three dots) in the top-right corner and select \"Manage Food Types\" to add, edit, or remove food types.';

  @override
  String get usingFoodTypes => 'Using Food Types';

  @override
  String get usingFoodTypesDescription =>
      'When adding a feeding record, select from your saved food types. This helps maintain consistency in tracking.';

  @override
  String get localStorage => 'Local Storage';

  @override
  String get localStorageDescription =>
      'All your data is stored locally on your device. Your pet information stays private and is accessible offline.';

  @override
  String get customization => 'Customization';

  @override
  String get themeColors => 'Theme Colors';

  @override
  String get themeColorsDescription =>
      'Change the app\'s theme color by tapping the palette icon in the top-right corner. Choose from a variety of colors to personalize your experience.';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return 'This will add a feeding record to $count cat(s):';
  }

  @override
  String get type => 'type';

  @override
  String get types => 'types';

  @override
  String get noFoodTypesYet => 'No food types yet';

  @override
  String get foodTypeName => 'Food Type Name';

  @override
  String get addNewFoodType => 'Add New Food Type';

  @override
  String get addAndManageFoodTypesForFeedingRecords =>
      'Add and manage food types for feeding records';
}
