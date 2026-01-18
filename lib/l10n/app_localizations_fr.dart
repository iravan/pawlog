// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth =>
      'Suivez la santé et les activités de votre animal';

  @override
  String get getStarted => 'Commencer';

  @override
  String get myPets => 'Mes Animaux';

  @override
  String get noGroupsOrPetsAvailable => 'Aucun groupe ou animal disponible';

  @override
  String get newGroup => 'Nouveau Groupe';

  @override
  String get createGroup => 'Créer un Groupe';

  @override
  String get filterByTags => 'Filtrer par tags :';

  @override
  String get clear => 'Effacer';

  @override
  String get ungroupedPets => 'Animaux Non Groupés';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count animaux',
      one: '1 animal',
      zero: '0 animaux',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => 'Aucun animal dans ce groupe';

  @override
  String get addPet => 'Ajouter un Animal';

  @override
  String get expand => 'Développer';

  @override
  String get collapse => 'Réduire';

  @override
  String get feedGroup => 'Nourrir le Groupe';

  @override
  String get editGroup => 'Modifier le Groupe';

  @override
  String get deleteGroup => 'Supprimer le Groupe';

  @override
  String get deleteGroupTitle => 'Supprimer le Groupe';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return 'Êtes-vous sûr de vouloir supprimer \"$groupName\" ?';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return 'Êtes-vous sûr de vouloir supprimer \"$groupName\" ?\n\nCela supprimera $count chat(s) de ce groupe.';
  }

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get manageFoodTypes => 'Gérer les Types de Nourriture';

  @override
  String get importData => 'Importer les Données';

  @override
  String get exportData => 'Exporter les Données';

  @override
  String get dataImportedSuccessfully => 'Données importées avec succès !';

  @override
  String get addNewPet => 'Ajouter un Nouvel Animal';

  @override
  String get createANewPetProfile => 'Créer un nouveau profil d\'animal';

  @override
  String get petType => 'Type d\'Animal';

  @override
  String get cat => 'Chat';

  @override
  String get dog => 'Chien';

  @override
  String get name => 'Nom';

  @override
  String get enterPetName => 'Entrez le nom de l\'animal';

  @override
  String get pleaseEnterACatName => 'Veuillez entrer un nom d\'animal';

  @override
  String get descriptionOptional => 'Description (optionnel)';

  @override
  String get tellUsAboutYourPet => 'Parlez-nous de votre animal...';

  @override
  String get selectIcon => 'Sélectionner une Icône';

  @override
  String get editGroupTitle => 'Modifier le Groupe';

  @override
  String get createGroupTitle => 'Créer un Groupe';

  @override
  String get updateGroupInformation =>
      'Mettre à jour les informations du groupe';

  @override
  String get organizeYourPetsIntoGroups => 'Organisez vos animaux en groupes';

  @override
  String get enterGroupName => 'Entrez le nom du groupe';

  @override
  String get pleaseEnterAGroupName => 'Veuillez entrer un nom de groupe';

  @override
  String get describeThisGroup => 'Décrivez ce groupe...';

  @override
  String get saveChanges => 'Enregistrer les Modifications';

  @override
  String get deletePet => 'Supprimer l\'Animal';

  @override
  String deletePetConfirm(String petName) {
    return 'Êtes-vous sûr de vouloir supprimer \"$petName\" ?\n\nCela supprimera définitivement :\n- Le profil de l\'animal\n- Tous les enregistrements de poids\n- Tous les enregistrements d\'alimentation\n\nCette action ne peut pas être annulée.';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName a été supprimé';
  }

  @override
  String get petNotFound => 'Animal non trouvé';

  @override
  String get tags => 'Tags';

  @override
  String get add => 'Ajouter';

  @override
  String get noTagsYet => 'Aucun tag pour le moment';

  @override
  String get latestWeight => 'Dernier Poids';

  @override
  String get noWeightRecordsYet =>
      'Aucun enregistrement de poids pour le moment';

  @override
  String get edit => 'Modifier';

  @override
  String get addTag => 'Ajouter un Tag';

  @override
  String get tagName => 'Nom du tag';

  @override
  String get enterTagName => 'Entrez le nom du tag';

  @override
  String get noFeedingRecordsYet =>
      'Aucun enregistrement d\'alimentation pour le moment';

  @override
  String get tapTheButtonToAddARecord =>
      'Appuyez sur le bouton + pour ajouter un enregistrement';

  @override
  String get addFeeding => 'Ajouter une Alimentation';

  @override
  String get addWeight => 'Ajouter un Poids';

  @override
  String get addRecord => 'Ajouter un Enregistrement';

  @override
  String get noMedicalRecordsYet =>
      'Aucun enregistrement médical pour le moment';

  @override
  String get catNotFound => 'Chat non trouvé';

  @override
  String get info => 'Info';

  @override
  String get medical => 'Médical';

  @override
  String get weight => 'Poids';

  @override
  String get feeding => 'Alimentation';

  @override
  String get addFeedingRecord => 'Ajouter un Enregistrement d\'Alimentation';

  @override
  String get editFeedingRecord => 'Modifier l\'Enregistrement d\'Alimentation';

  @override
  String get recordYourPetsFeeding =>
      'Enregistrer l\'alimentation de votre animal';

  @override
  String get updateFeedingInformation =>
      'Mettre à jour les informations d\'alimentation';

  @override
  String get foodType => 'Type de Nourriture';

  @override
  String get selectFoodType => 'Sélectionner un type de nourriture';

  @override
  String get pleaseSelectAFoodType =>
      'Veuillez sélectionner un type de nourriture';

  @override
  String get amount => 'Quantité';

  @override
  String get enterAmount => 'Entrez la quantité';

  @override
  String get pleaseEnterAValidAmount =>
      'Veuillez entrer une quantité valide (0,5-1000)';

  @override
  String get date => 'Date';

  @override
  String get selectDate => 'Sélectionner la date';

  @override
  String get notes => 'Notes';

  @override
  String get enterNotes => 'Entrez des notes (optionnel)';

  @override
  String get addWeightRecord => 'Ajouter un Enregistrement de Poids';

  @override
  String get editWeightRecord => 'Modifier l\'Enregistrement de Poids';

  @override
  String get recordYourCatsWeight => 'Enregistrer le poids de votre chat';

  @override
  String get updateWeightInformation =>
      'Mettre à jour les informations de poids';

  @override
  String get weightKg => 'Poids (kg)';

  @override
  String get enterWeight => 'Entrez le poids';

  @override
  String get pleaseEnterAValidWeight => 'Veuillez entrer un poids valide';

  @override
  String get addMedicalRecord => 'Ajouter un Enregistrement Médical';

  @override
  String get editMedicalRecord => 'Modifier l\'Enregistrement Médical';

  @override
  String get recordMedicalInformation =>
      'Enregistrer les informations médicales';

  @override
  String get updateMedicalInformation =>
      'Mettre à jour les informations médicales';

  @override
  String get title => 'Titre';

  @override
  String get enterTitle => 'Entrez le titre';

  @override
  String get pleaseEnterATitle => 'Veuillez entrer un titre';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType ajouté';
  }

  @override
  String get deleteFoodType => 'Supprimer le Type de Nourriture';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return 'Êtes-vous sûr de vouloir supprimer \"$foodType\" ?\n\nCela le supprimera de tous les enregistrements d\'alimentation.';
  }

  @override
  String get editFoodType => 'Modifier le Type de Nourriture';

  @override
  String get enterFoodTypeName => 'Entrez le nom du type de nourriture';

  @override
  String get pleaseEnterAFoodTypeName =>
      'Veuillez entrer un nom de type de nourriture';

  @override
  String get saveToAllCats => 'Enregistrer pour Tous les Chats';

  @override
  String addedToAllCats(int count) {
    return 'Ajouté à tous les $count chat(s)';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Êtes-vous sûr de vouloir supprimer \"$groupName\" ?\n\nCela supprimera $count animal(aux) de ce groupe.';
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
    return 'Ajouté à $count chat(s). $failedCount chat(s) ont déjà 5 enregistrements pour ce jour.';
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
