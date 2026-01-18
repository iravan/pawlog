// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth =>
      'Volg de gezondheid en activiteiten van uw huisdier';

  @override
  String get getStarted => 'Aan de Slag';

  @override
  String get myPets => 'Mijn Huisdieren';

  @override
  String get noGroupsOrPetsAvailable =>
      'Geen groepen of huisdieren beschikbaar';

  @override
  String get newGroup => 'Nieuwe Groep';

  @override
  String get createGroup => 'Groep Aanmaken';

  @override
  String get filterByTags => 'Filteren op tags:';

  @override
  String get clear => 'Wissen';

  @override
  String get ungroupedPets => 'Niet Gegroepeerde Huisdieren';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count huisdieren',
      one: '1 huisdier',
      zero: '0 huisdieren',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => 'Geen huisdieren in deze groep';

  @override
  String get addPet => 'Huisdier Toevoegen';

  @override
  String get expand => 'Uitklappen';

  @override
  String get collapse => 'Inklappen';

  @override
  String get feedGroup => 'Groep Voeren';

  @override
  String get editGroup => 'Groep Bewerken';

  @override
  String get deleteGroup => 'Groep Verwijderen';

  @override
  String get deleteGroupTitle => 'Groep Verwijderen';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return 'Weet u zeker dat u \"$groupName\" wilt verwijderen?';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return 'Weet u zeker dat u \"$groupName\" wilt verwijderen?\n\nDit verwijdert $count kat(ten) uit deze groep.';
  }

  @override
  String get cancel => 'Annuleren';

  @override
  String get delete => 'Verwijderen';

  @override
  String get manageFoodTypes => 'Voedseltypen Beheren';

  @override
  String get importData => 'Gegevens Importeren';

  @override
  String get exportData => 'Gegevens Exporteren';

  @override
  String get dataImportedSuccessfully => 'Gegevens succesvol geïmporteerd!';

  @override
  String get addNewPet => 'Nieuw Huisdier Toevoegen';

  @override
  String get createANewPetProfile => 'Een nieuw huisdierprofiel aanmaken';

  @override
  String get petType => 'Huisdiertype';

  @override
  String get cat => 'Kat';

  @override
  String get dog => 'Hond';

  @override
  String get name => 'Naam';

  @override
  String get enterPetName => 'Voer de naam van het huisdier in';

  @override
  String get pleaseEnterACatName => 'Voer een huisdiernaam in';

  @override
  String get descriptionOptional => 'Beschrijving (optioneel)';

  @override
  String get tellUsAboutYourPet => 'Vertel ons over uw huisdier...';

  @override
  String get selectIcon => 'Pictogram Selecteren';

  @override
  String get editGroupTitle => 'Groep Bewerken';

  @override
  String get createGroupTitle => 'Groep Aanmaken';

  @override
  String get updateGroupInformation => 'Groepsinformatie bijwerken';

  @override
  String get organizeYourPetsIntoGroups =>
      'Organiseer uw huisdieren in groepen';

  @override
  String get enterGroupName => 'Voer de groepsnaam in';

  @override
  String get pleaseEnterAGroupName => 'Voer een groepsnaam in';

  @override
  String get describeThisGroup => 'Beschrijf deze groep...';

  @override
  String get saveChanges => 'Wijzigingen Opslaan';

  @override
  String get deletePet => 'Huisdier Verwijderen';

  @override
  String deletePetConfirm(String petName) {
    return 'Weet u zeker dat u \"$petName\" wilt verwijderen?\n\nDit verwijdert permanent:\n- Het huisdierprofiel\n- Alle gewichtsrecords\n- Alle voedingsrecords\n\nDeze actie kan niet ongedaan worden gemaakt.';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName is verwijderd';
  }

  @override
  String get petNotFound => 'Huisdier niet gevonden';

  @override
  String get tags => 'Tags';

  @override
  String get add => 'Toevoegen';

  @override
  String get noTagsYet => 'Nog geen tags';

  @override
  String get latestWeight => 'Laatste Gewicht';

  @override
  String get noWeightRecordsYet => 'Nog geen gewichtsrecords';

  @override
  String get edit => 'Bewerken';

  @override
  String get addTag => 'Tag Toevoegen';

  @override
  String get tagName => 'Tagnaam';

  @override
  String get enterTagName => 'Voer de tagnaam in';

  @override
  String get noFeedingRecordsYet => 'Nog geen voedingsrecords';

  @override
  String get tapTheButtonToAddARecord =>
      'Tik op de + knop om een record toe te voegen';

  @override
  String get addFeeding => 'Voeding Toevoegen';

  @override
  String get addWeight => 'Gewicht Toevoegen';

  @override
  String get addRecord => 'Record Toevoegen';

  @override
  String get noMedicalRecordsYet => 'Nog geen medische records';

  @override
  String get catNotFound => 'Kat niet gevonden';

  @override
  String get info => 'Info';

  @override
  String get medical => 'Medisch';

  @override
  String get weight => 'Gewicht';

  @override
  String get feeding => 'Voeding';

  @override
  String get addFeedingRecord => 'Voedingsrecord Toevoegen';

  @override
  String get editFeedingRecord => 'Voedingsrecord Bewerken';

  @override
  String get recordYourPetsFeeding => 'Registreer de voeding van uw huisdier';

  @override
  String get updateFeedingInformation => 'Voedingsinformatie bijwerken';

  @override
  String get foodType => 'Voedseltype';

  @override
  String get selectFoodType => 'Selecteer voedseltype';

  @override
  String get pleaseSelectAFoodType => 'Selecteer een voedseltype';

  @override
  String get amount => 'Hoeveelheid';

  @override
  String get enterAmount => 'Voer de hoeveelheid in';

  @override
  String get pleaseEnterAValidAmount =>
      'Voer een geldige hoeveelheid in (0.5-1000)';

  @override
  String get date => 'Datum';

  @override
  String get selectDate => 'Selecteer datum';

  @override
  String get notes => 'Notities';

  @override
  String get enterNotes => 'Voer notities in (optioneel)';

  @override
  String get addWeightRecord => 'Gewichtsrecord Toevoegen';

  @override
  String get editWeightRecord => 'Gewichtsrecord Bewerken';

  @override
  String get recordYourCatsWeight => 'Registreer het gewicht van uw kat';

  @override
  String get updateWeightInformation => 'Gewichtsinformatie bijwerken';

  @override
  String get weightKg => 'Gewicht (kg)';

  @override
  String get enterWeight => 'Voer het gewicht in';

  @override
  String get pleaseEnterAValidWeight => 'Voer een geldig gewicht in';

  @override
  String get addMedicalRecord => 'Medisch Record Toevoegen';

  @override
  String get editMedicalRecord => 'Medisch Record Bewerken';

  @override
  String get recordMedicalInformation => 'Registreer medische informatie';

  @override
  String get updateMedicalInformation => 'Medische informatie bijwerken';

  @override
  String get title => 'Titel';

  @override
  String get enterTitle => 'Voer de titel in';

  @override
  String get pleaseEnterATitle => 'Voer een titel in';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType toegevoegd';
  }

  @override
  String get deleteFoodType => 'Voedseltype Verwijderen';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return 'Weet u zeker dat u \"$foodType\" wilt verwijderen?\n\nDit verwijdert het uit alle voedingsrecords.';
  }

  @override
  String get editFoodType => 'Voedseltype Bewerken';

  @override
  String get enterFoodTypeName => 'Voer de naam van het voedseltype in';

  @override
  String get pleaseEnterAFoodTypeName =>
      'Voer een naam voor het voedseltype in';

  @override
  String get saveToAllCats => 'Opslaan voor Alle Katten';

  @override
  String addedToAllCats(int count) {
    return 'Toegevoegd aan alle $count kat(ten)';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Weet u zeker dat u \"$groupName\" wilt verwijderen?\n\nDit verwijdert $count huisdier(en) uit deze groep.';
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
    return 'Toegevoegd aan $count kat(ten). $failedCount kat(ten) hebben al 5 records voor deze dag.';
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
