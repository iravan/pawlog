// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth =>
      'Rastrea la salud y actividades de tu mascota';

  @override
  String get getStarted => 'Comenzar';

  @override
  String get myPets => 'Mis Mascotas';

  @override
  String get noGroupsOrPetsAvailable => 'No hay grupos o mascotas disponibles';

  @override
  String get newGroup => 'Nuevo Grupo';

  @override
  String get createGroup => 'Crear Grupo';

  @override
  String get filterByTags => 'Filtrar por etiquetas:';

  @override
  String get clear => 'Limpiar';

  @override
  String get ungroupedPets => 'Mascotas Sin Grupo';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mascotas',
      one: '1 mascota',
      zero: '0 mascotas',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => 'No hay mascotas en este grupo';

  @override
  String get addPet => 'Agregar Mascota';

  @override
  String get expand => 'Expandir';

  @override
  String get collapse => 'Contraer';

  @override
  String get feedGroup => 'Alimentar Grupo';

  @override
  String get editGroup => 'Editar Grupo';

  @override
  String get deleteGroup => 'Eliminar Grupo';

  @override
  String get deleteGroupTitle => 'Eliminar Grupo';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return '¿Estás seguro de que deseas eliminar \"$groupName\"?';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return '¿Estás seguro de que deseas eliminar \"$groupName\"?\n\nEsto eliminará $count gato(s) de este grupo.';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get manageFoodTypes => 'Gestionar Tipos de Comida';

  @override
  String get importData => 'Importar Datos';

  @override
  String get exportData => 'Exportar Datos';

  @override
  String get dataImportedSuccessfully => '¡Datos importados exitosamente!';

  @override
  String get addNewPet => 'Agregar Nueva Mascota';

  @override
  String get createANewPetProfile => 'Crear un nuevo perfil de mascota';

  @override
  String get petType => 'Tipo de Mascota';

  @override
  String get cat => 'Gato';

  @override
  String get dog => 'Perro';

  @override
  String get name => 'Nombre';

  @override
  String get enterPetName => 'Ingresa el nombre de la mascota';

  @override
  String get pleaseEnterACatName => 'Por favor ingresa un nombre de mascota';

  @override
  String get descriptionOptional => 'Descripción (opcional)';

  @override
  String get tellUsAboutYourPet => 'Cuéntanos sobre tu mascota...';

  @override
  String get selectIcon => 'Seleccionar Icono';

  @override
  String get editGroupTitle => 'Editar Grupo';

  @override
  String get createGroupTitle => 'Crear Grupo';

  @override
  String get updateGroupInformation => 'Actualizar información del grupo';

  @override
  String get organizeYourPetsIntoGroups => 'Organiza tus mascotas en grupos';

  @override
  String get enterGroupName => 'Ingresa el nombre del grupo';

  @override
  String get pleaseEnterAGroupName => 'Por favor ingresa un nombre de grupo';

  @override
  String get describeThisGroup => 'Describe este grupo...';

  @override
  String get saveChanges => 'Guardar Cambios';

  @override
  String get deletePet => 'Eliminar Mascota';

  @override
  String deletePetConfirm(String petName) {
    return '¿Estás seguro de que deseas eliminar \"$petName\"?\n\nEsto eliminará permanentemente:\n- El perfil de la mascota\n- Todos los registros de peso\n- Todos los registros de alimentación\n\nEsta acción no se puede deshacer.';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName ha sido eliminado';
  }

  @override
  String get petNotFound => 'Mascota no encontrada';

  @override
  String get tags => 'Etiquetas';

  @override
  String get add => 'Agregar';

  @override
  String get noTagsYet => 'Aún no hay etiquetas';

  @override
  String get latestWeight => 'Último Peso';

  @override
  String get noWeightRecordsYet => 'Aún no hay registros de peso';

  @override
  String get edit => 'Editar';

  @override
  String get addTag => 'Agregar Etiqueta';

  @override
  String get tagName => 'Nombre de etiqueta';

  @override
  String get enterTagName => 'Ingresa el nombre de la etiqueta';

  @override
  String get noFeedingRecordsYet => 'Aún no hay registros de alimentación';

  @override
  String get tapTheButtonToAddARecord =>
      'Toca el botón + para agregar un registro';

  @override
  String get addFeeding => 'Agregar Alimentación';

  @override
  String get addWeight => 'Agregar Peso';

  @override
  String get addRecord => 'Agregar Registro';

  @override
  String get noMedicalRecordsYet => 'Aún no hay registros médicos';

  @override
  String get catNotFound => 'Gato no encontrado';

  @override
  String get info => 'Info';

  @override
  String get medical => 'Médico';

  @override
  String get weight => 'Peso';

  @override
  String get feeding => 'Alimentación';

  @override
  String get addFeedingRecord => 'Agregar Registro de Alimentación';

  @override
  String get editFeedingRecord => 'Editar Registro de Alimentación';

  @override
  String get recordYourPetsFeeding => 'Registrar la alimentación de tu mascota';

  @override
  String get updateFeedingInformation =>
      'Actualizar información de alimentación';

  @override
  String get foodType => 'Tipo de Comida';

  @override
  String get selectFoodType => 'Seleccionar tipo de comida';

  @override
  String get pleaseSelectAFoodType => 'Por favor selecciona un tipo de comida';

  @override
  String get amount => 'Cantidad';

  @override
  String get enterAmount => 'Ingresa la cantidad';

  @override
  String get pleaseEnterAValidAmount =>
      'Por favor ingresa una cantidad válida (0.5-1000)';

  @override
  String get date => 'Fecha';

  @override
  String get selectDate => 'Seleccionar fecha';

  @override
  String get notes => 'Notas';

  @override
  String get enterNotes => 'Ingresa notas (opcional)';

  @override
  String get addWeightRecord => 'Agregar Registro de Peso';

  @override
  String get editWeightRecord => 'Editar Registro de Peso';

  @override
  String get recordYourCatsWeight => 'Registrar el peso de tu gato';

  @override
  String get updateWeightInformation => 'Actualizar información de peso';

  @override
  String get weightKg => 'Peso (kg)';

  @override
  String get enterWeight => 'Ingresa el peso';

  @override
  String get pleaseEnterAValidWeight => 'Por favor ingresa un peso válido';

  @override
  String get addMedicalRecord => 'Agregar Registro Médico';

  @override
  String get editMedicalRecord => 'Editar Registro Médico';

  @override
  String get recordMedicalInformation => 'Registrar información médica';

  @override
  String get updateMedicalInformation => 'Actualizar información médica';

  @override
  String get title => 'Título';

  @override
  String get enterTitle => 'Ingresa el título';

  @override
  String get pleaseEnterATitle => 'Por favor ingresa un título';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType agregado';
  }

  @override
  String get deleteFoodType => 'Eliminar Tipo de Comida';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return '¿Estás seguro de que deseas eliminar \"$foodType\"?\n\nEsto lo eliminará de todos los registros de alimentación.';
  }

  @override
  String get editFoodType => 'Editar Tipo de Comida';

  @override
  String get enterFoodTypeName => 'Ingresa el nombre del tipo de comida';

  @override
  String get pleaseEnterAFoodTypeName =>
      'Por favor ingresa un nombre de tipo de comida';

  @override
  String get saveToAllCats => 'Guardar para Todos los Gatos';

  @override
  String addedToAllCats(int count) {
    return 'Agregado a todos los $count gato(s)';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '¿Estás seguro de que deseas eliminar \"$groupName\"?\n\nEsto eliminará $count mascota(s) de este grupo.';
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
    return 'Agregado a $count gato(s). $failedCount gato(s) ya tienen 5 registros para este día.';
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
