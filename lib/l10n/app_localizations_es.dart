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
      'Por favor ingresa una cantidad válida (0,5-1000)';

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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '¿Estás seguro de que deseas eliminar \"$groupName\"?\n\nEsto eliminará $count mascota(s) de este grupo.';
  }

  @override
  String get editPetInformation => 'Editar Información de la Mascota';

  @override
  String get updateYourPetsDetails => 'Actualizar los detalles de tu mascota';

  @override
  String get groupOptional => 'Grupo (opcional)';

  @override
  String get selectAGroup => 'Seleccionar un grupo';

  @override
  String get noGroup => 'Sin Grupo';

  @override
  String get description => 'Descripción';

  @override
  String get group => 'Grupo';

  @override
  String get catNotFound => 'Gato no encontrado';

  @override
  String get help => 'Ayuda';

  @override
  String get changeThemeColor => 'Cambiar color del tema';

  @override
  String get themeColor => 'Color del Tema';

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
  String addedToCats(int successCount, int failedCount) {
    return 'Agregado a $successCount gato(s). $failedCount gato(s) ya tienen 5 registros para este día.';
  }

  @override
  String addedToAllCats(int count) {
    return 'Agregado a todos los $count gato(s) exitosamente';
  }

  @override
  String get groupFeeding => 'Alimentación en Grupo';

  @override
  String get recordFeedingForAllPetsInGroup =>
      'Registrar alimentación para todas las mascotas de este grupo';

  @override
  String get gettingStarted => 'Primeros Pasos';

  @override
  String get creatingYourFirstPet => 'Crear Tu Primera Mascota';

  @override
  String get creatingYourFirstPetDescription =>
      'Toca el botón \"Nuevo Grupo\" en la parte inferior para crear un grupo, luego toca \"Agregar Mascota\" para agregar tu primera mascota al grupo.';

  @override
  String get addingPets => 'Agregar Mascotas';

  @override
  String get addingPetsDescription =>
      'Puedes agregar mascotas directamente a un grupo o agregarlas sin grupo. Las mascotas se pueden mover entre grupos más tarde.';

  @override
  String get petTypes => 'Tipos de Mascotas';

  @override
  String get petTypesDescription =>
      'Elige entre Gato o Perro al agregar una mascota. También puedes seleccionar un ícono personalizado para cada mascota.';

  @override
  String get managingPets => 'Gestionar Mascotas';

  @override
  String get viewingPetDetails => 'Ver Detalles de la Mascota';

  @override
  String get viewingPetDetailsDescription =>
      'Toca cualquier mascota en la lista para ver información detallada, incluyendo registros de peso, historial de alimentación y registros médicos.';

  @override
  String get editingPetInformation => 'Editar Información de la Mascota';

  @override
  String get editingPetInformationDescription =>
      'Toca el botón \"Editar\" en la pestaña de información de la mascota para actualizar el nombre, descripción, ícono o asignación de grupo.';

  @override
  String get deletingPets => 'Eliminar Mascotas';

  @override
  String get deletingPetsDescription =>
      'Usa el botón \"Eliminar\" en la pestaña de información de la mascota para eliminar permanentemente una mascota y todos los registros asociados.';

  @override
  String get recordingData => 'Registrar Datos';

  @override
  String get weightRecords => 'Registros de Peso';

  @override
  String get weightRecordsDescription =>
      'Rastrea el peso de tu mascota con el tiempo. Toca el botón + en la pestaña de Peso para agregar un nuevo registro.';

  @override
  String get feedingRecords => 'Registros de Alimentación';

  @override
  String get feedingRecordsDescription =>
      'Registra horarios de alimentación, tipos de comida y cantidades. Puedes agregar hasta 5 registros por día por mascota.';

  @override
  String get medicalRecords => 'Registros Médicos';

  @override
  String get medicalRecordsDescription =>
      'Lleva un registro de visitas al veterinario, medicamentos, vacunas y otra información médica.';

  @override
  String get groupsAndOrganization => 'Grupos y Organización';

  @override
  String get creatingGroups => 'Crear Grupos';

  @override
  String get creatingGroupsDescription =>
      'Crea grupos para organizar tus mascotas. Toca \"Nuevo Grupo\" para crear un grupo, luego agrega mascotas a él.';

  @override
  String get groupFeedingDescription =>
      'Usa la función de alimentación en grupo para registrar la misma alimentación para todas las mascotas de un grupo a la vez.';

  @override
  String get tagsDescription =>
      'Agrega etiquetas a las mascotas para filtrar fácilmente. Toca \"Agregar\" en la sección de Etiquetas para crear etiquetas personalizadas.';

  @override
  String get dataManagement => 'Gestión de Datos';

  @override
  String get exportingData => 'Exportar Datos';

  @override
  String get exportingDataDescription =>
      'Exporta tus datos para compartir o hacer respaldo. Ve a Configuración y toca \"Exportar Datos\".';

  @override
  String get importingData => 'Importar Datos';

  @override
  String get importingDataDescription =>
      'Importa datos previamente exportados para restaurar tus mascotas y registros.';

  @override
  String get foodTypes => 'Tipos de Comida';

  @override
  String get managingFoodTypes => 'Gestionar Tipos de Comida';

  @override
  String get managingFoodTypesDescription =>
      'Ve al menú (tres puntos) en la esquina superior derecha y selecciona \"Gestionar Tipos de Comida\" para agregar, editar o eliminar tipos de comida.';

  @override
  String get usingFoodTypes => 'Usar Tipos de Comida';

  @override
  String get usingFoodTypesDescription =>
      'Al agregar un registro de alimentación, selecciona de tus tipos de comida guardados. Esto ayuda a mantener la consistencia en el seguimiento.';

  @override
  String get localStorage => 'Almacenamiento Local';

  @override
  String get localStorageDescription =>
      'Todos tus datos se almacenan localmente en tu dispositivo. Tu información de mascotas permanece privada y es accesible sin conexión.';

  @override
  String get customization => 'Personalización';

  @override
  String get themeColors => 'Colores del Tema';

  @override
  String get themeColorsDescription =>
      'Cambia el color del tema de la aplicación tocando el ícono de paleta en la esquina superior derecha. Elige entre una variedad de colores para personalizar tu experiencia.';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return 'Esto agregará un registro de alimentación a $count gato(s):';
  }

  @override
  String get type => 'tipo';

  @override
  String get types => 'tipos';

  @override
  String get noFoodTypesYet => 'Aún no hay tipos de comida';

  @override
  String get foodTypeName => 'Nombre del Tipo de Comida';

  @override
  String get addNewFoodType => 'Agregar Nuevo Tipo de Comida';

  @override
  String get addAndManageFoodTypesForFeedingRecords =>
      'Agregar y gestionar tipos de comida para registros de alimentación';

  @override
  String get defaultGroupIndoorPets => 'Mascotas de Interior';

  @override
  String get defaultGroupIndoorPetsDescription =>
      'Mascotas que permanecen en el interior';

  @override
  String get defaultGroupOutdoorPets => 'Mascotas de Exterior';

  @override
  String get defaultGroupOutdoorPetsDescription =>
      'Mascotas que salen al exterior';

  @override
  String get defaultGroupYoungPets => 'Mascotas Jóvenes';

  @override
  String get defaultGroupYoungPetsDescription =>
      'Mascotas jóvenes menores de 1 año';

  @override
  String get defaultPetWhiskersName => 'Bigotes';

  @override
  String get defaultPetWhiskersDescription =>
      'Un gato atigrado naranja juguetón al que le encanta explorar';

  @override
  String get defaultPetLunaName => 'Luna';

  @override
  String get defaultPetLunaDescription =>
      'Una elegante gata negra con ojos verdes';

  @override
  String get defaultPetMaxName => 'Max';

  @override
  String get defaultPetMaxDescription => 'Un golden retriever amigable';

  @override
  String get defaultFoodTypeWetFood => 'Comida húmeda';

  @override
  String get defaultFoodTypeDryFood => 'Comida seca';

  @override
  String get today => 'Hoy';

  @override
  String get yesterday => 'Ayer';

  @override
  String get deleteWeightRecord => 'Eliminar Registro de Peso';

  @override
  String deleteWeightRecordConfirm(String weight) {
    return '¿Está seguro de que desea eliminar este registro de peso ($weight kg)?';
  }

  @override
  String get deleteFeedingRecord => 'Eliminar Registro de Alimentación';

  @override
  String deleteFeedingRecordConfirm(String foodType, String amount) {
    return '¿Está seguro de que desea eliminar este registro de alimentación ($foodType • ${amount}g)?';
  }

  @override
  String get deleteMedicalRecord => 'Eliminar Registro Médico';

  @override
  String deleteMedicalRecordConfirm(String title) {
    return '¿Está seguro de que desea eliminar \"$title\"?';
  }
}
