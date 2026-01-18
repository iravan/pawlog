// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth =>
      'ติดตามสุขภาพและกิจกรรมของสัตว์เลี้ยงของคุณ';

  @override
  String get getStarted => 'เริ่มต้น';

  @override
  String get myPets => 'สัตว์เลี้ยงของฉัน';

  @override
  String get noGroupsOrPetsAvailable => 'ไม่มีกลุ่มหรือสัตว์เลี้ยง';

  @override
  String get newGroup => 'กลุ่มใหม่';

  @override
  String get createGroup => 'สร้างกลุ่ม';

  @override
  String get filterByTags => 'กรองตามแท็ก:';

  @override
  String get clear => 'ล้าง';

  @override
  String get ungroupedPets => 'สัตว์เลี้ยงที่ไม่ได้จัดกลุ่ม';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ตัว',
      one: '1 ตัว',
      zero: '0 ตัว',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => 'ไม่มีสัตว์เลี้ยงในกลุ่มนี้';

  @override
  String get addPet => 'เพิ่มสัตว์เลี้ยง';

  @override
  String get expand => 'ขยาย';

  @override
  String get collapse => 'ย่อ';

  @override
  String get feedGroup => 'ให้อาหารกลุ่ม';

  @override
  String get editGroup => 'แก้ไขกลุ่ม';

  @override
  String get deleteGroup => 'ลบกลุ่ม';

  @override
  String get deleteGroupTitle => 'ลบกลุ่ม';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$groupName\"?';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$groupName\"?\n\nสิ่งนี้จะลบ $count ตัวออกจากกลุ่มนี้';
  }

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get delete => 'ลบ';

  @override
  String get manageFoodTypes => 'จัดการประเภทอาหาร';

  @override
  String get importData => 'นำเข้าข้อมูล';

  @override
  String get exportData => 'ส่งออกข้อมูล';

  @override
  String get dataImportedSuccessfully => 'นำเข้าข้อมูลสำเร็จ!';

  @override
  String get addNewPet => 'เพิ่มสัตว์เลี้ยงใหม่';

  @override
  String get createANewPetProfile => 'สร้างโปรไฟล์สัตว์เลี้ยงใหม่';

  @override
  String get petType => 'ประเภทสัตว์เลี้ยง';

  @override
  String get cat => 'แมว';

  @override
  String get dog => 'สุนัข';

  @override
  String get name => 'ชื่อ';

  @override
  String get enterPetName => 'ใส่ชื่อสัตว์เลี้ยง';

  @override
  String get pleaseEnterACatName => 'กรุณาใส่ชื่อสัตว์เลี้ยง';

  @override
  String get descriptionOptional => 'คำอธิบาย (ไม่บังคับ)';

  @override
  String get tellUsAboutYourPet => 'บอกเราเกี่ยวกับสัตว์เลี้ยงของคุณ...';

  @override
  String get selectIcon => 'เลือกไอคอน';

  @override
  String get editGroupTitle => 'แก้ไขกลุ่ม';

  @override
  String get createGroupTitle => 'สร้างกลุ่ม';

  @override
  String get updateGroupInformation => 'อัปเดตข้อมูลกลุ่ม';

  @override
  String get organizeYourPetsIntoGroups =>
      'จัดระเบียบสัตว์เลี้ยงของคุณเป็นกลุ่ม';

  @override
  String get enterGroupName => 'ใส่ชื่อกลุ่ม';

  @override
  String get pleaseEnterAGroupName => 'กรุณาใส่ชื่อกลุ่ม';

  @override
  String get describeThisGroup => 'อธิบายกลุ่มนี้...';

  @override
  String get saveChanges => 'บันทึกการเปลี่ยนแปลง';

  @override
  String get deletePet => 'ลบสัตว์เลี้ยง';

  @override
  String deletePetConfirm(String petName) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$petName\"?\n\nสิ่งนี้จะลบอย่างถาวร:\n- โปรไฟล์สัตว์เลี้ยง\n- บันทึกน้ำหนักทั้งหมด\n- บันทึกการให้อาหารทั้งหมด\n\nการกระทำนี้ไม่สามารถยกเลิกได้';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName ถูกลบแล้ว';
  }

  @override
  String get petNotFound => 'ไม่พบสัตว์เลี้ยง';

  @override
  String get tags => 'แท็ก';

  @override
  String get add => 'เพิ่ม';

  @override
  String get noTagsYet => 'ยังไม่มีแท็ก';

  @override
  String get latestWeight => 'น้ำหนักล่าสุด';

  @override
  String get noWeightRecordsYet => 'ยังไม่มีบันทึกน้ำหนัก';

  @override
  String get edit => 'แก้ไข';

  @override
  String get addTag => 'เพิ่มแท็ก';

  @override
  String get tagName => 'ชื่อแท็ก';

  @override
  String get enterTagName => 'ใส่ชื่อแท็ก';

  @override
  String get noFeedingRecordsYet => 'ยังไม่มีบันทึกการให้อาหาร';

  @override
  String get tapTheButtonToAddARecord => 'แตะปุ่ม + เพื่อเพิ่มบันทึก';

  @override
  String get addFeeding => 'เพิ่มการให้อาหาร';

  @override
  String get addWeight => 'เพิ่มน้ำหนัก';

  @override
  String get addRecord => 'เพิ่มบันทึก';

  @override
  String get noMedicalRecordsYet => 'ยังไม่มีบันทึกทางการแพทย์';

  @override
  String get catNotFound => 'ไม่พบแมว';

  @override
  String get info => 'ข้อมูล';

  @override
  String get medical => 'ทางการแพทย์';

  @override
  String get weight => 'น้ำหนัก';

  @override
  String get feeding => 'การให้อาหาร';

  @override
  String get addFeedingRecord => 'เพิ่มบันทึกการให้อาหาร';

  @override
  String get editFeedingRecord => 'แก้ไขบันทึกการให้อาหาร';

  @override
  String get recordYourPetsFeeding => 'บันทึกการให้อาหารสัตว์เลี้ยงของคุณ';

  @override
  String get updateFeedingInformation => 'อัปเดตข้อมูลการให้อาหาร';

  @override
  String get foodType => 'ประเภทอาหาร';

  @override
  String get selectFoodType => 'เลือกประเภทอาหาร';

  @override
  String get pleaseSelectAFoodType => 'กรุณาเลือกประเภทอาหาร';

  @override
  String get amount => 'จำนวน';

  @override
  String get enterAmount => 'ใส่จำนวน';

  @override
  String get pleaseEnterAValidAmount => 'กรุณาใส่จำนวนที่ถูกต้อง (0.5-1000)';

  @override
  String get date => 'วันที่';

  @override
  String get selectDate => 'เลือกวันที่';

  @override
  String get notes => 'หมายเหตุ';

  @override
  String get enterNotes => 'ใส่หมายเหตุ (ไม่บังคับ)';

  @override
  String get addWeightRecord => 'เพิ่มบันทึกน้ำหนัก';

  @override
  String get editWeightRecord => 'แก้ไขบันทึกน้ำหนัก';

  @override
  String get recordYourCatsWeight => 'บันทึกน้ำหนักแมวของคุณ';

  @override
  String get updateWeightInformation => 'อัปเดตข้อมูลน้ำหนัก';

  @override
  String get weightKg => 'น้ำหนัก (กก.)';

  @override
  String get enterWeight => 'ใส่น้ำหนัก';

  @override
  String get pleaseEnterAValidWeight => 'กรุณาใส่น้ำหนักที่ถูกต้อง';

  @override
  String get addMedicalRecord => 'เพิ่มบันทึกทางการแพทย์';

  @override
  String get editMedicalRecord => 'แก้ไขบันทึกทางการแพทย์';

  @override
  String get recordMedicalInformation => 'บันทึกข้อมูลทางการแพทย์';

  @override
  String get updateMedicalInformation => 'อัปเดตข้อมูลทางการแพทย์';

  @override
  String get title => 'หัวข้อ';

  @override
  String get enterTitle => 'ใส่หัวข้อ';

  @override
  String get pleaseEnterATitle => 'กรุณาใส่หัวข้อ';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType ถูกเพิ่มแล้ว';
  }

  @override
  String get deleteFoodType => 'ลบประเภทอาหาร';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$foodType\"?\n\nสิ่งนี้จะลบออกจากบันทึกการให้อาหารทั้งหมด';
  }

  @override
  String get editFoodType => 'แก้ไขประเภทอาหาร';

  @override
  String get enterFoodTypeName => 'ใส่ชื่อประเภทอาหาร';

  @override
  String get pleaseEnterAFoodTypeName => 'กรุณาใส่ชื่อประเภทอาหาร';

  @override
  String get saveToAllCats => 'บันทึกให้แมวทั้งหมด';

  @override
  String addedToAllCats(int count) {
    return 'เพิ่มไปยังแมวทั้งหมด $count ตัวแล้ว';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$groupName\"?\n\nสิ่งนี้จะลบ $count ตัวออกจากกลุ่มนี้';
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
    return 'เพิ่มไปยัง $count ตัวแล้ว $failedCount ตัวมีบันทึก 5 รายการสำหรับวันนี้แล้ว';
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
