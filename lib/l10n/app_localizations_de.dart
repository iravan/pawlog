// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth =>
      'Verfolgen Sie die Gesundheit und Aktivitäten Ihres Haustiers';

  @override
  String get getStarted => 'Loslegen';

  @override
  String get myPets => 'Meine Haustiere';

  @override
  String get noGroupsOrPetsAvailable =>
      'Keine Gruppen oder Haustiere verfügbar';

  @override
  String get newGroup => 'Neue Gruppe';

  @override
  String get createGroup => 'Gruppe Erstellen';

  @override
  String get filterByTags => 'Nach Tags filtern:';

  @override
  String get clear => 'Löschen';

  @override
  String get ungroupedPets => 'Nicht Gruppierte Haustiere';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Haustiere',
      one: '1 Haustier',
      zero: '0 Haustiere',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => 'Keine Haustiere in dieser Gruppe';

  @override
  String get addPet => 'Haustier Hinzufügen';

  @override
  String get expand => 'Erweitern';

  @override
  String get collapse => 'Einklappen';

  @override
  String get feedGroup => 'Gruppe Füttern';

  @override
  String get editGroup => 'Gruppe Bearbeiten';

  @override
  String get deleteGroup => 'Gruppe Löschen';

  @override
  String get deleteGroupTitle => 'Gruppe Löschen';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return 'Möchten Sie \"$groupName\" wirklich löschen?';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return 'Möchten Sie \"$groupName\" wirklich löschen?\n\nDadurch werden $count Katze(n) aus dieser Gruppe entfernt.';
  }

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get manageFoodTypes => 'Futterarten Verwalten';

  @override
  String get importData => 'Daten Importieren';

  @override
  String get exportData => 'Daten Exportieren';

  @override
  String get dataImportedSuccessfully => 'Daten erfolgreich importiert!';

  @override
  String get addNewPet => 'Neues Haustier Hinzufügen';

  @override
  String get createANewPetProfile => 'Ein neues Haustierprofil erstellen';

  @override
  String get petType => 'Haustierart';

  @override
  String get cat => 'Katze';

  @override
  String get dog => 'Hund';

  @override
  String get name => 'Name';

  @override
  String get enterPetName => 'Haustiername eingeben';

  @override
  String get pleaseEnterACatName => 'Bitte geben Sie einen Haustiernamen ein';

  @override
  String get descriptionOptional => 'Beschreibung (optional)';

  @override
  String get tellUsAboutYourPet => 'Erzählen Sie uns von Ihrem Haustier...';

  @override
  String get selectIcon => 'Symbol Auswählen';

  @override
  String get editGroupTitle => 'Gruppe Bearbeiten';

  @override
  String get createGroupTitle => 'Gruppe Erstellen';

  @override
  String get updateGroupInformation => 'Gruppeninformationen aktualisieren';

  @override
  String get organizeYourPetsIntoGroups =>
      'Organisieren Sie Ihre Haustiere in Gruppen';

  @override
  String get enterGroupName => 'Gruppenname eingeben';

  @override
  String get pleaseEnterAGroupName => 'Bitte geben Sie einen Gruppenname ein';

  @override
  String get describeThisGroup => 'Beschreiben Sie diese Gruppe...';

  @override
  String get saveChanges => 'Änderungen Speichern';

  @override
  String get deletePet => 'Haustier Löschen';

  @override
  String deletePetConfirm(String petName) {
    return 'Möchten Sie \"$petName\" wirklich löschen?\n\nDadurch werden dauerhaft gelöscht:\n- Das Haustierprofil\n- Alle Gewichtsaufzeichnungen\n- Alle Fütterungsaufzeichnungen\n\nDiese Aktion kann nicht rückgängig gemacht werden.';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName wurde gelöscht';
  }

  @override
  String get petNotFound => 'Haustier nicht gefunden';

  @override
  String get tags => 'Tags';

  @override
  String get add => 'Hinzufügen';

  @override
  String get noTagsYet => 'Noch keine Tags';

  @override
  String get latestWeight => 'Letztes Gewicht';

  @override
  String get noWeightRecordsYet => 'Noch keine Gewichtsaufzeichnungen';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get addTag => 'Tag Hinzufügen';

  @override
  String get tagName => 'Tagname';

  @override
  String get enterTagName => 'Tagname eingeben';

  @override
  String get noFeedingRecordsYet => 'Noch keine Fütterungsaufzeichnungen';

  @override
  String get tapTheButtonToAddARecord =>
      'Tippen Sie auf die + Schaltfläche, um einen Eintrag hinzuzufügen';

  @override
  String get addFeeding => 'Fütterung Hinzufügen';

  @override
  String get addWeight => 'Gewicht Hinzufügen';

  @override
  String get addRecord => 'Eintrag Hinzufügen';

  @override
  String get noMedicalRecordsYet => 'Noch keine medizinischen Aufzeichnungen';

  @override
  String get catNotFound => 'Katze nicht gefunden';

  @override
  String get info => 'Info';

  @override
  String get medical => 'Medizinisch';

  @override
  String get weight => 'Gewicht';

  @override
  String get feeding => 'Fütterung';

  @override
  String get addFeedingRecord => 'Fütterungsaufzeichnung Hinzufügen';

  @override
  String get editFeedingRecord => 'Fütterungsaufzeichnung Bearbeiten';

  @override
  String get recordYourPetsFeeding => 'Fütterung Ihres Haustiers aufzeichnen';

  @override
  String get updateFeedingInformation =>
      'Fütterungsinformationen aktualisieren';

  @override
  String get foodType => 'Futterart';

  @override
  String get selectFoodType => 'Futterart auswählen';

  @override
  String get pleaseSelectAFoodType => 'Bitte wählen Sie eine Futterart aus';

  @override
  String get amount => 'Menge';

  @override
  String get enterAmount => 'Menge eingeben';

  @override
  String get pleaseEnterAValidAmount =>
      'Bitte geben Sie eine gültige Menge ein (0,5-1000)';

  @override
  String get date => 'Datum';

  @override
  String get selectDate => 'Datum auswählen';

  @override
  String get notes => 'Notizen';

  @override
  String get enterNotes => 'Notizen eingeben (optional)';

  @override
  String get addWeightRecord => 'Gewichtsaufzeichnung Hinzufügen';

  @override
  String get editWeightRecord => 'Gewichtsaufzeichnung Bearbeiten';

  @override
  String get recordYourCatsWeight => 'Gewicht Ihrer Katze aufzeichnen';

  @override
  String get updateWeightInformation => 'Gewichtsinformationen aktualisieren';

  @override
  String get weightKg => 'Gewicht (kg)';

  @override
  String get enterWeight => 'Gewicht eingeben';

  @override
  String get pleaseEnterAValidWeight =>
      'Bitte geben Sie ein gültiges Gewicht ein';

  @override
  String get addMedicalRecord => 'Medizinische Aufzeichnung Hinzufügen';

  @override
  String get editMedicalRecord => 'Medizinische Aufzeichnung Bearbeiten';

  @override
  String get recordMedicalInformation =>
      'Medizinische Informationen aufzeichnen';

  @override
  String get updateMedicalInformation =>
      'Medizinische Informationen aktualisieren';

  @override
  String get title => 'Titel';

  @override
  String get enterTitle => 'Titel eingeben';

  @override
  String get pleaseEnterATitle => 'Bitte geben Sie einen Titel ein';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType hinzugefügt';
  }

  @override
  String get deleteFoodType => 'Futterart Löschen';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return 'Möchten Sie \"$foodType\" wirklich löschen?\n\nDadurch wird es aus allen Fütterungsaufzeichnungen entfernt.';
  }

  @override
  String get editFoodType => 'Futterart Bearbeiten';

  @override
  String get enterFoodTypeName => 'Futterartname eingeben';

  @override
  String get pleaseEnterAFoodTypeName =>
      'Bitte geben Sie einen Futterartname ein';

  @override
  String get saveToAllCats => 'Für Alle Katzen Speichern';

  @override
  String addedToAllCats(int count) {
    return 'Zu allen $count Katze(n) hinzugefügt';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Möchten Sie \"$groupName\" wirklich löschen?\n\nDadurch werden $count Haustier(e) aus dieser Gruppe entfernt.';
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
    return 'Zu $count Katze(n) hinzugefügt. $failedCount Katze(n) haben bereits 5 Einträge für diesen Tag.';
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
