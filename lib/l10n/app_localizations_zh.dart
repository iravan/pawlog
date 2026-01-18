// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth => '追蹤您寵物的健康和活動';

  @override
  String get getStarted => '開始使用';

  @override
  String get myPets => '我的寵物';

  @override
  String get noGroupsOrPetsAvailable => '沒有可用的組或寵物';

  @override
  String get newGroup => '新建組';

  @override
  String get createGroup => '創建組';

  @override
  String get filterByTags => '按標籤篩選：';

  @override
  String get clear => '清除';

  @override
  String get ungroupedPets => '未分組寵物';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 隻寵物',
      one: '1 隻寵物',
      zero: '0 隻寵物',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => '此組中沒有寵物';

  @override
  String get addPet => '添加寵物';

  @override
  String get expand => '展開';

  @override
  String get collapse => '收起';

  @override
  String get feedGroup => '餵食組';

  @override
  String get editGroup => '編輯組';

  @override
  String get deleteGroup => '刪除組';

  @override
  String get deleteGroupTitle => '刪除組';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return '您確定要刪除 \"$groupName\" 嗎？';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return '您確定要刪除 \"$groupName\" 嗎？\n\n這將從此組中移除 $count 隻貓。';
  }

  @override
  String get cancel => '取消';

  @override
  String get delete => '刪除';

  @override
  String get manageFoodTypes => '管理食物類型';

  @override
  String get importData => '導入數據';

  @override
  String get exportData => '導出數據';

  @override
  String get dataImportedSuccessfully => '數據導入成功！';

  @override
  String get addNewPet => '添加新寵物';

  @override
  String get createANewPetProfile => '創建新的寵物檔案';

  @override
  String get petType => '寵物類型';

  @override
  String get cat => '貓';

  @override
  String get dog => '狗';

  @override
  String get name => '名稱';

  @override
  String get enterPetName => '輸入寵物名稱';

  @override
  String get pleaseEnterACatName => '請輸入寵物名稱';

  @override
  String get descriptionOptional => '描述（可選）';

  @override
  String get tellUsAboutYourPet => '告訴我們關於您的寵物...';

  @override
  String get selectIcon => '選擇圖標';

  @override
  String get editGroupTitle => '編輯組';

  @override
  String get createGroupTitle => '創建組';

  @override
  String get updateGroupInformation => '更新組信息';

  @override
  String get organizeYourPetsIntoGroups => '將您的寵物組織成組';

  @override
  String get enterGroupName => '輸入組名稱';

  @override
  String get pleaseEnterAGroupName => '請輸入組名稱';

  @override
  String get describeThisGroup => '描述此組...';

  @override
  String get saveChanges => '保存更改';

  @override
  String get deletePet => '刪除寵物';

  @override
  String deletePetConfirm(String petName) {
    return '您確定要刪除 \"$petName\" 嗎？\n\n這將永久刪除：\n- 寵物檔案\n- 所有體重記錄\n- 所有餵食記錄\n\n此操作無法撤銷。';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName 已被刪除';
  }

  @override
  String get petNotFound => '未找到寵物';

  @override
  String get tags => '標籤';

  @override
  String get add => '添加';

  @override
  String get noTagsYet => '還沒有標籤';

  @override
  String get latestWeight => '最新體重';

  @override
  String get noWeightRecordsYet => '還沒有體重記錄';

  @override
  String get edit => '編輯';

  @override
  String get addTag => '添加標籤';

  @override
  String get tagName => '標籤名稱';

  @override
  String get enterTagName => '輸入標籤名稱';

  @override
  String get noFeedingRecordsYet => '還沒有餵食記錄';

  @override
  String get tapTheButtonToAddARecord => '點擊 + 按鈕添加記錄';

  @override
  String get addFeeding => '添加餵食';

  @override
  String get addWeight => '添加體重';

  @override
  String get addRecord => '添加記錄';

  @override
  String get noMedicalRecordsYet => '還沒有醫療記錄';

  @override
  String get catNotFound => '未找到貓';

  @override
  String get info => '信息';

  @override
  String get medical => '醫療';

  @override
  String get weight => '體重';

  @override
  String get feeding => '餵食';

  @override
  String get addFeedingRecord => '添加餵食記錄';

  @override
  String get editFeedingRecord => '編輯餵食記錄';

  @override
  String get recordYourPetsFeeding => '記錄您寵物的餵食';

  @override
  String get updateFeedingInformation => '更新餵食信息';

  @override
  String get foodType => '食物類型';

  @override
  String get selectFoodType => '選擇食物類型';

  @override
  String get pleaseSelectAFoodType => '請選擇食物類型';

  @override
  String get amount => '數量';

  @override
  String get enterAmount => '輸入數量';

  @override
  String get pleaseEnterAValidAmount => '請輸入有效數量（0.5-1000）';

  @override
  String get date => '日期';

  @override
  String get selectDate => '選擇日期';

  @override
  String get notes => '備註';

  @override
  String get enterNotes => '輸入備註（可選）';

  @override
  String get addWeightRecord => '添加體重記錄';

  @override
  String get editWeightRecord => '編輯體重記錄';

  @override
  String get recordYourCatsWeight => '記錄您貓的體重';

  @override
  String get updateWeightInformation => '更新體重信息';

  @override
  String get weightKg => '體重（公斤）';

  @override
  String get enterWeight => '輸入體重';

  @override
  String get pleaseEnterAValidWeight => '請輸入有效體重';

  @override
  String get addMedicalRecord => '添加醫療記錄';

  @override
  String get editMedicalRecord => '編輯醫療記錄';

  @override
  String get recordMedicalInformation => '記錄醫療信息';

  @override
  String get updateMedicalInformation => '更新醫療信息';

  @override
  String get title => '標題';

  @override
  String get enterTitle => '輸入標題';

  @override
  String get pleaseEnterATitle => '請輸入標題';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType 已添加';
  }

  @override
  String get deleteFoodType => '刪除食物類型';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return '您確定要刪除 \"$foodType\" 嗎？\n\n這將從所有餵食記錄中移除它。';
  }

  @override
  String get editFoodType => '編輯食物類型';

  @override
  String get enterFoodTypeName => '輸入食物類型名稱';

  @override
  String get pleaseEnterAFoodTypeName => '請輸入食物類型名稱';

  @override
  String get saveToAllCats => '保存到所有貓';

  @override
  String addedToAllCats(int count) {
    return '已添加到所有 $count 隻貓';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '您確定要刪除 \"$groupName\" 嗎？\n\n這將從此組中移除 $count 隻寵物。';
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
    return '已添加到 $count 隻貓。$failedCount 隻貓今天已有 5 條記錄。';
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

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth => '追踪您宠物的健康和活动';

  @override
  String get getStarted => '开始使用';

  @override
  String get myPets => '我的宠物';

  @override
  String get noGroupsOrPetsAvailable => '没有可用的组或宠物';

  @override
  String get newGroup => '新建组';

  @override
  String get createGroup => '创建组';

  @override
  String get filterByTags => '按标签筛选：';

  @override
  String get clear => '清除';

  @override
  String get ungroupedPets => '未分组宠物';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 只宠物',
      one: '1 只宠物',
      zero: '0 只宠物',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => '此组中没有宠物';

  @override
  String get addPet => '添加宠物';

  @override
  String get expand => '展开';

  @override
  String get collapse => '收起';

  @override
  String get feedGroup => '喂食组';

  @override
  String get editGroup => '编辑组';

  @override
  String get deleteGroup => '删除组';

  @override
  String get deleteGroupTitle => '删除组';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return '您确定要删除 \"$groupName\" 吗？';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return '您确定要删除 \"$groupName\" 吗？\n\n这将从此组中移除 $count 只猫。';
  }

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get manageFoodTypes => '管理食物类型';

  @override
  String get importData => '导入数据';

  @override
  String get exportData => '导出数据';

  @override
  String get dataImportedSuccessfully => '数据导入成功！';

  @override
  String get addNewPet => '添加新宠物';

  @override
  String get createANewPetProfile => '创建新的宠物档案';

  @override
  String get petType => '宠物类型';

  @override
  String get cat => '猫';

  @override
  String get dog => '狗';

  @override
  String get name => '名称';

  @override
  String get enterPetName => '输入宠物名称';

  @override
  String get pleaseEnterACatName => '请输入宠物名称';

  @override
  String get descriptionOptional => '描述（可选）';

  @override
  String get tellUsAboutYourPet => '告诉我们关于您的宠物...';

  @override
  String get selectIcon => '选择图标';

  @override
  String get editGroupTitle => '编辑组';

  @override
  String get createGroupTitle => '创建组';

  @override
  String get updateGroupInformation => '更新组信息';

  @override
  String get organizeYourPetsIntoGroups => '将您的宠物组织成组';

  @override
  String get enterGroupName => '输入组名称';

  @override
  String get pleaseEnterAGroupName => '请输入组名称';

  @override
  String get describeThisGroup => '描述此组...';

  @override
  String get saveChanges => '保存更改';

  @override
  String get deletePet => '删除宠物';

  @override
  String deletePetConfirm(String petName) {
    return '您确定要删除 \"$petName\" 吗？\n\n这将永久删除：\n- 宠物档案\n- 所有权重记录\n- 所有喂食记录\n\n此操作无法撤销。';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName 已被删除';
  }

  @override
  String get petNotFound => '未找到宠物';

  @override
  String get tags => '标签';

  @override
  String get add => '添加';

  @override
  String get noTagsYet => '还没有标签';

  @override
  String get latestWeight => '最新体重';

  @override
  String get noWeightRecordsYet => '还没有体重记录';

  @override
  String get edit => '编辑';

  @override
  String get addTag => '添加标签';

  @override
  String get tagName => '标签名称';

  @override
  String get enterTagName => '输入标签名称';

  @override
  String get noFeedingRecordsYet => '还没有喂食记录';

  @override
  String get tapTheButtonToAddARecord => '点击 + 按钮添加记录';

  @override
  String get addFeeding => '添加喂食';

  @override
  String get addWeight => '添加体重';

  @override
  String get addRecord => '添加记录';

  @override
  String get noMedicalRecordsYet => '还没有医疗记录';

  @override
  String get catNotFound => '未找到猫';

  @override
  String get info => '信息';

  @override
  String get medical => '医疗';

  @override
  String get weight => '体重';

  @override
  String get feeding => '喂食';

  @override
  String get addFeedingRecord => '添加喂食记录';

  @override
  String get editFeedingRecord => '编辑喂食记录';

  @override
  String get recordYourPetsFeeding => '记录您宠物的喂食';

  @override
  String get updateFeedingInformation => '更新喂食信息';

  @override
  String get foodType => '食物类型';

  @override
  String get selectFoodType => '选择食物类型';

  @override
  String get pleaseSelectAFoodType => '请选择食物类型';

  @override
  String get amount => '数量';

  @override
  String get enterAmount => '输入数量';

  @override
  String get pleaseEnterAValidAmount => '请输入有效数量（0.5-1000）';

  @override
  String get date => '日期';

  @override
  String get selectDate => '选择日期';

  @override
  String get notes => '备注';

  @override
  String get enterNotes => '输入备注（可选）';

  @override
  String get addWeightRecord => '添加体重记录';

  @override
  String get editWeightRecord => '编辑体重记录';

  @override
  String get recordYourCatsWeight => '记录您猫的体重';

  @override
  String get updateWeightInformation => '更新体重信息';

  @override
  String get weightKg => '体重（公斤）';

  @override
  String get enterWeight => '输入体重';

  @override
  String get pleaseEnterAValidWeight => '请输入有效体重';

  @override
  String get addMedicalRecord => '添加医疗记录';

  @override
  String get editMedicalRecord => '编辑医疗记录';

  @override
  String get recordMedicalInformation => '记录医疗信息';

  @override
  String get updateMedicalInformation => '更新医疗信息';

  @override
  String get title => '标题';

  @override
  String get enterTitle => '输入标题';

  @override
  String get pleaseEnterATitle => '请输入标题';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType 已添加';
  }

  @override
  String get deleteFoodType => '删除食物类型';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return '您确定要删除 \"$foodType\" 吗？\n\n这将从所有喂食记录中移除它。';
  }

  @override
  String get editFoodType => '编辑食物类型';

  @override
  String get enterFoodTypeName => '输入食物类型名称';

  @override
  String get pleaseEnterAFoodTypeName => '请输入食物类型名称';

  @override
  String get saveToAllCats => '保存到所有猫';

  @override
  String addedToAllCats(int count) {
    return '已添加到所有 $count 只猫';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '您确定要删除 \"$groupName\" 吗？\n\n这将从此组中移除 $count 只宠物。';
  }

  @override
  String addedToCats(int successCount, int failedCount, Object count) {
    return '已添加到 $count 只猫。$failedCount 只猫今天已有 5 条记录。';
  }
}

/// The translations for Chinese, as used in Hong Kong (`zh_HK`).
class AppLocalizationsZhHk extends AppLocalizationsZh {
  AppLocalizationsZhHk() : super('zh_HK');

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth => '追蹤您寵物的健康和活動';

  @override
  String get getStarted => '開始使用';

  @override
  String get myPets => '我的寵物';

  @override
  String get noGroupsOrPetsAvailable => '沒有可用的組或寵物';

  @override
  String get newGroup => '新建組';

  @override
  String get createGroup => '創建組';

  @override
  String get filterByTags => '按標籤篩選：';

  @override
  String get clear => '清除';

  @override
  String get ungroupedPets => '未分組寵物';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 隻寵物',
      one: '1 隻寵物',
      zero: '0 隻寵物',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => '此組中沒有寵物';

  @override
  String get addPet => '添加寵物';

  @override
  String get expand => '展開';

  @override
  String get collapse => '收起';

  @override
  String get feedGroup => '餵食組';

  @override
  String get editGroup => '編輯組';

  @override
  String get deleteGroup => '刪除組';

  @override
  String get deleteGroupTitle => '刪除組';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return '您確定要刪除 \"$groupName\" 嗎？';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return '您確定要刪除 \"$groupName\" 嗎？\n\n這將從此組中移除 $count 隻貓。';
  }

  @override
  String get cancel => '取消';

  @override
  String get delete => '刪除';

  @override
  String get manageFoodTypes => '管理食物類型';

  @override
  String get importData => '導入數據';

  @override
  String get exportData => '導出數據';

  @override
  String get dataImportedSuccessfully => '數據導入成功！';

  @override
  String get addNewPet => '添加新寵物';

  @override
  String get createANewPetProfile => '創建新的寵物檔案';

  @override
  String get petType => '寵物類型';

  @override
  String get cat => '貓';

  @override
  String get dog => '狗';

  @override
  String get name => '名稱';

  @override
  String get enterPetName => '輸入寵物名稱';

  @override
  String get pleaseEnterACatName => '請輸入寵物名稱';

  @override
  String get descriptionOptional => '描述（可選）';

  @override
  String get tellUsAboutYourPet => '告訴我們關於您的寵物...';

  @override
  String get selectIcon => '選擇圖標';

  @override
  String get editGroupTitle => '編輯組';

  @override
  String get createGroupTitle => '創建組';

  @override
  String get updateGroupInformation => '更新組信息';

  @override
  String get organizeYourPetsIntoGroups => '將您的寵物組織成組';

  @override
  String get enterGroupName => '輸入組名稱';

  @override
  String get pleaseEnterAGroupName => '請輸入組名稱';

  @override
  String get describeThisGroup => '描述此組...';

  @override
  String get saveChanges => '保存更改';

  @override
  String get deletePet => '刪除寵物';

  @override
  String deletePetConfirm(String petName) {
    return '您確定要刪除 \"$petName\" 嗎？\n\n這將永久刪除：\n- 寵物檔案\n- 所有體重記錄\n- 所有餵食記錄\n\n此操作無法撤銷。';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName 已被刪除';
  }

  @override
  String get petNotFound => '未找到寵物';

  @override
  String get tags => '標籤';

  @override
  String get add => '添加';

  @override
  String get noTagsYet => '還沒有標籤';

  @override
  String get latestWeight => '最新體重';

  @override
  String get noWeightRecordsYet => '還沒有體重記錄';

  @override
  String get edit => '編輯';

  @override
  String get addTag => '添加標籤';

  @override
  String get tagName => '標籤名稱';

  @override
  String get enterTagName => '輸入標籤名稱';

  @override
  String get noFeedingRecordsYet => '還沒有餵食記錄';

  @override
  String get tapTheButtonToAddARecord => '點擊 + 按鈕添加記錄';

  @override
  String get addFeeding => '添加餵食';

  @override
  String get addWeight => '添加體重';

  @override
  String get addRecord => '添加記錄';

  @override
  String get noMedicalRecordsYet => '還沒有醫療記錄';

  @override
  String get catNotFound => '未找到貓';

  @override
  String get info => '信息';

  @override
  String get medical => '醫療';

  @override
  String get weight => '體重';

  @override
  String get feeding => '餵食';

  @override
  String get addFeedingRecord => '添加餵食記錄';

  @override
  String get editFeedingRecord => '編輯餵食記錄';

  @override
  String get recordYourPetsFeeding => '記錄您寵物的餵食';

  @override
  String get updateFeedingInformation => '更新餵食信息';

  @override
  String get foodType => '食物類型';

  @override
  String get selectFoodType => '選擇食物類型';

  @override
  String get pleaseSelectAFoodType => '請選擇食物類型';

  @override
  String get amount => '數量';

  @override
  String get enterAmount => '輸入數量';

  @override
  String get pleaseEnterAValidAmount => '請輸入有效數量（0.5-1000）';

  @override
  String get date => '日期';

  @override
  String get selectDate => '選擇日期';

  @override
  String get notes => '備註';

  @override
  String get enterNotes => '輸入備註（可選）';

  @override
  String get addWeightRecord => '添加體重記錄';

  @override
  String get editWeightRecord => '編輯體重記錄';

  @override
  String get recordYourCatsWeight => '記錄您貓的體重';

  @override
  String get updateWeightInformation => '更新體重信息';

  @override
  String get weightKg => '體重（公斤）';

  @override
  String get enterWeight => '輸入體重';

  @override
  String get pleaseEnterAValidWeight => '請輸入有效體重';

  @override
  String get addMedicalRecord => '添加醫療記錄';

  @override
  String get editMedicalRecord => '編輯醫療記錄';

  @override
  String get recordMedicalInformation => '記錄醫療信息';

  @override
  String get updateMedicalInformation => '更新醫療信息';

  @override
  String get title => '標題';

  @override
  String get enterTitle => '輸入標題';

  @override
  String get pleaseEnterATitle => '請輸入標題';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType 已添加';
  }

  @override
  String get deleteFoodType => '刪除食物類型';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return '您確定要刪除 \"$foodType\" 嗎？\n\n這將從所有餵食記錄中移除它。';
  }

  @override
  String get editFoodType => '編輯食物類型';

  @override
  String get enterFoodTypeName => '輸入食物類型名稱';

  @override
  String get pleaseEnterAFoodTypeName => '請輸入食物類型名稱';

  @override
  String get saveToAllCats => '保存到所有貓';

  @override
  String addedToAllCats(int count) {
    return '已添加到所有 $count 隻貓';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '您確定要刪除 \"$groupName\" 嗎？\n\n這將從此組中移除 $count 隻寵物。';
  }

  @override
  String addedToCats(int successCount, int failedCount, Object count) {
    return '已添加到 $count 隻貓。$failedCount 隻貓今天已有 5 條記錄。';
  }
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => 'PawsLog';

  @override
  String get trackYourPetsHealth => '追蹤您寵物的健康和活動';

  @override
  String get getStarted => '開始使用';

  @override
  String get myPets => '我的寵物';

  @override
  String get noGroupsOrPetsAvailable => '沒有可用的群組或寵物';

  @override
  String get newGroup => '新建群組';

  @override
  String get createGroup => '建立群組';

  @override
  String get filterByTags => '依標籤篩選：';

  @override
  String get clear => '清除';

  @override
  String get ungroupedPets => '未分組寵物';

  @override
  String petCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 隻寵物',
      one: '1 隻寵物',
      zero: '0 隻寵物',
    );
    return '$_temp0';
  }

  @override
  String get noPetsInThisGroup => '此群組中沒有寵物';

  @override
  String get addPet => '新增寵物';

  @override
  String get expand => '展開';

  @override
  String get collapse => '收起';

  @override
  String get feedGroup => '餵食群組';

  @override
  String get editGroup => '編輯群組';

  @override
  String get deleteGroup => '刪除群組';

  @override
  String get deleteGroupTitle => '刪除群組';

  @override
  String deleteGroupConfirmEmpty(String groupName) {
    return '您確定要刪除 \"$groupName\" 嗎？';
  }

  @override
  String deleteGroupConfirmWithPets(String groupName, int count) {
    return '您確定要刪除 \"$groupName\" 嗎？\n\n這將從此群組中移除 $count 隻貓。';
  }

  @override
  String get cancel => '取消';

  @override
  String get delete => '刪除';

  @override
  String get manageFoodTypes => '管理食物類型';

  @override
  String get importData => '匯入資料';

  @override
  String get exportData => '匯出資料';

  @override
  String get dataImportedSuccessfully => '資料匯入成功！';

  @override
  String get addNewPet => '新增寵物';

  @override
  String get createANewPetProfile => '建立新的寵物檔案';

  @override
  String get petType => '寵物類型';

  @override
  String get cat => '貓';

  @override
  String get dog => '狗';

  @override
  String get name => '名稱';

  @override
  String get enterPetName => '輸入寵物名稱';

  @override
  String get pleaseEnterACatName => '請輸入寵物名稱';

  @override
  String get descriptionOptional => '描述（選填）';

  @override
  String get tellUsAboutYourPet => '告訴我們關於您的寵物...';

  @override
  String get selectIcon => '選擇圖示';

  @override
  String get editGroupTitle => '編輯群組';

  @override
  String get createGroupTitle => '建立群組';

  @override
  String get updateGroupInformation => '更新群組資訊';

  @override
  String get organizeYourPetsIntoGroups => '將您的寵物組織成群組';

  @override
  String get enterGroupName => '輸入群組名稱';

  @override
  String get pleaseEnterAGroupName => '請輸入群組名稱';

  @override
  String get describeThisGroup => '描述此群組...';

  @override
  String get saveChanges => '儲存變更';

  @override
  String get deletePet => '刪除寵物';

  @override
  String deletePetConfirm(String petName) {
    return '您確定要刪除 \"$petName\" 嗎？\n\n這將永久刪除：\n- 寵物檔案\n- 所有體重記錄\n- 所有餵食記錄\n\n此操作無法復原。';
  }

  @override
  String petHasBeenDeleted(String petName) {
    return '$petName 已被刪除';
  }

  @override
  String get petNotFound => '找不到寵物';

  @override
  String get tags => '標籤';

  @override
  String get add => '新增';

  @override
  String get noTagsYet => '還沒有標籤';

  @override
  String get latestWeight => '最新體重';

  @override
  String get noWeightRecordsYet => '還沒有體重記錄';

  @override
  String get edit => '編輯';

  @override
  String get addTag => '新增標籤';

  @override
  String get tagName => '標籤名稱';

  @override
  String get enterTagName => '輸入標籤名稱';

  @override
  String get noFeedingRecordsYet => '還沒有餵食記錄';

  @override
  String get tapTheButtonToAddARecord => '點擊 + 按鈕新增記錄';

  @override
  String get addFeeding => '新增餵食';

  @override
  String get addWeight => '新增體重';

  @override
  String get addRecord => '新增記錄';

  @override
  String get noMedicalRecordsYet => '還沒有醫療記錄';

  @override
  String get catNotFound => '找不到貓';

  @override
  String get info => '資訊';

  @override
  String get medical => '醫療';

  @override
  String get weight => '體重';

  @override
  String get feeding => '餵食';

  @override
  String get addFeedingRecord => '新增餵食記錄';

  @override
  String get editFeedingRecord => '編輯餵食記錄';

  @override
  String get recordYourPetsFeeding => '記錄您寵物的餵食';

  @override
  String get updateFeedingInformation => '更新餵食資訊';

  @override
  String get foodType => '食物類型';

  @override
  String get selectFoodType => '選擇食物類型';

  @override
  String get pleaseSelectAFoodType => '請選擇食物類型';

  @override
  String get amount => '數量';

  @override
  String get enterAmount => '輸入數量';

  @override
  String get pleaseEnterAValidAmount => '請輸入有效數量（0.5-1000）';

  @override
  String get date => '日期';

  @override
  String get selectDate => '選擇日期';

  @override
  String get notes => '備註';

  @override
  String get enterNotes => '輸入備註（選填）';

  @override
  String get addWeightRecord => '新增體重記錄';

  @override
  String get editWeightRecord => '編輯體重記錄';

  @override
  String get recordYourCatsWeight => '記錄您貓的體重';

  @override
  String get updateWeightInformation => '更新體重資訊';

  @override
  String get weightKg => '體重（公斤）';

  @override
  String get enterWeight => '輸入體重';

  @override
  String get pleaseEnterAValidWeight => '請輸入有效體重';

  @override
  String get addMedicalRecord => '新增醫療記錄';

  @override
  String get editMedicalRecord => '編輯醫療記錄';

  @override
  String get recordMedicalInformation => '記錄醫療資訊';

  @override
  String get updateMedicalInformation => '更新醫療資訊';

  @override
  String get title => '標題';

  @override
  String get enterTitle => '輸入標題';

  @override
  String get pleaseEnterATitle => '請輸入標題';

  @override
  String foodTypeAdded(String foodType) {
    return '$foodType 已新增';
  }

  @override
  String get deleteFoodType => '刪除食物類型';

  @override
  String deleteFoodTypeConfirm(String foodType) {
    return '您確定要刪除 \"$foodType\" 嗎？\n\n這將從所有餵食記錄中移除它。';
  }

  @override
  String get editFoodType => '編輯食物類型';

  @override
  String get enterFoodTypeName => '輸入食物類型名稱';

  @override
  String get pleaseEnterAFoodTypeName => '請輸入食物類型名稱';

  @override
  String get saveToAllCats => '儲存到所有貓';

  @override
  String addedToAllCats(int count) {
    return '已新增到所有 $count 隻貓';
  }

  @override
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '您確定要刪除 \"$groupName\" 嗎？\n\n這將從此群組中移除 $count 隻寵物。';
  }

  @override
  String addedToCats(int successCount, int failedCount, Object count) {
    return '已新增到 $count 隻貓。$failedCount 隻貓今天已有 5 筆記錄。';
  }
}
