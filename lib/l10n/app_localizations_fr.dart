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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Êtes-vous sûr de vouloir supprimer \"$groupName\" ?\n\nCela supprimera $count animal(aux) de ce groupe.';
  }

  @override
  String get editPetInformation => 'Modifier les Informations de l\'Animal';

  @override
  String get updateYourPetsDetails =>
      'Mettre à jour les détails de votre animal';

  @override
  String get groupOptional => 'Groupe (optionnel)';

  @override
  String get selectAGroup => 'Sélectionner un groupe';

  @override
  String get noGroup => 'Aucun Groupe';

  @override
  String get description => 'Description';

  @override
  String get group => 'Groupe';

  @override
  String get catNotFound => 'Chat non trouvé';

  @override
  String get help => 'Help';

  @override
  String get changeThemeColor => 'Changer la couleur du thème';

  @override
  String get themeColor => 'Couleur du Thème';

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
  String addedToCats(int successCount, int failedCount) {
    return 'Ajouté à $successCount chat(s). $failedCount chat(s) ont déjà 5 enregistrements pour ce jour.';
  }

  @override
  String addedToAllCats(int count) {
    return 'Ajouté à tous les $count chat(s) avec succès.';
  }

  @override
  String get groupFeeding => 'Alimentation de Groupe';

  @override
  String get recordFeedingForAllPetsInGroup =>
      'Enregistrer l\'alimentation pour tous les animaux de ce groupe';

  @override
  String get gettingStarted => 'Pour Commencer';

  @override
  String get creatingYourFirstPet => 'Créer Votre Premier Animal';

  @override
  String get creatingYourFirstPetDescription =>
      'Appuyez sur le bouton \"Nouveau Groupe\" en bas pour créer un groupe, puis appuyez sur \"Ajouter un Animal\" pour ajouter votre premier animal au groupe.';

  @override
  String get addingPets => 'Ajouter des Animaux';

  @override
  String get addingPetsDescription =>
      'Vous pouvez ajouter des animaux directement à un groupe ou les ajouter sans groupe. Les animaux peuvent être déplacés entre les groupes plus tard.';

  @override
  String get petTypes => 'Types d\'Animaux';

  @override
  String get petTypesDescription =>
      'Choisissez entre Chat ou Chien lors de l\'ajout d\'un animal. Vous pouvez également sélectionner une icône personnalisée pour chaque animal.';

  @override
  String get managingPets => 'Gérer les Animaux';

  @override
  String get viewingPetDetails => 'Voir les Détails de l\'Animal';

  @override
  String get viewingPetDetailsDescription =>
      'Appuyez sur n\'importe quel animal dans la liste pour voir des informations détaillées, y compris les enregistrements de poids, l\'historique d\'alimentation et les dossiers médicaux.';

  @override
  String get editingPetInformation => 'Modifier les Informations de l\'Animal';

  @override
  String get editingPetInformationDescription =>
      'Appuyez sur le bouton \"Modifier\" dans l\'onglet Info de l\'animal pour mettre à jour le nom, la description, l\'icône ou l\'affectation au groupe.';

  @override
  String get deletingPets => 'Supprimer les Animaux';

  @override
  String get deletingPetsDescription =>
      'Utilisez le bouton \"Supprimer\" dans l\'onglet Info de l\'animal pour supprimer définitivement un animal et tous les enregistrements associés.';

  @override
  String get recordingData => 'Enregistrement des Données';

  @override
  String get weightRecords => 'Enregistrements de Poids';

  @override
  String get weightRecordsDescription =>
      'Suivez le poids de votre animal au fil du temps. Appuyez sur le bouton + dans l\'onglet Poids pour ajouter un nouvel enregistrement.';

  @override
  String get feedingRecords => 'Enregistrements d\'Alimentation';

  @override
  String get feedingRecordsDescription =>
      'Enregistrez les heures d\'alimentation, les types de nourriture et les quantités. Vous pouvez ajouter jusqu\'à 5 enregistrements par jour par animal.';

  @override
  String get medicalRecords => 'Dossiers Médicaux';

  @override
  String get medicalRecordsDescription =>
      'Gardez une trace des visites vétérinaires, des médicaments, des vaccinations et d\'autres informations médicales.';

  @override
  String get groupsAndOrganization => 'Groupes et Organisation';

  @override
  String get creatingGroups => 'Créer des Groupes';

  @override
  String get creatingGroupsDescription =>
      'Créez des groupes pour organiser vos animaux. Appuyez sur \"Nouveau Groupe\" pour créer un groupe, puis ajoutez-y des animaux.';

  @override
  String get groupFeedingDescription =>
      'Utilisez la fonction d\'alimentation de groupe pour enregistrer la même alimentation pour tous les animaux d\'un groupe en une seule fois.';

  @override
  String get tagsDescription =>
      'Ajoutez des tags à vos animaux pour un filtrage facile. Les tags vous aident à organiser et à trouver rapidement les animaux en utilisant la barre de filtre en haut.';

  @override
  String get dataManagement => 'Gestion des Données';

  @override
  String get exportingData => 'Exporter les Données';

  @override
  String get exportingDataDescription =>
      'Exportez vos données pour les partager ou les sauvegarder. Allez dans Paramètres et appuyez sur \"Exporter les Données\".';

  @override
  String get importingData => 'Importer les Données';

  @override
  String get importingDataDescription =>
      'Importez des données précédemment exportées pour restaurer vos animaux et enregistrements.';

  @override
  String get foodTypes => 'Types de Nourriture';

  @override
  String get managingFoodTypes => 'Managing Food Types';

  @override
  String get managingFoodTypesDescription =>
      'Allez dans le menu (trois points) dans le coin supérieur droit et sélectionnez \"Gérer les Types de Nourriture\" pour ajouter, modifier ou supprimer des types de nourriture.';

  @override
  String get usingFoodTypes => 'Utiliser les Types de Nourriture';

  @override
  String get usingFoodTypesDescription =>
      'Lors de l\'ajout d\'un enregistrement d\'alimentation, sélectionnez parmi vos types de nourriture enregistrés. Cela aide à maintenir la cohérence dans le suivi.';

  @override
  String get localStorage => 'Stockage Local';

  @override
  String get localStorageDescription =>
      'Toutes vos données sont stockées localement sur votre appareil. Vos informations sur les animaux restent privées et sont accessibles hors ligne.';

  @override
  String get customization => 'Personnalisation';

  @override
  String get themeColors => 'Couleurs du Thème';

  @override
  String get themeColorsDescription =>
      'Changez la couleur du thème de l\'application en appuyant sur l\'icône de palette dans le coin supérieur droit. Choisissez parmi une variété de couleurs pour personnaliser votre expérience.';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return 'Cela ajoutera un enregistrement d\'alimentation à $count chat(s) :';
  }

  @override
  String get type => 'type';

  @override
  String get types => 'types';

  @override
  String get noFoodTypesYet => 'Aucun type de nourriture pour le moment';

  @override
  String get foodTypeName => 'Nom du Type de Nourriture';

  @override
  String get addNewFoodType => 'Ajouter un Nouveau Type de Nourriture';

  @override
  String get addAndManageFoodTypesForFeedingRecords =>
      'Ajouter et gérer les types de nourriture pour les enregistrements d\'alimentation';
}
