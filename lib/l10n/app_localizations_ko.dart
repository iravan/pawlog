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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '\"$groupName\"을(를) 삭제하시겠습니까?\n\n이 그룹에서 $count마리의 반려동물이 제거됩니다.';
  }

  @override
  String get editPetInformation => '반려동물 정보 편집';

  @override
  String get updateYourPetsDetails => '반려동물 세부 정보 업데이트';

  @override
  String get groupOptional => '그룹 (선택사항)';

  @override
  String get selectAGroup => '그룹 선택';

  @override
  String get noGroup => '그룹 없음';

  @override
  String get description => '설명';

  @override
  String get group => '그룹';

  @override
  String get catNotFound => '고양이를 찾을 수 없습니다';

  @override
  String get help => '도움말';

  @override
  String get changeThemeColor => '테마 색상 변경';

  @override
  String get themeColor => '테마 색상';

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
  String addedToCats(int successCount, int failedCount) {
    return '$successCount마리의 고양이에 추가되었습니다. $failedCount마리의 고양이는 이미 오늘 5개의 기록이 있습니다.';
  }

  @override
  String addedToAllCats(int count) {
    return '모든 $count마리의 고양이에 성공적으로 추가되었습니다';
  }

  @override
  String get groupFeeding => '그룹 급여';

  @override
  String get recordFeedingForAllPetsInGroup => '이 그룹의 모든 반려동물에게 급여 기록';

  @override
  String get gettingStarted => '시작하기';

  @override
  String get creatingYourFirstPet => '첫 반려동물 만들기';

  @override
  String get creatingYourFirstPetDescription =>
      '하단의 \"새 그룹\" 버튼을 탭하여 그룹을 만든 다음 \"반려동물 추가\"를 탭하여 첫 반려동물을 그룹에 추가합니다.';

  @override
  String get addingPets => '반려동물 추가';

  @override
  String get addingPetsDescription =>
      '반려동물을 직접 그룹에 추가하거나 그룹 없이 추가할 수 있습니다. 반려동물은 나중에 그룹 간에 이동할 수 있습니다.';

  @override
  String get petTypes => '반려동물 종류';

  @override
  String get petTypesDescription =>
      '반려동물을 추가할 때 고양이 또는 개를 선택합니다. 각 반려동물에 대한 사용자 정의 아이콘도 선택할 수 있습니다.';

  @override
  String get managingPets => '반려동물 관리';

  @override
  String get viewingPetDetails => '반려동물 세부 정보 보기';

  @override
  String get viewingPetDetailsDescription =>
      '목록에서 반려동물을 탭하여 체중 기록, 급여 기록, 의료 기록을 포함한 자세한 정보를 봅니다.';

  @override
  String get editingPetInformation => '반려동물 정보 편집';

  @override
  String get editingPetInformationDescription =>
      '반려동물 정보 탭의 \"편집\" 버튼을 탭하여 이름, 설명, 아이콘 또는 그룹 할당을 업데이트합니다.';

  @override
  String get deletingPets => '반려동물 삭제';

  @override
  String get deletingPetsDescription =>
      '반려동물 정보 탭의 \"삭제\" 버튼을 사용하여 반려동물과 모든 관련 기록을 영구적으로 제거합니다.';

  @override
  String get recordingData => '데이터 기록';

  @override
  String get weightRecords => '체중 기록';

  @override
  String get weightRecordsDescription =>
      '시간에 따라 반려동물의 체중을 추적합니다. 체중 탭의 + 버튼을 탭하여 새 기록을 추가합니다.';

  @override
  String get feedingRecords => '급여 기록';

  @override
  String get feedingRecordsDescription =>
      '급여 시간, 사료 종류 및 양을 기록합니다. 반려동물당 하루에 최대 5개의 기록을 추가할 수 있습니다.';

  @override
  String get medicalRecords => '의료 기록';

  @override
  String get medicalRecordsDescription => '수의사 방문, 약물, 예방접종 및 기타 의료 정보를 추적합니다.';

  @override
  String get groupsAndOrganization => '그룹 및 구성';

  @override
  String get creatingGroups => '그룹 만들기';

  @override
  String get creatingGroupsDescription =>
      '반려동물을 구성하기 위한 그룹을 만듭니다. \"새 그룹\"을 탭하여 그룹을 만든 다음 반려동물을 추가합니다.';

  @override
  String get groupFeedingDescription =>
      '그룹 급여 기능을 사용하여 그룹의 모든 반려동물에게 동일한 급여를 한 번에 기록합니다.';

  @override
  String get tagsDescription =>
      '반려동물에 태그를 추가하여 쉽게 필터링합니다. 태그는 상단의 필터 바를 사용하여 반려동물을 빠르게 구성하고 찾는 데 도움이 됩니다.';

  @override
  String get dataManagement => '데이터 관리';

  @override
  String get exportingData => '데이터 내보내기';

  @override
  String get exportingDataDescription =>
      '데이터를 내보내어 공유하거나 백업합니다. 설정으로 이동하여 \"데이터 내보내기\"를 탭합니다.';

  @override
  String get importingData => '데이터 가져오기';

  @override
  String get importingDataDescription => '이전에 내보낸 데이터를 가져와 반려동물과 기록을 복원합니다.';

  @override
  String get foodTypes => '사료 종류';

  @override
  String get managingFoodTypes => '사료 종류 관리';

  @override
  String get managingFoodTypesDescription =>
      '오른쪽 상단 모서리의 메뉴(세 점)로 이동하여 \"사료 종류 관리\"를 선택하여 사료 종류를 추가, 편집 또는 제거합니다.';

  @override
  String get usingFoodTypes => '사료 종류 사용';

  @override
  String get usingFoodTypesDescription =>
      '급여 기록을 추가할 때 저장된 사료 종류에서 선택합니다. 이렇게 하면 추적의 일관성이 유지됩니다.';

  @override
  String get localStorage => '로컬 저장소';

  @override
  String get localStorageDescription =>
      '모든 데이터는 기기에 로컬로 저장됩니다. 반려동물 정보는 비공개로 유지되며 오프라인에서 액세스할 수 있습니다.';

  @override
  String get customization => '사용자 지정';

  @override
  String get themeColors => '테마 색상';

  @override
  String get themeColorsDescription =>
      '오른쪽 상단 모서리의 팔레트 아이콘을 탭하여 앱의 테마 색상을 변경합니다. 다양한 색상 중에서 선택하여 경험을 개인화합니다.';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return '이것은 $count마리의 고양이에게 급여 기록을 추가합니다:';
  }

  @override
  String get type => '종류';

  @override
  String get types => '종류';

  @override
  String get noFoodTypesYet => '아직 사료 종류가 없습니다';

  @override
  String get foodTypeName => '사료 종류 이름';

  @override
  String get addNewFoodType => '새 사료 종류 추가';

  @override
  String get addAndManageFoodTypesForFeedingRecords =>
      '급여 기록을 위한 사료 종류 추가 및 관리';

  @override
  String get defaultGroupIndoorPets => '실내 반려동물';

  @override
  String get defaultGroupIndoorPetsDescription => '실내에 머무는 반려동물';

  @override
  String get defaultGroupOutdoorPets => '야외 반려동물';

  @override
  String get defaultGroupOutdoorPetsDescription => '밖으로 나가는 반려동물';

  @override
  String get defaultGroupYoungPets => '어린 반려동물';

  @override
  String get defaultGroupYoungPetsDescription => '1세 미만의 어린 반려동물';

  @override
  String get defaultPetWhiskersName => '수염';

  @override
  String get defaultPetWhiskersDescription => '탐험을 좋아하는 장난스러운 주황색 줄무늬 고양이';

  @override
  String get defaultPetLunaName => '루나';

  @override
  String get defaultPetLunaDescription => '초록색 눈을 가진 우아한 검은 고양이';

  @override
  String get defaultPetMaxName => '맥스';

  @override
  String get defaultPetMaxDescription => '친근한 골든 리트리버';

  @override
  String get defaultFoodTypeWetFood => '습식 사료';

  @override
  String get defaultFoodTypeDryFood => '건식 사료';

  @override
  String get today => '오늘';

  @override
  String get yesterday => '어제';
}
