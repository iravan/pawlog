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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Möchten Sie \"$groupName\" wirklich löschen?\n\nDadurch werden $count Haustier(e) aus dieser Gruppe entfernt.';
  }

  @override
  String get editPetInformation => 'Haustierinformationen Bearbeiten';

  @override
  String get updateYourPetsDetails =>
      'Aktualisieren Sie die Details Ihres Haustieres';

  @override
  String get groupOptional => 'Gruppe (optional)';

  @override
  String get selectAGroup => 'Wählen Sie eine Gruppe';

  @override
  String get noGroup => 'Keine Gruppe';

  @override
  String get description => 'Beschreibung';

  @override
  String get group => 'Gruppe';

  @override
  String get catNotFound => 'Katze nicht gefunden';

  @override
  String get help => 'Hilfe';

  @override
  String get changeThemeColor => 'Themenfarbe ändern';

  @override
  String get themeColor => 'Themenfarbe';

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
  String addedToCats(int successCount, int failedCount) {
    return 'Zu $successCount Katze(n) hinzugefügt. $failedCount Katze(n) haben bereits 5 Einträge für diesen Tag.';
  }

  @override
  String addedToAllCats(int count) {
    return 'Zu allen $count Katze(n) erfolgreich hinzugefügt';
  }

  @override
  String get groupFeeding => 'Gruppenfütterung';

  @override
  String get recordFeedingForAllPetsInGroup =>
      'Fütterung für alle Haustiere in dieser Gruppe aufzeichnen';

  @override
  String get gettingStarted => 'Erste Schritte';

  @override
  String get creatingYourFirstPet => 'Ihr Erstes Haustier Erstellen';

  @override
  String get creatingYourFirstPetDescription =>
      'Tippen Sie auf die Schaltfläche \"Neue Gruppe\" unten, um eine Gruppe zu erstellen, und tippen Sie dann auf \"Haustier Hinzufügen\", um Ihr erstes Haustier zur Gruppe hinzuzufügen.';

  @override
  String get addingPets => 'Haustiere Hinzufügen';

  @override
  String get addingPetsDescription =>
      'Sie können Haustiere direkt zu einer Gruppe hinzufügen oder sie ohne Gruppe hinzufügen. Haustiere können später zwischen Gruppen verschoben werden.';

  @override
  String get petTypes => 'Haustiertypen';

  @override
  String get petTypesDescription =>
      'Wählen Sie zwischen Katze oder Hund beim Hinzufügen eines Haustieres. Sie können auch ein benutzerdefiniertes Symbol für jedes Haustier auswählen.';

  @override
  String get managingPets => 'Haustiere Verwalten';

  @override
  String get viewingPetDetails => 'Haustierdetails Anzeigen';

  @override
  String get viewingPetDetailsDescription =>
      'Tippen Sie auf ein beliebiges Haustier in der Liste, um detaillierte Informationen anzuzeigen, einschließlich Gewichtsaufzeichnungen, Fütterungsverlauf und medizinischen Aufzeichnungen.';

  @override
  String get editingPetInformation => 'Haustierinformationen Bearbeiten';

  @override
  String get editingPetInformationDescription =>
      'Tippen Sie auf die Schaltfläche \"Bearbeiten\" im Info-Tab des Haustieres, um Name, Beschreibung, Symbol oder Gruppenzuweisung zu aktualisieren.';

  @override
  String get deletingPets => 'Haustiere Löschen';

  @override
  String get deletingPetsDescription =>
      'Verwenden Sie die Schaltfläche \"Löschen\" im Info-Tab des Haustieres, um ein Haustier und alle zugehörigen Aufzeichnungen dauerhaft zu entfernen.';

  @override
  String get recordingData => 'Daten Aufzeichnen';

  @override
  String get weightRecords => 'Gewichtsaufzeichnungen';

  @override
  String get weightRecordsDescription =>
      'Verfolgen Sie das Gewicht Ihres Haustieres im Laufe der Zeit. Tippen Sie auf die + Schaltfläche im Gewichts-Tab, um einen neuen Eintrag hinzuzufügen.';

  @override
  String get feedingRecords => 'Fütterungsaufzeichnungen';

  @override
  String get feedingRecordsDescription =>
      'Zeichnen Sie Fütterungszeiten, Futtersorten und Mengen auf. Sie können bis zu 5 Einträge pro Tag pro Haustier hinzufügen.';

  @override
  String get medicalRecords => 'Medizinische Aufzeichnungen';

  @override
  String get medicalRecordsDescription =>
      'Behalten Sie Tierarztbesuche, Medikamente, Impfungen und andere medizinische Informationen im Auge.';

  @override
  String get groupsAndOrganization => 'Gruppen & Organisation';

  @override
  String get creatingGroups => 'Gruppen Erstellen';

  @override
  String get creatingGroupsDescription =>
      'Erstellen Sie Gruppen, um Ihre Haustiere zu organisieren. Tippen Sie auf \"Neue Gruppe\", um eine Gruppe zu erstellen, und fügen Sie dann Haustiere hinzu.';

  @override
  String get groupFeedingDescription =>
      'Verwenden Sie die Gruppenfütterungsfunktion, um die gleiche Fütterung für alle Haustiere in einer Gruppe auf einmal aufzuzeichnen.';

  @override
  String get tagsDescription =>
      'Fügen Sie Tags zu Haustieren hinzu, um sie einfach zu filtern. Tippen Sie auf \"Hinzufügen\" im Tags-Bereich, um benutzerdefinierte Tags zu erstellen.';

  @override
  String get dataManagement => 'Datenverwaltung';

  @override
  String get exportingData => 'Daten Exportieren';

  @override
  String get exportingDataDescription =>
      'Exportieren Sie Ihre Daten zum Teilen oder Sichern. Gehen Sie zu Einstellungen und tippen Sie auf \"Daten Exportieren\".';

  @override
  String get importingData => 'Daten Importieren';

  @override
  String get importingDataDescription =>
      'Importieren Sie zuvor exportierte Daten, um Ihre Haustiere und Aufzeichnungen wiederherzustellen.';

  @override
  String get foodTypes => 'Futtersorten';

  @override
  String get managingFoodTypes => 'Futtersorten Verwalten';

  @override
  String get managingFoodTypesDescription =>
      'Gehen Sie zum Menü (drei Punkte) in der oberen rechten Ecke und wählen Sie \"Futtersorten Verwalten\", um Futtersorten hinzuzufügen, zu bearbeiten oder zu entfernen.';

  @override
  String get usingFoodTypes => 'Futtersorten Verwenden';

  @override
  String get usingFoodTypesDescription =>
      'Wählen Sie beim Hinzufügen einer Fütterungsaufzeichnung aus Ihren gespeicherten Futtersorten. Dies hilft, die Konsistenz bei der Verfolgung zu gewährleisten.';

  @override
  String get localStorage => 'Lokaler Speicher';

  @override
  String get localStorageDescription =>
      'Alle Ihre Daten werden lokal auf Ihrem Gerät gespeichert. Ihre Haustierinformationen bleiben privat und sind offline zugänglich.';

  @override
  String get customization => 'Anpassung';

  @override
  String get themeColors => 'Themenfarben';

  @override
  String get themeColorsDescription =>
      'Ändern Sie die Themenfarbe der App, indem Sie auf das Palettensymbol in der oberen rechten Ecke tippen. Wählen Sie aus einer Vielzahl von Farben, um Ihre Erfahrung zu personalisieren.';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return 'Dies fügt einen Fütterungsaufzeichnung zu $count Katze(n) hinzu:';
  }

  @override
  String get type => 'Typ';

  @override
  String get types => 'Typen';

  @override
  String get noFoodTypesYet => 'Noch keine Futtersorten';

  @override
  String get foodTypeName => 'Futtersortenname';

  @override
  String get addNewFoodType => 'Neue Futtersorte Hinzufügen';

  @override
  String get addAndManageFoodTypesForFeedingRecords =>
      'Futtersorten für Fütterungsaufzeichnungen hinzufügen und verwalten';
}
