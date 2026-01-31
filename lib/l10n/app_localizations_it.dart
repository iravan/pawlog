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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Sei sicuro di voler eliminare \"$groupName\"?\n\nQuesto rimuoverà $count animale(i) da questo gruppo.';
  }

  @override
  String get editPetInformation => 'Modifica Informazioni Animale';

  @override
  String get updateYourPetsDetails => 'Aggiorna i dettagli del tuo animale';

  @override
  String get groupOptional => 'Gruppo (opzionale)';

  @override
  String get selectAGroup => 'Seleziona un gruppo';

  @override
  String get noGroup => 'Nessun Gruppo';

  @override
  String get description => 'Descrizione';

  @override
  String get group => 'Gruppo';

  @override
  String get catNotFound => 'Gatto non trovato';

  @override
  String get help => 'Aiuto';

  @override
  String get changeThemeColor => 'Cambia colore tema';

  @override
  String get themeColor => 'Colore Tema';

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
  String addedToCats(int successCount, int failedCount) {
    return 'Aggiunto a $successCount gatto(i). $failedCount gatto(i) hanno già 5 registri per questo giorno.';
  }

  @override
  String addedToAllCats(int count) {
    return 'Aggiunto a tutti i $count gatto(i) con successo';
  }

  @override
  String get groupFeeding => 'Alimentazione di Gruppo';

  @override
  String get recordFeedingForAllPetsInGroup =>
      'Registra l\'alimentazione per tutti gli animali di questo gruppo';

  @override
  String get gettingStarted => 'Iniziare';

  @override
  String get creatingYourFirstPet => 'Creare il Tuo Primo Animale';

  @override
  String get creatingYourFirstPetDescription =>
      'Tocca il pulsante \"Nuovo Gruppo\" in basso per creare un gruppo, poi tocca \"Aggiungi Animale\" per aggiungere il tuo primo animale al gruppo.';

  @override
  String get addingPets => 'Aggiungere Animali';

  @override
  String get addingPetsDescription =>
      'Puoi aggiungere animali direttamente a un gruppo o aggiungerli senza gruppo. Gli animali possono essere spostati tra i gruppi in seguito.';

  @override
  String get petTypes => 'Tipi di Animali';

  @override
  String get petTypesDescription =>
      'Scegli tra Gatto o Cane quando aggiungi un animale. Puoi anche selezionare un\'icona personalizzata per ogni animale.';

  @override
  String get managingPets => 'Gestire gli Animali';

  @override
  String get viewingPetDetails => 'Visualizzare Dettagli Animale';

  @override
  String get viewingPetDetailsDescription =>
      'Tocca qualsiasi animale nell\'elenco per visualizzare informazioni dettagliate, inclusi registri di peso, cronologia alimentazione e cartelle cliniche.';

  @override
  String get editingPetInformation => 'Modificare Informazioni Animale';

  @override
  String get editingPetInformationDescription =>
      'Tocca il pulsante \"Modifica\" nella scheda Info dell\'animale per aggiornare nome, descrizione, icona o assegnazione gruppo.';

  @override
  String get deletingPets => 'Eliminare Animali';

  @override
  String get deletingPetsDescription =>
      'Usa il pulsante \"Elimina\" nella scheda Info dell\'animale per rimuovere permanentemente un animale e tutti i registri associati.';

  @override
  String get recordingData => 'Registrare Dati';

  @override
  String get weightRecords => 'Registri di Peso';

  @override
  String get weightRecordsDescription =>
      'Traccia il peso del tuo animale nel tempo. Tocca il pulsante + nella scheda Peso per aggiungere un nuovo registro.';

  @override
  String get feedingRecords => 'Registri di Alimentazione';

  @override
  String get feedingRecordsDescription =>
      'Registra orari di alimentazione, tipi di cibo e quantità. Puoi aggiungere fino a 5 registri al giorno per animale.';

  @override
  String get medicalRecords => 'Cartelle Cliniche';

  @override
  String get medicalRecordsDescription =>
      'Tieni traccia di visite veterinarie, farmaci, vaccinazioni e altre informazioni mediche.';

  @override
  String get groupsAndOrganization => 'Gruppi e Organizzazione';

  @override
  String get creatingGroups => 'Creare Gruppi';

  @override
  String get creatingGroupsDescription =>
      'Crea gruppi per organizzare i tuoi animali. Tocca \"Nuovo Gruppo\" per creare un gruppo, poi aggiungi animali ad esso.';

  @override
  String get groupFeedingDescription =>
      'Usa la funzione di alimentazione di gruppo per registrare la stessa alimentazione per tutti gli animali di un gruppo in una volta.';

  @override
  String get tagsDescription =>
      'Aggiungi tag ai tuoi animali per filtrare facilmente. I tag ti aiutano a organizzare e trovare rapidamente gli animali usando la barra di filtro in alto.';

  @override
  String get dataManagement => 'Gestione Dati';

  @override
  String get exportingData => 'Esportare Dati';

  @override
  String get exportingDataDescription =>
      'Esporta i tuoi dati per condividere o fare backup. Vai a Impostazioni e tocca \"Esporta Dati\".';

  @override
  String get importingData => 'Importare Dati';

  @override
  String get importingDataDescription =>
      'Importa dati precedentemente esportati per ripristinare i tuoi animali e registri.';

  @override
  String get foodTypes => 'Tipi di Cibo';

  @override
  String get managingFoodTypes => 'Gestire i Tipi di Cibo';

  @override
  String get managingFoodTypesDescription =>
      'Vai al menu (tre punti) nell\'angolo in alto a destra e seleziona \"Gestisci Tipi di Cibo\" per aggiungere, modificare o rimuovere tipi di cibo.';

  @override
  String get usingFoodTypes => 'Usare Tipi di Cibo';

  @override
  String get usingFoodTypesDescription =>
      'Quando aggiungi un registro di alimentazione, seleziona dai tuoi tipi di cibo salvati. Questo aiuta a mantenere la coerenza nel tracciamento.';

  @override
  String get localStorage => 'Archiviazione Locale';

  @override
  String get localStorageDescription =>
      'Tutti i tuoi dati sono archiviati localmente sul tuo dispositivo. Le informazioni sul tuo animale rimangono private e sono accessibili offline.';

  @override
  String get customization => 'Personalizzazione';

  @override
  String get themeColors => 'Colori Tema';

  @override
  String get themeColorsDescription =>
      'Cambia il colore del tema dell\'app toccando l\'icona della tavolozza nell\'angolo in alto a destra. Scegli tra una varietà di colori per personalizzare la tua esperienza.';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return 'Questo aggiungerà un registro di alimentazione a $count gatto(i):';
  }

  @override
  String get type => 'tipo';

  @override
  String get types => 'tipi';

  @override
  String get noFoodTypesYet => 'Nessun tipo di cibo ancora';

  @override
  String get foodTypeName => 'Nome Tipo di Cibo';

  @override
  String get addNewFoodType => 'Aggiungi Nuovo Tipo di Cibo';

  @override
  String get addAndManageFoodTypesForFeedingRecords =>
      'Aggiungi e gestisci tipi di cibo per registri di alimentazione';

  @override
  String get defaultGroupIndoorPets => 'Animali Domestici';

  @override
  String get defaultGroupIndoorPetsDescription => 'Animali che stanno in casa';

  @override
  String get defaultGroupOutdoorPets => 'Animali da Esterno';

  @override
  String get defaultGroupOutdoorPetsDescription => 'Animali che escono';

  @override
  String get defaultGroupYoungPets => 'Animali Giovani';

  @override
  String get defaultGroupYoungPetsDescription => 'Animali giovani sotto 1 anno';

  @override
  String get defaultPetWhiskersName => 'Baffi';

  @override
  String get defaultPetWhiskersDescription =>
      'Un gatto tigrato arancione giocherellone che ama esplorare';

  @override
  String get defaultPetLunaName => 'Luna';

  @override
  String get defaultPetLunaDescription =>
      'Un\'elegante gatta nera con occhi verdi';

  @override
  String get defaultPetMaxName => 'Max';

  @override
  String get defaultPetMaxDescription => 'Un golden retriever amichevole';

  @override
  String get defaultFoodTypeWetFood => 'Cibo umido';

  @override
  String get defaultFoodTypeDryFood => 'Cibo secco';

  @override
  String get today => 'Oggi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get deleteWeightRecord => 'Elimina Registro Peso';

  @override
  String deleteWeightRecordConfirm(String weight) {
    return 'Sei sicuro di voler eliminare questo registro di peso ($weight kg)?';
  }

  @override
  String get deleteFeedingRecord => 'Elimina Registro Alimentazione';

  @override
  String deleteFeedingRecordConfirm(String foodType, String amount) {
    return 'Sei sicuro di voler eliminare questo registro di alimentazione ($foodType • ${amount}g)?';
  }

  @override
  String get deleteMedicalRecord => 'Elimina Registro Medico';

  @override
  String deleteMedicalRecordConfirm(String title) {
    return 'Sei sicuro di voler eliminare \"$title\"?';
  }
}
