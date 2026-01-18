// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth =>
      'Theo dõi sức khỏe và hoạt động của thú cưng';

  @override
  String get getStarted => 'Bắt Đầu';

  @override
  String get myPets => 'Thú Cưng Của Tôi';

  @override
  String get noGroupsOrPetsAvailable => 'Không có nhóm hoặc thú cưng nào';

  @override
  String get newGroup => 'Nhóm Mới';

  @override
  String get createGroup => 'Tạo Nhóm';

  @override
  String get filterByTags => 'Lọc theo thẻ:';

  @override
  String get clear => 'Xóa';

  @override
  String get ungroupedPets => 'Thú Cưng Chưa Nhóm';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count con',
      one: '1 con',
      zero: '0 con',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => 'Không có thú cưng trong nhóm này';

  @override
  String get addPet => 'Thêm Thú Cưng';

  @override
  String get expand => 'Mở rộng';

  @override
  String get collapse => 'Thu gọn';

  @override
  String get feedGroup => 'Cho Nhóm Ăn';

  @override
  String get editGroup => 'Chỉnh Sửa Nhóm';

  @override
  String get deleteGroup => 'Xóa Nhóm';

  @override
  String get deleteGroupTitle => 'Xóa Nhóm';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return 'Bạn có chắc chắn muốn xóa \"$groupName\"?';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return 'Bạn có chắc chắn muốn xóa \"$groupName\"?\n\nĐiều này sẽ xóa $count con mèo khỏi nhóm này.';
  }

  @override
  String get cancel => 'Hủy';

  @override
  String get delete => 'Xóa';

  @override
  String get manageFoodTypes => 'Quản Lý Loại Thức Ăn';

  @override
  String get importData => 'Nhập Dữ Liệu';

  @override
  String get exportData => 'Xuất Dữ Liệu';

  @override
  String get dataImportedSuccessfully => 'Nhập dữ liệu thành công!';

  @override
  String get addNewPet => 'Thêm Thú Cưng Mới';

  @override
  String get createANewPetProfile => 'Tạo hồ sơ thú cưng mới';

  @override
  String get petType => 'Loại Thú Cưng';

  @override
  String get cat => 'Mèo';

  @override
  String get dog => 'Chó';

  @override
  String get name => 'Tên';

  @override
  String get enterPetName => 'Nhập tên thú cưng';

  @override
  String get pleaseEnterACatName => 'Vui lòng nhập tên thú cưng';

  @override
  String get descriptionOptional => 'Mô tả (tùy chọn)';

  @override
  String get tellUsAboutYourPet => 'Cho chúng tôi biết về thú cưng của bạn...';

  @override
  String get selectIcon => 'Chọn Biểu Tượng';

  @override
  String get editGroupTitle => 'Chỉnh Sửa Nhóm';

  @override
  String get createGroupTitle => 'Tạo Nhóm';

  @override
  String get updateGroupInformation => 'Cập nhật thông tin nhóm';

  @override
  String get organizeYourPetsIntoGroups =>
      'Tổ chức thú cưng của bạn thành nhóm';

  @override
  String get enterGroupName => 'Nhập tên nhóm';

  @override
  String get pleaseEnterAGroupName => 'Vui lòng nhập tên nhóm';

  @override
  String get describeThisGroup => 'Mô tả nhóm này...';

  @override
  String get saveChanges => 'Lưu Thay Đổi';

  @override
  String get deletePet => 'Xóa Thú Cưng';

  @override
  String deletePetConfirm(String petName) {
    return 'Bạn có chắc chắn muốn xóa \"$petName\"?\n\nĐiều này sẽ xóa vĩnh viễn:\n- Hồ sơ thú cưng\n- Tất cả bản ghi cân nặng\n- Tất cả bản ghi cho ăn\n\nHành động này không thể hoàn tác.';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName đã được xóa';
  }

  @override
  String get petNotFound => 'Không tìm thấy thú cưng';

  @override
  String get tags => 'Thẻ';

  @override
  String get add => 'Thêm';

  @override
  String get noTagsYet => 'Chưa có thẻ nào';

  @override
  String get latestWeight => 'Cân Nặng Mới Nhất';

  @override
  String get noWeightRecordsYet => 'Chưa có bản ghi cân nặng';

  @override
  String get edit => 'Chỉnh Sửa';

  @override
  String get addTag => 'Thêm Thẻ';

  @override
  String get tagName => 'Tên thẻ';

  @override
  String get enterTagName => 'Nhập tên thẻ';

  @override
  String get noFeedingRecordsYet => 'Chưa có bản ghi cho ăn';

  @override
  String get tapTheButtonToAddARecord => 'Nhấn nút + để thêm bản ghi';

  @override
  String get addFeeding => 'Thêm Cho Ăn';

  @override
  String get addWeight => 'Thêm Cân Nặng';

  @override
  String get addRecord => 'Thêm Bản Ghi';

  @override
  String get noMedicalRecordsYet => 'Chưa có bản ghi y tế';

  @override
  String get catNotFound => 'Không tìm thấy mèo';

  @override
  String get info => 'Thông Tin';

  @override
  String get medical => 'Y Tế';

  @override
  String get weight => 'Cân Nặng';

  @override
  String get feeding => 'Cho Ăn';

  @override
  String get addFeedingRecord => 'Thêm Bản Ghi Cho Ăn';

  @override
  String get editFeedingRecord => 'Chỉnh Sửa Bản Ghi Cho Ăn';

  @override
  String get recordYourPetsFeeding => 'Ghi lại việc cho thú cưng ăn';

  @override
  String get updateFeedingInformation => 'Cập nhật thông tin cho ăn';

  @override
  String get foodType => 'Loại Thức Ăn';

  @override
  String get selectFoodType => 'Chọn loại thức ăn';

  @override
  String get pleaseSelectAFoodType => 'Vui lòng chọn loại thức ăn';

  @override
  String get amount => 'Số Lượng';

  @override
  String get enterAmount => 'Nhập số lượng';

  @override
  String get pleaseEnterAValidAmount =>
      'Vui lòng nhập số lượng hợp lệ (0.5-1000)';

  @override
  String get date => 'Ngày';

  @override
  String get selectDate => 'Chọn ngày';

  @override
  String get notes => 'Ghi Chú';

  @override
  String get enterNotes => 'Nhập ghi chú (tùy chọn)';

  @override
  String get addWeightRecord => 'Thêm Bản Ghi Cân Nặng';

  @override
  String get editWeightRecord => 'Chỉnh Sửa Bản Ghi Cân Nặng';

  @override
  String get recordYourCatsWeight => 'Ghi lại cân nặng của mèo';

  @override
  String get updateWeightInformation => 'Cập nhật thông tin cân nặng';

  @override
  String get weightKg => 'Cân Nặng (kg)';

  @override
  String get enterWeight => 'Nhập cân nặng';

  @override
  String get pleaseEnterAValidWeight => 'Vui lòng nhập cân nặng hợp lệ';

  @override
  String get addMedicalRecord => 'Thêm Bản Ghi Y Tế';

  @override
  String get editMedicalRecord => 'Chỉnh Sửa Bản Ghi Y Tế';

  @override
  String get recordMedicalInformation => 'Ghi lại thông tin y tế';

  @override
  String get updateMedicalInformation => 'Cập nhật thông tin y tế';

  @override
  String get title => 'Tiêu Đề';

  @override
  String get enterTitle => 'Nhập tiêu đề';

  @override
  String get pleaseEnterATitle => 'Vui lòng nhập tiêu đề';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType đã được thêm';
  }

  @override
  String get deleteFoodType => 'Xóa Loại Thức Ăn';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return 'Bạn có chắc chắn muốn xóa \"$foodType\"?\n\nĐiều này sẽ xóa nó khỏi tất cả bản ghi cho ăn.';
  }

  @override
  String get editFoodType => 'Chỉnh Sửa Loại Thức Ăn';

  @override
  String get enterFoodTypeName => 'Nhập tên loại thức ăn';

  @override
  String get pleaseEnterAFoodTypeName => 'Vui lòng nhập tên loại thức ăn';

  @override
  String get saveToAllCats => 'Lưu Cho Tất Cả Mèo';

  @override
  String addedToAllCats(int count) {
    return 'Đã thêm vào tất cả $count con mèo';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Bạn có chắc chắn muốn xóa \"$groupName\"?\n\nĐiều này sẽ xóa $count con thú cưng khỏi nhóm này.';
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
    return 'Đã thêm vào $count con mèo. $failedCount con mèo đã có 5 bản ghi cho ngày này.';
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
