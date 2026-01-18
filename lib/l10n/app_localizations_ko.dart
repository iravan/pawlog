// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth => '반려동물의 건강과 활동을 추적하세요';

  @override
  String get getStarted => '시작하기';

  @override
  String get myPets => '내 반려동물';

  @override
  String get noGroupsOrPetsAvailable => '사용 가능한 그룹 또는 반려동물이 없습니다';

  @override
  String get newGroup => '새 그룹';

  @override
  String get createGroup => '그룹 만들기';

  @override
  String get filterByTags => '태그로 필터링:';

  @override
  String get clear => '지우기';

  @override
  String get ungroupedPets => '그룹화되지 않은 반려동물';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 마리',
      one: '1 마리',
      zero: '0 마리',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => '이 그룹에 반려동물이 없습니다';

  @override
  String get addPet => '반려동물 추가';

  @override
  String get expand => '펼치기';

  @override
  String get collapse => '접기';

  @override
  String get feedGroup => '그룹에 먹이 주기';

  @override
  String get editGroup => '그룹 편집';

  @override
  String get deleteGroup => '그룹 삭제';

  @override
  String get deleteGroupTitle => '그룹 삭제';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return '\"$groupName\"을(를) 삭제하시겠습니까?';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return '\"$groupName\"을(를) 삭제하시겠습니까?\n\n이 그룹에서 $count마리의 고양이가 제거됩니다.';
  }

  @override
  String get cancel => '취소';

  @override
  String get delete => '삭제';

  @override
  String get manageFoodTypes => '사료 종류 관리';

  @override
  String get importData => '데이터 가져오기';

  @override
  String get exportData => '데이터 내보내기';

  @override
  String get dataImportedSuccessfully => '데이터를 성공적으로 가져왔습니다!';

  @override
  String get addNewPet => '새 반려동물 추가';

  @override
  String get createANewPetProfile => '새 반려동물 프로필 만들기';

  @override
  String get petType => '반려동물 종류';

  @override
  String get cat => '고양이';

  @override
  String get dog => '강아지';

  @override
  String get name => '이름';

  @override
  String get enterPetName => '반려동물 이름 입력';

  @override
  String get pleaseEnterACatName => '반려동물 이름을 입력해주세요';

  @override
  String get descriptionOptional => '설명 (선택사항)';

  @override
  String get tellUsAboutYourPet => '반려동물에 대해 알려주세요...';

  @override
  String get selectIcon => '아이콘 선택';

  @override
  String get editGroupTitle => '그룹 편집';

  @override
  String get createGroupTitle => '그룹 만들기';

  @override
  String get updateGroupInformation => '그룹 정보 업데이트';

  @override
  String get organizeYourPetsIntoGroups => '반려동물을 그룹으로 구성';

  @override
  String get enterGroupName => '그룹 이름 입력';

  @override
  String get pleaseEnterAGroupName => '그룹 이름을 입력해주세요';

  @override
  String get describeThisGroup => '이 그룹 설명...';

  @override
  String get saveChanges => '변경사항 저장';

  @override
  String get deletePet => '반려동물 삭제';

  @override
  String deletePetConfirm(String petName) {
    return '\"$petName\"을(를) 삭제하시겠습니까?\n\n다음이 영구적으로 삭제됩니다:\n- 반려동물 프로필\n- 모든 체중 기록\n- 모든 급여 기록\n\n이 작업은 취소할 수 없습니다.';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName이(가) 삭제되었습니다';
  }

  @override
  String get petNotFound => '반려동물을 찾을 수 없습니다';

  @override
  String get tags => '태그';

  @override
  String get add => '추가';

  @override
  String get noTagsYet => '아직 태그가 없습니다';

  @override
  String get latestWeight => '최근 체중';

  @override
  String get noWeightRecordsYet => '아직 체중 기록이 없습니다';

  @override
  String get edit => '편집';

  @override
  String get addTag => '태그 추가';

  @override
  String get tagName => '태그 이름';

  @override
  String get enterTagName => '태그 이름 입력';

  @override
  String get noFeedingRecordsYet => '아직 급여 기록이 없습니다';

  @override
  String get tapTheButtonToAddARecord => '+ 버튼을 탭하여 기록 추가';

  @override
  String get addFeeding => '급여 추가';

  @override
  String get addWeight => '체중 추가';

  @override
  String get addRecord => '기록 추가';

  @override
  String get noMedicalRecordsYet => '아직 의료 기록이 없습니다';

  @override
  String get catNotFound => '고양이를 찾을 수 없습니다';

  @override
  String get info => '정보';

  @override
  String get medical => '의료';

  @override
  String get weight => '체중';

  @override
  String get feeding => '급여';

  @override
  String get addFeedingRecord => '급여 기록 추가';

  @override
  String get editFeedingRecord => '급여 기록 편집';

  @override
  String get recordYourPetsFeeding => '반려동물의 급여 기록';

  @override
  String get updateFeedingInformation => '급여 정보 업데이트';

  @override
  String get foodType => '사료 종류';

  @override
  String get selectFoodType => '사료 종류 선택';

  @override
  String get pleaseSelectAFoodType => '사료 종류를 선택해주세요';

  @override
  String get amount => '양';

  @override
  String get enterAmount => '양 입력';

  @override
  String get pleaseEnterAValidAmount => '유효한 양을 입력해주세요 (0.5-1000)';

  @override
  String get date => '날짜';

  @override
  String get selectDate => '날짜 선택';

  @override
  String get notes => '메모';

  @override
  String get enterNotes => '메모 입력 (선택사항)';

  @override
  String get addWeightRecord => '체중 기록 추가';

  @override
  String get editWeightRecord => '체중 기록 편집';

  @override
  String get recordYourCatsWeight => '고양이의 체중 기록';

  @override
  String get updateWeightInformation => '체중 정보 업데이트';

  @override
  String get weightKg => '체중 (kg)';

  @override
  String get enterWeight => '체중 입력';

  @override
  String get pleaseEnterAValidWeight => '유효한 체중을 입력해주세요';

  @override
  String get addMedicalRecord => '의료 기록 추가';

  @override
  String get editMedicalRecord => '의료 기록 편집';

  @override
  String get recordMedicalInformation => '의료 정보 기록';

  @override
  String get updateMedicalInformation => '의료 정보 업데이트';

  @override
  String get title => '제목';

  @override
  String get enterTitle => '제목 입력';

  @override
  String get pleaseEnterATitle => '제목을 입력해주세요';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType 추가됨';
  }

  @override
  String get deleteFoodType => '사료 종류 삭제';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return '\"$foodType\"을(를) 삭제하시겠습니까?\n\n모든 급여 기록에서 제거됩니다.';
  }

  @override
  String get editFoodType => '사료 종류 편집';

  @override
  String get enterFoodTypeName => '사료 종류 이름 입력';

  @override
  String get pleaseEnterAFoodTypeName => '사료 종류 이름을 입력해주세요';

  @override
  String get saveToAllCats => '모든 고양이에 저장';

  @override
  String addedToAllCats(int count) {
    return '모든 $count마리의 고양이에 추가되었습니다';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '\"$groupName\"을(를) 삭제하시겠습니까?\n\n이 그룹에서 $count마리의 반려동물이 제거됩니다.';
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
    return '$count마리의 고양이에 추가되었습니다. $failedCount마리의 고양이는 이미 오늘 5개의 기록이 있습니다.';
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
