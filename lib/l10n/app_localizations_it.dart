// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth =>
      'Traccia la salute e le attività del tuo animale';

  @override
  String get getStarted => 'Inizia';

  @override
  String get myPets => 'I Miei Animali';

  @override
  String get noGroupsOrPetsAvailable => 'Nessun gruppo o animale disponibile';

  @override
  String get newGroup => 'Nuovo Gruppo';

  @override
  String get createGroup => 'Crea Gruppo';

  @override
  String get filterByTags => 'Filtra per tag:';

  @override
  String get clear => 'Cancella';

  @override
  String get ungroupedPets => 'Animali Non Raggruppati';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count animali',
      one: '1 animale',
      zero: '0 animali',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => 'Nessun animale in questo gruppo';

  @override
  String get addPet => 'Aggiungi Animale';

  @override
  String get expand => 'Espandi';

  @override
  String get collapse => 'Comprimi';

  @override
  String get feedGroup => 'Nutri Gruppo';

  @override
  String get editGroup => 'Modifica Gruppo';

  @override
  String get deleteGroup => 'Elimina Gruppo';

  @override
  String get deleteGroupTitle => 'Elimina Gruppo';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return 'Sei sicuro di voler eliminare \"$groupName\"?';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return 'Sei sicuro di voler eliminare \"$groupName\"?\n\nQuesto rimuoverà $count gatto(i) da questo gruppo.';
  }

  @override
  String get cancel => 'Annulla';

  @override
  String get delete => 'Elimina';

  @override
  String get manageFoodTypes => 'Gestisci Tipi di Cibo';

  @override
  String get importData => 'Importa Dati';

  @override
  String get exportData => 'Esporta Dati';

  @override
  String get dataImportedSuccessfully => 'Dati importati con successo!';

  @override
  String get addNewPet => 'Aggiungi Nuovo Animale';

  @override
  String get createANewPetProfile => 'Crea un nuovo profilo animale';

  @override
  String get petType => 'Tipo di Animale';

  @override
  String get cat => 'Gatto';

  @override
  String get dog => 'Cane';

  @override
  String get name => 'Nome';

  @override
  String get enterPetName => 'Inserisci il nome dell\'animale';

  @override
  String get pleaseEnterACatName => 'Inserisci un nome per l\'animale';

  @override
  String get descriptionOptional => 'Descrizione (opzionale)';

  @override
  String get tellUsAboutYourPet => 'Raccontaci del tuo animale...';

  @override
  String get selectIcon => 'Seleziona Icona';

  @override
  String get editGroupTitle => 'Modifica Gruppo';

  @override
  String get createGroupTitle => 'Crea Gruppo';

  @override
  String get updateGroupInformation => 'Aggiorna informazioni del gruppo';

  @override
  String get organizeYourPetsIntoGroups => 'Organizza i tuoi animali in gruppi';

  @override
  String get enterGroupName => 'Inserisci il nome del gruppo';

  @override
  String get pleaseEnterAGroupName => 'Inserisci un nome per il gruppo';

  @override
  String get describeThisGroup => 'Descrivi questo gruppo...';

  @override
  String get saveChanges => 'Salva Modifiche';

  @override
  String get deletePet => 'Elimina Animale';

  @override
  String deletePetConfirm(String petName) {
    return 'Sei sicuro di voler eliminare \"$petName\"?\n\nQuesto eliminerà permanentemente:\n- Il profilo dell\'animale\n- Tutti i registri del peso\n- Tutti i registri dell\'alimentazione\n\nQuesta azione non può essere annullata.';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName è stato eliminato';
  }

  @override
  String get petNotFound => 'Animale non trovato';

  @override
  String get tags => 'Tag';

  @override
  String get add => 'Aggiungi';

  @override
  String get noTagsYet => 'Nessun tag ancora';

  @override
  String get latestWeight => 'Ultimo Peso';

  @override
  String get noWeightRecordsYet => 'Nessun registro del peso ancora';

  @override
  String get edit => 'Modifica';

  @override
  String get addTag => 'Aggiungi Tag';

  @override
  String get tagName => 'Nome tag';

  @override
  String get enterTagName => 'Inserisci il nome del tag';

  @override
  String get noFeedingRecordsYet =>
      'Nessun registro dell\'alimentazione ancora';

  @override
  String get tapTheButtonToAddARecord =>
      'Tocca il pulsante + per aggiungere un registro';

  @override
  String get addFeeding => 'Aggiungi Alimentazione';

  @override
  String get addWeight => 'Aggiungi Peso';

  @override
  String get addRecord => 'Aggiungi Registro';

  @override
  String get noMedicalRecordsYet => 'Nessun registro medico ancora';

  @override
  String get catNotFound => 'Gatto non trovato';

  @override
  String get info => 'Info';

  @override
  String get medical => 'Medico';

  @override
  String get weight => 'Peso';

  @override
  String get feeding => 'Alimentazione';

  @override
  String get addFeedingRecord => 'Aggiungi Registro Alimentazione';

  @override
  String get editFeedingRecord => 'Modifica Registro Alimentazione';

  @override
  String get recordYourPetsFeeding =>
      'Registra l\'alimentazione del tuo animale';

  @override
  String get updateFeedingInformation => 'Aggiorna informazioni alimentazione';

  @override
  String get foodType => 'Tipo di Cibo';

  @override
  String get selectFoodType => 'Seleziona tipo di cibo';

  @override
  String get pleaseSelectAFoodType => 'Seleziona un tipo di cibo';

  @override
  String get amount => 'Quantità';

  @override
  String get enterAmount => 'Inserisci la quantità';

  @override
  String get pleaseEnterAValidAmount =>
      'Inserisci una quantità valida (0.5-1000)';

  @override
  String get date => 'Data';

  @override
  String get selectDate => 'Seleziona data';

  @override
  String get notes => 'Note';

  @override
  String get enterNotes => 'Inserisci note (opzionale)';

  @override
  String get addWeightRecord => 'Aggiungi Registro Peso';

  @override
  String get editWeightRecord => 'Modifica Registro Peso';

  @override
  String get recordYourCatsWeight => 'Registra il peso del tuo gatto';

  @override
  String get updateWeightInformation => 'Aggiorna informazioni peso';

  @override
  String get weightKg => 'Peso (kg)';

  @override
  String get enterWeight => 'Inserisci il peso';

  @override
  String get pleaseEnterAValidWeight => 'Inserisci un peso valido';

  @override
  String get addMedicalRecord => 'Aggiungi Registro Medico';

  @override
  String get editMedicalRecord => 'Modifica Registro Medico';

  @override
  String get recordMedicalInformation => 'Registra informazioni mediche';

  @override
  String get updateMedicalInformation => 'Aggiorna informazioni mediche';

  @override
  String get title => 'Titolo';

  @override
  String get enterTitle => 'Inserisci il titolo';

  @override
  String get pleaseEnterATitle => 'Inserisci un titolo';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType aggiunto';
  }

  @override
  String get deleteFoodType => 'Elimina Tipo di Cibo';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return 'Sei sicuro di voler eliminare \"$foodType\"?\n\nQuesto lo rimuoverà da tutti i registri dell\'alimentazione.';
  }

  @override
  String get editFoodType => 'Modifica Tipo di Cibo';

  @override
  String get enterFoodTypeName => 'Inserisci il nome del tipo di cibo';

  @override
  String get pleaseEnterAFoodTypeName =>
      'Inserisci un nome per il tipo di cibo';

  @override
  String get saveToAllCats => 'Salva per Tutti i Gatti';

  @override
  String addedToAllCats(int count) {
    return 'Aggiunto a tutti i $count gatto(i)';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Sei sicuro di voler eliminare \"$groupName\"?\n\nQuesto rimuoverà $count animale(i) da questo gruppo.';
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
    return 'Aggiunto a $count gatto(i). $failedCount gatto(i) hanno già 5 registri per questo giorno.';
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
