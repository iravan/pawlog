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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Weet u zeker dat u \"$groupName\" wilt verwijderen?\n\nDit verwijdert $count huisdier(en) uit deze groep.';
  }

  @override
  String get editPetInformation => 'Huisdierinformatie Bewerken';

  @override
  String get updateYourPetsDetails => 'Update de details van uw huisdier';

  @override
  String get groupOptional => 'Groep (optioneel)';

  @override
  String get selectAGroup => 'Selecteer een groep';

  @override
  String get noGroup => 'Geen Groep';

  @override
  String get description => 'Beschrijving';

  @override
  String get group => 'Groep';

  @override
  String get catNotFound => 'Kat niet gevonden';

  @override
  String get help => 'Hulp';

  @override
  String get changeThemeColor => 'Themakleur wijzigen';

  @override
  String get themeColor => 'Themakleur';

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
  String addedToCats(int successCount, int failedCount) {
    return 'Toegevoegd aan $successCount kat(ten). $failedCount kat(ten) hebben al 5 records voor deze dag.';
  }

  @override
  String addedToAllCats(int count) {
    return 'Toegevoegd aan alle $count kat(ten) succesvol';
  }

  @override
  String get groupFeeding => 'Groepsvoeding';

  @override
  String get recordFeedingForAllPetsInGroup =>
      'Registreer voeding voor alle huisdieren in deze groep';

  @override
  String get gettingStarted => 'Aan de Slag';

  @override
  String get creatingYourFirstPet => 'Uw Eerste Huisdier Maken';

  @override
  String get creatingYourFirstPetDescription =>
      'Tik op de knop \"Nieuwe Groep\" onderaan om een groep te maken, tik dan op \"Huisdier Toevoegen\" om uw eerste huisdier aan de groep toe te voegen.';

  @override
  String get addingPets => 'Huisdieren Toevoegen';

  @override
  String get addingPetsDescription =>
      'U kunt huisdieren direct aan een groep toevoegen of ze zonder groep toevoegen. Huisdieren kunnen later tussen groepen worden verplaatst.';

  @override
  String get petTypes => 'Huisdiersoorten';

  @override
  String get petTypesDescription =>
      'Kies tussen Kat of Hond bij het toevoegen van een huisdier. U kunt ook een aangepast pictogram voor elk huisdier selecteren.';

  @override
  String get managingPets => 'Huisdieren Beheren';

  @override
  String get viewingPetDetails => 'Huisdierdetails Bekijken';

  @override
  String get viewingPetDetailsDescription =>
      'Tik op een huisdier in de lijst om gedetailleerde informatie te bekijken, inclusief gewichtsrecords, voedingsgeschiedenis en medische dossiers.';

  @override
  String get editingPetInformation => 'Huisdierinformatie Bewerken';

  @override
  String get editingPetInformationDescription =>
      'Tik op de knop \"Bewerken\" in het infotabblad van het huisdier om naam, beschrijving, pictogram of groepstoewijzing bij te werken.';

  @override
  String get deletingPets => 'Huisdieren Verwijderen';

  @override
  String get deletingPetsDescription =>
      'Gebruik de knop \"Verwijderen\" in het infotabblad van het huisdier om permanent een huisdier en alle bijbehorende records te verwijderen.';

  @override
  String get recordingData => 'Gegevens Registreren';

  @override
  String get weightRecords => 'Gewichtsrecords';

  @override
  String get weightRecordsDescription =>
      'Volg het gewicht van uw huisdier in de loop van de tijd. Tik op de + knop in het Gewicht-tabblad om een nieuw record toe te voegen.';

  @override
  String get feedingRecords => 'Voedingsrecords';

  @override
  String get feedingRecordsDescription =>
      'Registreer voedertijden, voedselsoorten en hoeveelheden. U kunt maximaal 5 records per dag per huisdier toevoegen.';

  @override
  String get medicalRecords => 'Medische Dossiers';

  @override
  String get medicalRecordsDescription =>
      'Houd bezoeken aan de dierenarts, medicijnen, vaccinaties en andere medische informatie bij.';

  @override
  String get groupsAndOrganization => 'Groepen en Organisatie';

  @override
  String get creatingGroups => 'Groepen Maken';

  @override
  String get creatingGroupsDescription =>
      'Maak groepen om uw huisdieren te organiseren. Tik op \"Nieuwe Groep\" om een groep te maken, voeg dan huisdieren toe.';

  @override
  String get groupFeedingDescription =>
      'Gebruik de groepsvoedingsfunctie om dezelfde voeding voor alle huisdieren in een groep tegelijk te registreren.';

  @override
  String get tagsDescription =>
      'Voeg tags toe aan uw huisdieren voor eenvoudig filteren. Tags helpen u huisdieren snel te organiseren en te vinden met behulp van de filterbalk bovenaan.';

  @override
  String get dataManagement => 'Gegevensbeheer';

  @override
  String get exportingData => 'Gegevens Exporteren';

  @override
  String get exportingDataDescription =>
      'Exporteer uw gegevens om te delen of een back-up te maken. Ga naar Instellingen en tik op \"Gegevens Exporteren\".';

  @override
  String get importingData => 'Gegevens Importeren';

  @override
  String get importingDataDescription =>
      'Importeer eerder geëxporteerde gegevens om uw huisdieren en records te herstellen.';

  @override
  String get foodTypes => 'Voedselsoorten';

  @override
  String get managingFoodTypes => 'Voedselsoorten Beheren';

  @override
  String get managingFoodTypesDescription =>
      'Ga naar het menu (drie punten) in de rechterbovenhoek en selecteer \"Voedselsoorten Beheren\" om voedselsoorten toe te voegen, te bewerken of te verwijderen.';

  @override
  String get usingFoodTypes => 'Voedselsoorten Gebruiken';

  @override
  String get usingFoodTypesDescription =>
      'Selecteer bij het toevoegen van een voedingsrecord uit uw opgeslagen voedselsoorten. Dit helpt de consistentie bij het volgen te behouden.';

  @override
  String get localStorage => 'Lokale Opslag';

  @override
  String get localStorageDescription =>
      'Al uw gegevens worden lokaal op uw apparaat opgeslagen. Uw huisdierinformatie blijft privé en is offline toegankelijk.';

  @override
  String get customization => 'Aanpassing';

  @override
  String get themeColors => 'Themakleuren';

  @override
  String get themeColorsDescription =>
      'Wijzig de themakleur van de app door op het paletpictogram in de rechterbovenhoek te tikken. Kies uit een verscheidenheid aan kleuren om uw ervaring te personaliseren.';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return 'Dit voegt een voedingsrecord toe aan $count kat(ten):';
  }

  @override
  String get type => 'type';

  @override
  String get types => 'typen';

  @override
  String get noFoodTypesYet => 'Nog geen voedselsoorten';

  @override
  String get foodTypeName => 'Naam Voedselsoort';

  @override
  String get addNewFoodType => 'Nieuwe Voedselsoort Toevoegen';

  @override
  String get addAndManageFoodTypesForFeedingRecords =>
      'Voedselsoorten voor voedingsrecords toevoegen en beheren';

  @override
  String get defaultGroupIndoorPets => 'Binnenhuisdieren';

  @override
  String get defaultGroupIndoorPetsDescription =>
      'Huisdieren die binnen blijven';

  @override
  String get defaultGroupOutdoorPets => 'Buitendieren';

  @override
  String get defaultGroupOutdoorPetsDescription =>
      'Huisdieren die naar buiten gaan';

  @override
  String get defaultGroupYoungPets => 'Jonge Huisdieren';

  @override
  String get defaultGroupYoungPetsDescription =>
      'Jonge huisdieren onder 1 jaar';

  @override
  String get defaultPetWhiskersName => 'Snorharen';

  @override
  String get defaultPetWhiskersDescription =>
      'Een speelse oranje tabby die graag verkent';

  @override
  String get defaultPetLunaName => 'Luna';

  @override
  String get defaultPetLunaDescription =>
      'Een sierlijke zwarte kat met groene ogen';

  @override
  String get defaultPetMaxName => 'Max';

  @override
  String get defaultPetMaxDescription => 'Een vriendelijke golden retriever';

  @override
  String get defaultFoodTypeWetFood => 'Natvoer';

  @override
  String get defaultFoodTypeDryFood => 'Droogvoer';

  @override
  String get today => 'Vandaag';

  @override
  String get yesterday => 'Gisteren';
}
