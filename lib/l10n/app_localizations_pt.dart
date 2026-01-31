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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Tem certeza de que deseja excluir \"$groupName\"?\n\nIsso removerá $count animal(is) deste grupo.';
  }

  @override
  String get editPetInformation => 'Editar Informações do Animal';

  @override
  String get updateYourPetsDetails => 'Atualizar os detalhes do seu animal';

  @override
  String get groupOptional => 'Grupo (opcional)';

  @override
  String get selectAGroup => 'Selecionar um grupo';

  @override
  String get noGroup => 'Sem Grupo';

  @override
  String get description => 'Descrição';

  @override
  String get group => 'Grupo';

  @override
  String get catNotFound => 'Gato não encontrado';

  @override
  String get help => 'Ajuda';

  @override
  String get changeThemeColor => 'Alterar cor do tema';

  @override
  String get themeColor => 'Cor do Tema';

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
  String addedToCats(int successCount, int failedCount) {
    return 'Adicionado a $successCount gato(s). $failedCount gato(s) já têm 5 registros para este dia.';
  }

  @override
  String addedToAllCats(int count) {
    return 'Adicionado a todos os $count gato(s) com sucesso';
  }

  @override
  String get groupFeeding => 'Alimentação em Grupo';

  @override
  String get recordFeedingForAllPetsInGroup =>
      'Registrar alimentação para todos os animais deste grupo';

  @override
  String get gettingStarted => 'Começando';

  @override
  String get creatingYourFirstPet => 'Criar Seu Primeiro Animal';

  @override
  String get creatingYourFirstPetDescription =>
      'Toque no botão \"Novo Grupo\" na parte inferior para criar um grupo, depois toque em \"Adicionar Animal\" para adicionar seu primeiro animal ao grupo.';

  @override
  String get addingPets => 'Adicionar Animais';

  @override
  String get addingPetsDescription =>
      'Você pode adicionar animais diretamente a um grupo ou adicioná-los sem grupo. Os animais podem ser movidos entre grupos mais tarde.';

  @override
  String get petTypes => 'Tipos de Animais';

  @override
  String get petTypesDescription =>
      'Escolha entre Gato ou Cão ao adicionar um animal. Você também pode selecionar um ícone personalizado para cada animal.';

  @override
  String get managingPets => 'Gerenciar Animais';

  @override
  String get viewingPetDetails => 'Visualizar Detalhes do Animal';

  @override
  String get viewingPetDetailsDescription =>
      'Toque em qualquer animal na lista para visualizar informações detalhadas, incluindo registros de peso, histórico de alimentação e registros médicos.';

  @override
  String get editingPetInformation => 'Editar Informações do Animal';

  @override
  String get editingPetInformationDescription =>
      'Toque no botão \"Editar\" na aba de informações do animal para atualizar nome, descrição, ícone ou atribuição de grupo.';

  @override
  String get deletingPets => 'Excluir Animais';

  @override
  String get deletingPetsDescription =>
      'Use o botão \"Excluir\" na aba de informações do animal para remover permanentemente um animal e todos os registros associados.';

  @override
  String get recordingData => 'Registrar Dados';

  @override
  String get weightRecords => 'Registros de Peso';

  @override
  String get weightRecordsDescription =>
      'Acompanhe o peso do seu animal ao longo do tempo. Toque no botão + na aba de Peso para adicionar um novo registro.';

  @override
  String get feedingRecords => 'Registros de Alimentação';

  @override
  String get feedingRecordsDescription =>
      'Registre horários de alimentação, tipos de comida e quantidades. Você pode adicionar até 5 registros por dia por animal.';

  @override
  String get medicalRecords => 'Registros Médicos';

  @override
  String get medicalRecordsDescription =>
      'Mantenha o controle de visitas ao veterinário, medicamentos, vacinações e outras informações médicas.';

  @override
  String get groupsAndOrganization => 'Grupos e Organização';

  @override
  String get creatingGroups => 'Criar Grupos';

  @override
  String get creatingGroupsDescription =>
      'Crie grupos para organizar seus animais. Toque em \"Novo Grupo\" para criar um grupo, depois adicione animais a ele.';

  @override
  String get groupFeedingDescription =>
      'Use a função de alimentação em grupo para registrar a mesma alimentação para todos os animais de um grupo de uma vez.';

  @override
  String get tagsDescription =>
      'Adicione tags aos seus animais para filtrar facilmente. As tags ajudam você a organizar e encontrar animais rapidamente usando a barra de filtro na parte superior.';

  @override
  String get dataManagement => 'Gerenciamento de Dados';

  @override
  String get exportingData => 'Exportar Dados';

  @override
  String get exportingDataDescription =>
      'Exporte seus dados para compartilhar ou fazer backup. Vá para Configurações e toque em \"Exportar Dados\".';

  @override
  String get importingData => 'Importar Dados';

  @override
  String get importingDataDescription =>
      'Importe dados previamente exportados para restaurar seus animais e registros.';

  @override
  String get foodTypes => 'Tipos de Comida';

  @override
  String get managingFoodTypes => 'Gerenciar Tipos de Comida';

  @override
  String get managingFoodTypesDescription =>
      'Vá ao menu (três pontos) no canto superior direito e selecione \"Gerenciar Tipos de Comida\" para adicionar, editar ou remover tipos de comida.';

  @override
  String get usingFoodTypes => 'Usar Tipos de Comida';

  @override
  String get usingFoodTypesDescription =>
      'Ao adicionar um registro de alimentação, selecione dos seus tipos de comida salvos. Isso ajuda a manter a consistência no acompanhamento.';

  @override
  String get localStorage => 'Armazenamento Local';

  @override
  String get localStorageDescription =>
      'Todos os seus dados são armazenados localmente no seu dispositivo. Suas informações sobre animais permanecem privadas e são acessíveis offline.';

  @override
  String get customization => 'Personalização';

  @override
  String get themeColors => 'Cores do Tema';

  @override
  String get themeColorsDescription =>
      'Altere a cor do tema do aplicativo tocando no ícone da paleta no canto superior direito. Escolha entre uma variedade de cores para personalizar sua experiência.';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return 'Isso adicionará um registro de alimentação a $count gato(s):';
  }

  @override
  String get type => 'tipo';

  @override
  String get types => 'tipos';

  @override
  String get noFoodTypesYet => 'Ainda não há tipos de comida';

  @override
  String get foodTypeName => 'Nome do Tipo de Comida';

  @override
  String get addNewFoodType => 'Adicionar Novo Tipo de Comida';

  @override
  String get addAndManageFoodTypesForFeedingRecords =>
      'Adicionar e gerenciar tipos de comida para registros de alimentação';

  @override
  String get defaultGroupIndoorPets => 'Animais de Interior';

  @override
  String get defaultGroupIndoorPetsDescription =>
      'Animais que ficam dentro de casa';

  @override
  String get defaultGroupOutdoorPets => 'Animais de Exterior';

  @override
  String get defaultGroupOutdoorPetsDescription => 'Animais que saem';

  @override
  String get defaultGroupYoungPets => 'Animais Jovens';

  @override
  String get defaultGroupYoungPetsDescription =>
      'Animais jovens com menos de 1 ano';

  @override
  String get defaultPetWhiskersName => 'Bigodes';

  @override
  String get defaultPetWhiskersDescription =>
      'Um gato tigrado laranja brincalhão que adora explorar';

  @override
  String get defaultPetLunaName => 'Luna';

  @override
  String get defaultPetLunaDescription =>
      'Uma gata preta elegante com olhos verdes';

  @override
  String get defaultPetMaxName => 'Max';

  @override
  String get defaultPetMaxDescription => 'Um golden retriever amigável';

  @override
  String get defaultFoodTypeWetFood => 'Comida úmida';

  @override
  String get defaultFoodTypeDryFood => 'Comida seca';

  @override
  String get today => 'Hoje';

  @override
  String get yesterday => 'Ontem';

  @override
  String get deleteWeightRecord => 'Excluir Registro de Peso';

  @override
  String deleteWeightRecordConfirm(String weight) {
    return 'Tem certeza de que deseja excluir este registro de peso ($weight kg)?';
  }

  @override
  String get deleteFeedingRecord => 'Excluir Registro de Alimentação';

  @override
  String deleteFeedingRecordConfirm(String foodType, String amount) {
    return 'Tem certeza de que deseja excluir este registro de alimentação ($foodType • ${amount}g)?';
  }

  @override
  String get deleteMedicalRecord => 'Excluir Registro Médico';

  @override
  String deleteMedicalRecordConfirm(String title) {
    return 'Tem certeza de que deseja excluir \"$title\"?';
  }
}
