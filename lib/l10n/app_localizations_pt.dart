// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth =>
      'Acompanhe a saúde e atividades do seu animal';

  @override
  String get getStarted => 'Começar';

  @override
  String get myPets => 'Meus Animais';

  @override
  String get noGroupsOrPetsAvailable => 'Nenhum grupo ou animal disponível';

  @override
  String get newGroup => 'Novo Grupo';

  @override
  String get createGroup => 'Criar Grupo';

  @override
  String get filterByTags => 'Filtrar por tags:';

  @override
  String get clear => 'Limpar';

  @override
  String get ungroupedPets => 'Animais Não Agrupados';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count animais',
      one: '1 animal',
      zero: '0 animais',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => 'Nenhum animal neste grupo';

  @override
  String get addPet => 'Adicionar Animal';

  @override
  String get expand => 'Expandir';

  @override
  String get collapse => 'Recolher';

  @override
  String get feedGroup => 'Alimentar Grupo';

  @override
  String get editGroup => 'Editar Grupo';

  @override
  String get deleteGroup => 'Excluir Grupo';

  @override
  String get deleteGroupTitle => 'Excluir Grupo';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return 'Tem certeza de que deseja excluir \"$groupName\"?';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return 'Tem certeza de que deseja excluir \"$groupName\"?\n\nIsso removerá $count gato(s) deste grupo.';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get manageFoodTypes => 'Gerenciar Tipos de Comida';

  @override
  String get importData => 'Importar Dados';

  @override
  String get exportData => 'Exportar Dados';

  @override
  String get dataImportedSuccessfully => 'Dados importados com sucesso!';

  @override
  String get addNewPet => 'Adicionar Novo Animal';

  @override
  String get createANewPetProfile => 'Criar um novo perfil de animal';

  @override
  String get petType => 'Tipo de Animal';

  @override
  String get cat => 'Gato';

  @override
  String get dog => 'Cão';

  @override
  String get name => 'Nome';

  @override
  String get enterPetName => 'Digite o nome do animal';

  @override
  String get pleaseEnterACatName => 'Por favor, digite um nome de animal';

  @override
  String get descriptionOptional => 'Descrição (opcional)';

  @override
  String get tellUsAboutYourPet => 'Conte-nos sobre seu animal...';

  @override
  String get selectIcon => 'Selecionar Ícone';

  @override
  String get editGroupTitle => 'Editar Grupo';

  @override
  String get createGroupTitle => 'Criar Grupo';

  @override
  String get updateGroupInformation => 'Atualizar informações do grupo';

  @override
  String get organizeYourPetsIntoGroups => 'Organize seus animais em grupos';

  @override
  String get enterGroupName => 'Digite o nome do grupo';

  @override
  String get pleaseEnterAGroupName => 'Por favor, digite um nome de grupo';

  @override
  String get describeThisGroup => 'Descreva este grupo...';

  @override
  String get saveChanges => 'Salvar Alterações';

  @override
  String get deletePet => 'Excluir Animal';

  @override
  String deletePetConfirm(String petName) {
    return 'Tem certeza de que deseja excluir \"$petName\"?\n\nIsso excluirá permanentemente:\n- O perfil do animal\n- Todos os registros de peso\n- Todos os registros de alimentação\n\nEsta ação não pode ser desfeita.';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName foi excluído';
  }

  @override
  String get petNotFound => 'Animal não encontrado';

  @override
  String get tags => 'Tags';

  @override
  String get add => 'Adicionar';

  @override
  String get noTagsYet => 'Ainda não há tags';

  @override
  String get latestWeight => 'Último Peso';

  @override
  String get noWeightRecordsYet => 'Ainda não há registros de peso';

  @override
  String get edit => 'Editar';

  @override
  String get addTag => 'Adicionar Tag';

  @override
  String get tagName => 'Nome da tag';

  @override
  String get enterTagName => 'Digite o nome da tag';

  @override
  String get noFeedingRecordsYet => 'Ainda não há registros de alimentação';

  @override
  String get tapTheButtonToAddARecord =>
      'Toque no botão + para adicionar um registro';

  @override
  String get addFeeding => 'Adicionar Alimentação';

  @override
  String get addWeight => 'Adicionar Peso';

  @override
  String get addRecord => 'Adicionar Registro';

  @override
  String get noMedicalRecordsYet => 'Ainda não há registros médicos';

  @override
  String get catNotFound => 'Gato não encontrado';

  @override
  String get info => 'Info';

  @override
  String get medical => 'Médico';

  @override
  String get weight => 'Peso';

  @override
  String get feeding => 'Alimentação';

  @override
  String get addFeedingRecord => 'Adicionar Registro de Alimentação';

  @override
  String get editFeedingRecord => 'Editar Registro de Alimentação';

  @override
  String get recordYourPetsFeeding => 'Registrar a alimentação do seu animal';

  @override
  String get updateFeedingInformation => 'Atualizar informações de alimentação';

  @override
  String get foodType => 'Tipo de Comida';

  @override
  String get selectFoodType => 'Selecionar tipo de comida';

  @override
  String get pleaseSelectAFoodType => 'Por favor, selecione um tipo de comida';

  @override
  String get amount => 'Quantidade';

  @override
  String get enterAmount => 'Digite a quantidade';

  @override
  String get pleaseEnterAValidAmount =>
      'Por favor, digite uma quantidade válida (0.5-1000)';

  @override
  String get date => 'Data';

  @override
  String get selectDate => 'Selecionar data';

  @override
  String get notes => 'Notas';

  @override
  String get enterNotes => 'Digite notas (opcional)';

  @override
  String get addWeightRecord => 'Adicionar Registro de Peso';

  @override
  String get editWeightRecord => 'Editar Registro de Peso';

  @override
  String get recordYourCatsWeight => 'Registrar o peso do seu gato';

  @override
  String get updateWeightInformation => 'Atualizar informações de peso';

  @override
  String get weightKg => 'Peso (kg)';

  @override
  String get enterWeight => 'Digite o peso';

  @override
  String get pleaseEnterAValidWeight => 'Por favor, digite um peso válido';

  @override
  String get addMedicalRecord => 'Adicionar Registro Médico';

  @override
  String get editMedicalRecord => 'Editar Registro Médico';

  @override
  String get recordMedicalInformation => 'Registrar informações médicas';

  @override
  String get updateMedicalInformation => 'Atualizar informações médicas';

  @override
  String get title => 'Título';

  @override
  String get enterTitle => 'Digite o título';

  @override
  String get pleaseEnterATitle => 'Por favor, digite um título';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType adicionado';
  }

  @override
  String get deleteFoodType => 'Excluir Tipo de Comida';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return 'Tem certeza de que deseja excluir \"$foodType\"?\n\nIsso o removerá de todos os registros de alimentação.';
  }

  @override
  String get editFoodType => 'Editar Tipo de Comida';

  @override
  String get enterFoodTypeName => 'Digite o nome do tipo de comida';

  @override
  String get pleaseEnterAFoodTypeName =>
      'Por favor, digite um nome de tipo de comida';

  @override
  String get saveToAllCats => 'Salvar para Todos os Gatos';

  @override
  String addedToAllCats(int count) {
    return 'Adicionado a todos os $count gato(s)';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Tem certeza de que deseja excluir \"$groupName\"?\n\nIsso removerá $count animal(is) deste grupo.';
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
    return 'Adicionado a $count gato(s). $failedCount gato(s) já têm 5 registros para este dia.';
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
