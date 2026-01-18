// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth => 'ペットの健康と活動を追跡';

  @override
  String get getStarted => '始める';

  @override
  String get myPets => '私のペット';

  @override
  String get noGroupsOrPetsAvailable => 'グループまたはペットがありません';

  @override
  String get newGroup => '新しいグループ';

  @override
  String get createGroup => 'グループを作成';

  @override
  String get filterByTags => 'タグでフィルター：';

  @override
  String get clear => 'クリア';

  @override
  String get ungroupedPets => 'グループ未分類のペット';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 匹のペット',
      one: '1 匹のペット',
      zero: '0 匹のペット',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => 'このグループにペットがありません';

  @override
  String get addPet => 'ペットを追加';

  @override
  String get expand => '展開';

  @override
  String get collapse => '折りたたむ';

  @override
  String get feedGroup => 'グループに餌を与える';

  @override
  String get editGroup => 'グループを編集';

  @override
  String get deleteGroup => 'グループを削除';

  @override
  String get deleteGroupTitle => 'グループを削除';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return '\"$groupName\" を削除してもよろしいですか？';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return '\"$groupName\" を削除してもよろしいですか？\n\nこれにより、このグループから $count 匹の猫が削除されます。';
  }

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get manageFoodTypes => 'フードタイプを管理';

  @override
  String get importData => 'データをインポート';

  @override
  String get exportData => 'データをエクスポート';

  @override
  String get dataImportedSuccessfully => 'データのインポートに成功しました！';

  @override
  String get addNewPet => '新しいペットを追加';

  @override
  String get createANewPetProfile => '新しいペットプロフィールを作成';

  @override
  String get petType => 'ペットの種類';

  @override
  String get cat => '猫';

  @override
  String get dog => '犬';

  @override
  String get name => '名前';

  @override
  String get enterPetName => 'ペットの名前を入力';

  @override
  String get pleaseEnterACatName => 'ペットの名前を入力してください';

  @override
  String get descriptionOptional => '説明（オプション）';

  @override
  String get tellUsAboutYourPet => 'ペットについて教えてください...';

  @override
  String get selectIcon => 'アイコンを選択';

  @override
  String get editGroupTitle => 'グループを編集';

  @override
  String get createGroupTitle => 'グループを作成';

  @override
  String get updateGroupInformation => 'グループ情報を更新';

  @override
  String get organizeYourPetsIntoGroups => 'ペットをグループに整理';

  @override
  String get enterGroupName => 'グループ名を入力';

  @override
  String get pleaseEnterAGroupName => 'グループ名を入力してください';

  @override
  String get describeThisGroup => 'このグループを説明...';

  @override
  String get saveChanges => '変更を保存';

  @override
  String get deletePet => 'ペットを削除';

  @override
  String deletePetConfirm(String petName) {
    return '\"$petName\" を削除してもよろしいですか？\n\nこれにより、以下が永続的に削除されます：\n- ペットプロフィール\n- すべての体重記録\n- すべての給餌記録\n\nこの操作は元に戻せません。';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName が削除されました';
  }

  @override
  String get petNotFound => 'ペットが見つかりません';

  @override
  String get tags => 'タグ';

  @override
  String get add => '追加';

  @override
  String get noTagsYet => 'まだタグがありません';

  @override
  String get latestWeight => '最新の体重';

  @override
  String get noWeightRecordsYet => 'まだ体重記録がありません';

  @override
  String get edit => '編集';

  @override
  String get addTag => 'タグを追加';

  @override
  String get tagName => 'タグ名';

  @override
  String get enterTagName => 'タグ名を入力';

  @override
  String get noFeedingRecordsYet => 'まだ給餌記録がありません';

  @override
  String get tapTheButtonToAddARecord => '+ ボタンをタップして記録を追加';

  @override
  String get addFeeding => '給餌を追加';

  @override
  String get addWeight => '体重を追加';

  @override
  String get addRecord => '記録を追加';

  @override
  String get noMedicalRecordsYet => 'まだ医療記録がありません';

  @override
  String get catNotFound => '猫が見つかりません';

  @override
  String get info => '情報';

  @override
  String get medical => '医療';

  @override
  String get weight => '体重';

  @override
  String get feeding => '給餌';

  @override
  String get addFeedingRecord => '給餌記録を追加';

  @override
  String get editFeedingRecord => '給餌記録を編集';

  @override
  String get recordYourPetsFeeding => 'ペットの給餌を記録';

  @override
  String get updateFeedingInformation => '給餌情報を更新';

  @override
  String get foodType => 'フードタイプ';

  @override
  String get selectFoodType => 'フードタイプを選択';

  @override
  String get pleaseSelectAFoodType => 'フードタイプを選択してください';

  @override
  String get amount => '量';

  @override
  String get enterAmount => '量を入力';

  @override
  String get pleaseEnterAValidAmount => '有効な量を入力してください（0.5-1000）';

  @override
  String get date => '日付';

  @override
  String get selectDate => '日付を選択';

  @override
  String get notes => 'メモ';

  @override
  String get enterNotes => 'メモを入力（オプション）';

  @override
  String get addWeightRecord => '体重記録を追加';

  @override
  String get editWeightRecord => '体重記録を編集';

  @override
  String get recordYourCatsWeight => '猫の体重を記録';

  @override
  String get updateWeightInformation => '体重情報を更新';

  @override
  String get weightKg => '体重（kg）';

  @override
  String get enterWeight => '体重を入力';

  @override
  String get pleaseEnterAValidWeight => '有効な体重を入力してください';

  @override
  String get addMedicalRecord => '医療記録を追加';

  @override
  String get editMedicalRecord => '医療記録を編集';

  @override
  String get recordMedicalInformation => '医療情報を記録';

  @override
  String get updateMedicalInformation => '医療情報を更新';

  @override
  String get title => 'タイトル';

  @override
  String get enterTitle => 'タイトルを入力';

  @override
  String get pleaseEnterATitle => 'タイトルを入力してください';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType が追加されました';
  }

  @override
  String get deleteFoodType => 'フードタイプを削除';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return '\"$foodType\" を削除してもよろしいですか？\n\nこれにより、すべての給餌記録から削除されます。';
  }

  @override
  String get editFoodType => 'フードタイプを編集';

  @override
  String get enterFoodTypeName => 'フードタイプ名を入力';

  @override
  String get pleaseEnterAFoodTypeName => 'フードタイプ名を入力してください';

  @override
  String get saveToAllCats => 'すべての猫に保存';

  @override
  String addedToAllCats(int count) {
    return 'すべての $count 匹の猫に追加されました';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '\"$groupName\" を削除してもよろしいですか？\n\nこれにより、このグループから $count 匹のペットが削除されます。';
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
    return '$count 匹の猫に追加されました。$failedCount 匹の猫は既にこの日の記録が 5 件あります。';
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
