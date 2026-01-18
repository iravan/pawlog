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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$groupName\"?\n\nสิ่งนี้จะลบ $count ตัวออกจากกลุ่มนี้';
  }

  @override
  String get editPetInformation => 'แก้ไขข้อมูลสัตว์เลี้ยง';

  @override
  String get updateYourPetsDetails => 'อัปเดตรายละเอียดสัตว์เลี้ยงของคุณ';

  @override
  String get groupOptional => 'กลุ่ม (ไม่บังคับ)';

  @override
  String get selectAGroup => 'เลือกกลุ่ม';

  @override
  String get noGroup => 'ไม่มีกลุ่ม';

  @override
  String get description => 'คำอธิบาย';

  @override
  String get group => 'กลุ่ม';

  @override
  String get catNotFound => 'ไม่พบแมว';

  @override
  String get help => 'Help';

  @override
  String get changeThemeColor => 'เปลี่ยนสีธีม';

  @override
  String get themeColor => 'สีธีม';

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
  String addedToCats(int successCount, int failedCount) {
    return 'เพิ่มไปยัง $successCount ตัวแล้ว $failedCount ตัวมีบันทึก 5 รายการสำหรับวันนี้แล้ว';
  }

  @override
  String addedToAllCats(int count) {
    return 'เพิ่มไปยังแมวทั้งหมด $count ตัวสำเร็จแล้ว';
  }

  @override
  String get groupFeeding => 'ให้อาหารกลุ่ม';

  @override
  String get recordFeedingForAllPetsInGroup =>
      'บันทึกการให้อาหารสำหรับสัตว์เลี้ยงทั้งหมดในกลุ่มนี้';

  @override
  String get gettingStarted => 'เริ่มต้นใช้งาน';

  @override
  String get creatingYourFirstPet => 'สร้างสัตว์เลี้ยงตัวแรกของคุณ';

  @override
  String get creatingYourFirstPetDescription =>
      'แตะปุ่ม \"กลุ่มใหม่\" ที่ด้านล่างเพื่อสร้างกลุ่ม แล้วแตะ \"เพิ่มสัตว์เลี้ยง\" เพื่อเพิ่มสัตว์เลี้ยงตัวแรกของคุณในกลุ่ม';

  @override
  String get addingPets => 'เพิ่มสัตว์เลี้ยง';

  @override
  String get addingPetsDescription =>
      'คุณสามารถเพิ่มสัตว์เลี้ยงไปยังกลุ่มโดยตรงหรือเพิ่มโดยไม่มีกลุ่ม สัตว์เลี้ยงสามารถย้ายระหว่างกลุ่มได้ในภายหลัง';

  @override
  String get petTypes => 'ประเภทสัตว์เลี้ยง';

  @override
  String get petTypesDescription =>
      'เลือกระหว่างแมวหรือสุนัขเมื่อเพิ่มสัตว์เลี้ยง คุณยังสามารถเลือกไอคอนที่กำหนดเองสำหรับสัตว์เลี้ยงแต่ละตัว';

  @override
  String get managingPets => 'จัดการสัตว์เลี้ยง';

  @override
  String get viewingPetDetails => 'ดูรายละเอียดสัตว์เลี้ยง';

  @override
  String get viewingPetDetailsDescription =>
      'แตะสัตว์เลี้ยงใดๆ ในรายการเพื่อดูข้อมูลรายละเอียด รวมถึงบันทึกน้ำหนัก ประวัติการให้อาหาร และบันทึกทางการแพทย์';

  @override
  String get editingPetInformation => 'แก้ไขข้อมูลสัตว์เลี้ยง';

  @override
  String get editingPetInformationDescription =>
      'แตะปุ่ม \"แก้ไข\" ในแท็บข้อมูลสัตว์เลี้ยงเพื่ออัปเดตชื่อ คำอธิบาย ไอคอน หรือการกำหนดกลุ่ม';

  @override
  String get deletingPets => 'ลบสัตว์เลี้ยง';

  @override
  String get deletingPetsDescription =>
      'ใช้ปุ่ม \"ลบ\" ในแท็บข้อมูลสัตว์เลี้ยงเพื่อลบสัตว์เลี้ยงและบันทึกที่เกี่ยวข้องทั้งหมดอย่างถาวร';

  @override
  String get recordingData => 'บันทึกข้อมูล';

  @override
  String get weightRecords => 'บันทึกน้ำหนัก';

  @override
  String get weightRecordsDescription =>
      'ติดตามน้ำหนักสัตว์เลี้ยงของคุณเมื่อเวลาผ่านไป แตะปุ่ม + ในแท็บน้ำหนักเพื่อเพิ่มบันทึกใหม่';

  @override
  String get feedingRecords => 'บันทึกการให้อาหาร';

  @override
  String get feedingRecordsDescription =>
      'บันทึกเวลาการให้อาหาร ประเภทอาหาร และปริมาณ คุณสามารถเพิ่มได้สูงสุด 5 บันทึกต่อวันต่อสัตว์เลี้ยง';

  @override
  String get medicalRecords => 'บันทึกทางการแพทย์';

  @override
  String get medicalRecordsDescription =>
      'ติดตามการไปพบสัตวแพทย์ ยา การฉีดวัคซีน และข้อมูลทางการแพทย์อื่นๆ';

  @override
  String get groupsAndOrganization => 'กลุ่มและการจัดระเบียบ';

  @override
  String get creatingGroups => 'สร้างกลุ่ม';

  @override
  String get creatingGroupsDescription =>
      'สร้างกลุ่มเพื่อจัดระเบียบสัตว์เลี้ยงของคุณ แตะ \"กลุ่มใหม่\" เพื่อสร้างกลุ่ม แล้วเพิ่มสัตว์เลี้ยงเข้าไป';

  @override
  String get groupFeedingDescription =>
      'ใช้คุณสมบัติการให้อาหารกลุ่มเพื่อบันทึกการให้อาหารเดียวกันสำหรับสัตว์เลี้ยงทั้งหมดในกลุ่มพร้อมกัน';

  @override
  String get tagsDescription =>
      'เพิ่มแท็กให้กับสัตว์เลี้ยงของคุณเพื่อกรองได้ง่าย แท็กช่วยให้คุณจัดระเบียบและค้นหาสัตว์เลี้ยงได้อย่างรวดเร็วโดยใช้แถบกรองด้านบน';

  @override
  String get dataManagement => 'การจัดการข้อมูล';

  @override
  String get exportingData => 'ส่งออกข้อมูล';

  @override
  String get exportingDataDescription =>
      'ส่งออกข้อมูลของคุณเพื่อแชร์หรือสำรองข้อมูล ไปที่การตั้งค่าและแตะ \"ส่งออกข้อมูล\"';

  @override
  String get importingData => 'นำเข้าข้อมูล';

  @override
  String get importingDataDescription =>
      'นำเข้าข้อมูลที่ส่งออกไว้ก่อนหน้านี้เพื่อกู้คืนสัตว์เลี้ยงและบันทึกของคุณ';

  @override
  String get foodTypes => 'ประเภทอาหาร';

  @override
  String get managingFoodTypes => 'Managing Food Types';

  @override
  String get managingFoodTypesDescription =>
      'ไปที่เมนู (สามจุด) ที่มุมขวาบนและเลือก \"จัดการประเภทอาหาร\" เพื่อเพิ่ม แก้ไข หรือลบประเภทอาหาร';

  @override
  String get usingFoodTypes => 'ใช้ประเภทอาหาร';

  @override
  String get usingFoodTypesDescription =>
      'เมื่อเพิ่มบันทึกการให้อาหาร ให้เลือกจากประเภทอาหารที่บันทึกไว้ของคุณ สิ่งนี้ช่วยรักษาความสอดคล้องในการติดตาม';

  @override
  String get localStorage => 'ที่เก็บข้อมูลท้องถิ่น';

  @override
  String get localStorageDescription =>
      'ข้อมูลทั้งหมดของคุณถูกเก็บไว้ในอุปกรณ์ของคุณ ข้อมูลสัตว์เลี้ยงของคุณยังคงเป็นส่วนตัวและเข้าถึงได้แบบออฟไลน์';

  @override
  String get customization => 'การปรับแต่ง';

  @override
  String get themeColors => 'สีธีม';

  @override
  String get themeColorsDescription =>
      'เปลี่ยนสีธีมของแอปโดยแตะไอคอนพาเล็ตที่มุมขวาบน เลือกจากสีต่างๆ เพื่อปรับแต่งประสบการณ์ของคุณ';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return 'สิ่งนี้จะเพิ่มบันทึกการให้อาหารไปยัง $count ตัว:';
  }

  @override
  String get type => 'ประเภท';

  @override
  String get types => 'ประเภท';

  @override
  String get noFoodTypesYet => 'ยังไม่มีประเภทอาหาร';

  @override
  String get foodTypeName => 'ชื่อประเภทอาหาร';

  @override
  String get addNewFoodType => 'เพิ่มประเภทอาหารใหม่';

  @override
  String get addAndManageFoodTypesForFeedingRecords =>
      'เพิ่มและจัดการประเภทอาหารสำหรับบันทึกการให้อาหาร';
}
