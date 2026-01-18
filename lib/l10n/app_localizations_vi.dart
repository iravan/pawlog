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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'Bạn có chắc chắn muốn xóa \"$groupName\"?\n\nĐiều này sẽ xóa $count con thú cưng khỏi nhóm này.';
  }

  @override
  String get editPetInformation => 'Chỉnh Sửa Thông Tin Thú Cưng';

  @override
  String get updateYourPetsDetails => 'Cập nhật chi tiết thú cưng của bạn';

  @override
  String get groupOptional => 'Nhóm (tùy chọn)';

  @override
  String get selectAGroup => 'Chọn một nhóm';

  @override
  String get noGroup => 'Không Có Nhóm';

  @override
  String get description => 'Mô Tả';

  @override
  String get group => 'Nhóm';

  @override
  String get catNotFound => 'Không tìm thấy mèo';

  @override
  String get help => 'Help';

  @override
  String get changeThemeColor => 'Thay đổi màu chủ đề';

  @override
  String get themeColor => 'Màu Chủ Đề';

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
  String addedToCats(int successCount, int failedCount) {
    return 'Đã thêm vào $successCount con mèo. $failedCount con mèo đã có 5 bản ghi cho ngày này.';
  }

  @override
  String addedToAllCats(int count) {
    return 'Đã thêm vào tất cả $count con mèo thành công';
  }

  @override
  String get groupFeeding => 'Cho Ăn Nhóm';

  @override
  String get recordFeedingForAllPetsInGroup =>
      'Ghi lại việc cho ăn cho tất cả thú cưng trong nhóm này';

  @override
  String get gettingStarted => 'Bắt Đầu';

  @override
  String get creatingYourFirstPet => 'Tạo Thú Cưng Đầu Tiên Của Bạn';

  @override
  String get creatingYourFirstPetDescription =>
      'Nhấn nút \"Nhóm Mới\" ở dưới cùng để tạo nhóm, sau đó nhấn \"Thêm Thú Cưng\" để thêm thú cưng đầu tiên của bạn vào nhóm.';

  @override
  String get addingPets => 'Thêm Thú Cưng';

  @override
  String get addingPetsDescription =>
      'Bạn có thể thêm thú cưng trực tiếp vào nhóm hoặc thêm chúng mà không có nhóm. Thú cưng có thể được di chuyển giữa các nhóm sau này.';

  @override
  String get petTypes => 'Loại Thú Cưng';

  @override
  String get petTypesDescription =>
      'Chọn giữa Mèo hoặc Chó khi thêm thú cưng. Bạn cũng có thể chọn biểu tượng tùy chỉnh cho mỗi thú cưng.';

  @override
  String get managingPets => 'Quản Lý Thú Cưng';

  @override
  String get viewingPetDetails => 'Xem Chi Tiết Thú Cưng';

  @override
  String get viewingPetDetailsDescription =>
      'Nhấn vào bất kỳ thú cưng nào trong danh sách để xem thông tin chi tiết, bao gồm hồ sơ cân nặng, lịch sử cho ăn và hồ sơ y tế.';

  @override
  String get editingPetInformation => 'Chỉnh Sửa Thông Tin Thú Cưng';

  @override
  String get editingPetInformationDescription =>
      'Nhấn nút \"Chỉnh Sửa\" trong tab thông tin thú cưng để cập nhật tên, mô tả, biểu tượng hoặc phân công nhóm.';

  @override
  String get deletingPets => 'Xóa Thú Cưng';

  @override
  String get deletingPetsDescription =>
      'Sử dụng nút \"Xóa\" trong tab thông tin thú cưng để xóa vĩnh viễn thú cưng và tất cả các hồ sơ liên quan.';

  @override
  String get recordingData => 'Ghi Dữ Liệu';

  @override
  String get weightRecords => 'Hồ Sơ Cân Nặng';

  @override
  String get weightRecordsDescription =>
      'Theo dõi cân nặng thú cưng của bạn theo thời gian. Nhấn nút + trong tab Cân Nặng để thêm hồ sơ mới.';

  @override
  String get feedingRecords => 'Hồ Sơ Cho Ăn';

  @override
  String get feedingRecordsDescription =>
      'Ghi lại thời gian cho ăn, loại thức ăn và số lượng. Bạn có thể thêm tối đa 5 hồ sơ mỗi ngày cho mỗi thú cưng.';

  @override
  String get medicalRecords => 'Hồ Sơ Y Tế';

  @override
  String get medicalRecordsDescription =>
      'Theo dõi các lần khám thú y, thuốc, tiêm chủng và thông tin y tế khác.';

  @override
  String get groupsAndOrganization => 'Nhóm và Tổ Chức';

  @override
  String get creatingGroups => 'Tạo Nhóm';

  @override
  String get creatingGroupsDescription =>
      'Tạo nhóm để tổ chức thú cưng của bạn. Nhấn \"Nhóm Mới\" để tạo nhóm, sau đó thêm thú cưng vào đó.';

  @override
  String get groupFeedingDescription =>
      'Sử dụng tính năng cho ăn nhóm để ghi lại việc cho ăn giống nhau cho tất cả thú cưng trong nhóm cùng một lúc.';

  @override
  String get tagsDescription =>
      'Thêm thẻ cho thú cưng của bạn để lọc dễ dàng. Thẻ giúp bạn tổ chức và tìm thú cưng nhanh chóng bằng cách sử dụng thanh lọc ở trên cùng.';

  @override
  String get dataManagement => 'Quản Lý Dữ Liệu';

  @override
  String get exportingData => 'Xuất Dữ Liệu';

  @override
  String get exportingDataDescription =>
      'Xuất dữ liệu của bạn để chia sẻ hoặc sao lưu. Đi tới Cài Đặt và nhấn \"Xuất Dữ Liệu\".';

  @override
  String get importingData => 'Nhập Dữ Liệu';

  @override
  String get importingDataDescription =>
      'Nhập dữ liệu đã xuất trước đó để khôi phục thú cưng và hồ sơ của bạn.';

  @override
  String get foodTypes => 'Loại Thức Ăn';

  @override
  String get managingFoodTypes => 'Managing Food Types';

  @override
  String get managingFoodTypesDescription =>
      'Đi tới menu (ba chấm) ở góc trên bên phải và chọn \"Quản Lý Loại Thức Ăn\" để thêm, chỉnh sửa hoặc xóa loại thức ăn.';

  @override
  String get usingFoodTypes => 'Sử Dụng Loại Thức Ăn';

  @override
  String get usingFoodTypesDescription =>
      'Khi thêm hồ sơ cho ăn, hãy chọn từ các loại thức ăn đã lưu của bạn. Điều này giúp duy trì tính nhất quán trong việc theo dõi.';

  @override
  String get localStorage => 'Lưu Trữ Cục Bộ';

  @override
  String get localStorageDescription =>
      'Tất cả dữ liệu của bạn được lưu trữ cục bộ trên thiết bị của bạn. Thông tin thú cưng của bạn vẫn riêng tư và có thể truy cập ngoại tuyến.';

  @override
  String get customization => 'Tùy Chỉnh';

  @override
  String get themeColors => 'Màu Chủ Đề';

  @override
  String get themeColorsDescription =>
      'Thay đổi màu chủ đề của ứng dụng bằng cách nhấn biểu tượng bảng màu ở góc trên bên phải. Chọn từ nhiều màu để cá nhân hóa trải nghiệm của bạn.';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return 'Điều này sẽ thêm hồ sơ cho ăn vào $count con mèo:';
  }

  @override
  String get type => 'loại';

  @override
  String get types => 'loại';

  @override
  String get noFoodTypesYet => 'Chưa có loại thức ăn';

  @override
  String get foodTypeName => 'Tên Loại Thức Ăn';

  @override
  String get addNewFoodType => 'Thêm Loại Thức Ăn Mới';

  @override
  String get addAndManageFoodTypesForFeedingRecords =>
      'Thêm và quản lý loại thức ăn cho hồ sơ cho ăn';
}
