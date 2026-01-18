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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '您確定要刪除 \"$groupName\" 嗎？\n\n這將從此組中移除 $count 隻寵物。';
  }

  @override
  String get editPetInformation => '編輯寵物信息';

  @override
  String get updateYourPetsDetails => '更新您的寵物詳情';

  @override
  String get groupOptional => '組（可選）';

  @override
  String get selectAGroup => '選擇一個組';

  @override
  String get noGroup => '無組';

  @override
  String get description => '描述';

  @override
  String get group => '組';

  @override
  String get catNotFound => '未找到貓';

  @override
  String get help => 'Help';

  @override
  String get changeThemeColor => '更改主題顏色';

  @override
  String get themeColor => '主題顏色';

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
  String addedToCats(int successCount, int failedCount) {
    return '已添加到 $successCount 隻貓。$failedCount 隻貓今天已有 5 條記錄。';
  }

  @override
  String addedToAllCats(int count) {
    return '已成功添加到所有 $count 隻貓';
  }

  @override
  String get groupFeeding => '組餵食';

  @override
  String get recordFeedingForAllPetsInGroup => '記錄此組中所有寵物的餵食';

  @override
  String get gettingStarted => '開始使用';

  @override
  String get creatingYourFirstPet => '創建您的第一隻寵物';

  @override
  String get creatingYourFirstPetDescription =>
      '點擊底部的「新建組」按鈕創建組，然後點擊「添加寵物」將您的第一隻寵物添加到組中。';

  @override
  String get addingPets => '添加寵物';

  @override
  String get addingPetsDescription => '您可以直接將寵物添加到組中，也可以不添加組。寵物可以在稍後在組之間移動。';

  @override
  String get petTypes => '寵物類型';

  @override
  String get petTypesDescription => '添加寵物時選擇貓或狗。您還可以為每隻寵物選擇自定義圖標。';

  @override
  String get managingPets => '管理寵物';

  @override
  String get viewingPetDetails => '查看寵物詳情';

  @override
  String get viewingPetDetailsDescription =>
      '點擊列表中的任何寵物以查看詳細信息，包括體重記錄、餵食歷史和醫療記錄。';

  @override
  String get editingPetInformation => '編輯寵物信息';

  @override
  String get editingPetInformationDescription =>
      '點擊寵物信息標籤中的「編輯」按鈕以更新名稱、描述、圖標或組分配。';

  @override
  String get deletingPets => '刪除寵物';

  @override
  String get deletingPetsDescription => '使用寵物信息標籤中的「刪除」按鈕永久刪除寵物和所有相關記錄。';

  @override
  String get recordingData => '記錄數據';

  @override
  String get weightRecords => '體重記錄';

  @override
  String get weightRecordsDescription => '隨時間追蹤您的寵物體重。點擊體重標籤中的 + 按鈕添加新記錄。';

  @override
  String get feedingRecords => '餵食記錄';

  @override
  String get feedingRecordsDescription => '記錄餵食時間、食物類型和數量。每隻寵物每天最多可添加 5 條記錄。';

  @override
  String get medicalRecords => '醫療記錄';

  @override
  String get medicalRecordsDescription => '追蹤獸醫訪問、藥物、疫苗接種和其他醫療信息。';

  @override
  String get groupsAndOrganization => '組和組織';

  @override
  String get creatingGroups => '創建組';

  @override
  String get creatingGroupsDescription => '創建組以組織您的寵物。點擊「新建組」創建組，然後向其中添加寵物。';

  @override
  String get groupFeedingDescription => '使用組餵食功能一次記錄組中所有寵物的相同餵食。';

  @override
  String get tagsDescription => '為您的寵物添加標籤以便輕鬆過濾。標籤幫助您使用頂部的過濾欄快速組織和查找寵物。';

  @override
  String get dataManagement => '數據管理';

  @override
  String get exportingData => '導出數據';

  @override
  String get exportingDataDescription => '導出您的數據以共享或備份。轉到設置並點擊「導出數據」。';

  @override
  String get importingData => '導入數據';

  @override
  String get importingDataDescription => '導入先前導出的數據以恢復您的寵物和記錄。';

  @override
  String get foodTypes => '食物類型';

  @override
  String get managingFoodTypes => 'Managing Food Types';

  @override
  String get managingFoodTypesDescription =>
      '轉到右上角的菜單（三點）並選擇「管理食物類型」以添加、編輯或刪除食物類型。';

  @override
  String get usingFoodTypes => '使用食物類型';

  @override
  String get usingFoodTypesDescription => '添加餵食記錄時，從您保存的食物類型中選擇。這有助於保持追蹤的一致性。';

  @override
  String get localStorage => '本地存儲';

  @override
  String get localStorageDescription => '您的所有數據都存儲在設備本地。您的寵物信息保持私密，可離線訪問。';

  @override
  String get customization => '自定義';

  @override
  String get themeColors => '主題顏色';

  @override
  String get themeColorsDescription => '點擊右上角的調色板圖標更改應用的主題顏色。從多種顏色中選擇以個性化您的體驗。';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return '這將向 $count 隻貓添加餵食記錄：';
  }

  @override
  String get type => '類型';

  @override
  String get types => '類型';

  @override
  String get noFoodTypesYet => '尚無食物類型';

  @override
  String get foodTypeName => '食物類型名稱';

  @override
  String get addNewFoodType => '添加新食物類型';

  @override
  String get addAndManageFoodTypesForFeedingRecords => '添加和管理餵食記錄的食物類型';
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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '您确定要删除 \"$groupName\" 吗？\n\n这将从此组中移除 $count 只宠物。';
  }

  @override
  String get editPetInformation => '编辑宠物信息';

  @override
  String get updateYourPetsDetails => '更新您的宠物详情';

  @override
  String get groupOptional => '组（可选）';

  @override
  String get selectAGroup => '选择一个组';

  @override
  String get noGroup => '无组';

  @override
  String get description => '描述';

  @override
  String get group => '组';

  @override
  String get catNotFound => '未找到猫';

  @override
  String get changeThemeColor => '更改主题颜色';

  @override
  String get themeColor => '主题颜色';

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
  String addedToCats(int successCount, int failedCount) {
    return '已添加到 $successCount 只猫。$failedCount 只猫今天已有 5 条记录。';
  }

  @override
  String addedToAllCats(int count) {
    return '已成功添加到所有 $count 只猫';
  }

  @override
  String get groupFeeding => '组喂食';

  @override
  String get recordFeedingForAllPetsInGroup => '记录此组中所有宠物的喂食';

  @override
  String get gettingStarted => '开始使用';

  @override
  String get creatingYourFirstPet => '创建您的第一只宠物';

  @override
  String get creatingYourFirstPetDescription =>
      '点击底部的「新建组」按钮创建组，然后点击「添加宠物」将您的第一只宠物添加到组中。';

  @override
  String get addingPets => '添加宠物';

  @override
  String get addingPetsDescription => '您可以直接将宠物添加到组中，也可以不添加组。宠物可以在稍后在组之间移动。';

  @override
  String get petTypes => '宠物类型';

  @override
  String get petTypesDescription => '添加宠物时选择猫或狗。您还可以为每只宠物选择自定义图标。';

  @override
  String get managingPets => '管理宠物';

  @override
  String get viewingPetDetails => '查看宠物详情';

  @override
  String get viewingPetDetailsDescription =>
      '点击列表中的任何宠物以查看详细信息，包括体重记录、喂食历史和医疗记录。';

  @override
  String get editingPetInformation => '编辑宠物信息';

  @override
  String get editingPetInformationDescription =>
      '点击宠物信息标签中的「编辑」按钮以更新名称、描述、图标或组分配。';

  @override
  String get deletingPets => '删除宠物';

  @override
  String get deletingPetsDescription => '使用宠物信息标签中的「删除」按钮永久删除宠物和所有相关记录。';

  @override
  String get recordingData => '记录数据';

  @override
  String get weightRecords => '体重记录';

  @override
  String get weightRecordsDescription => '随时间追踪您的宠物体重。点击体重标签中的 + 按钮添加新记录。';

  @override
  String get feedingRecords => '喂食记录';

  @override
  String get feedingRecordsDescription => '记录喂食时间、食物类型和数量。每只宠物每天最多可添加 5 条记录。';

  @override
  String get medicalRecords => '医疗记录';

  @override
  String get medicalRecordsDescription => '追踪兽医访问、药物、疫苗接种和其他医疗信息。';

  @override
  String get groupsAndOrganization => '组和组织';

  @override
  String get creatingGroups => '创建组';

  @override
  String get creatingGroupsDescription => '创建组以组织您的宠物。点击「新建组」创建组，然后向其中添加宠物。';

  @override
  String get groupFeedingDescription => '使用组喂食功能一次记录组中所有宠物的相同喂食。';

  @override
  String get tagsDescription => '为您的宠物添加标签以便轻松过滤。标签帮助您使用顶部的过滤栏快速组织和查找宠物。';

  @override
  String get dataManagement => '数据管理';

  @override
  String get exportingData => '导出数据';

  @override
  String get exportingDataDescription => '导出您的数据以共享或备份。转到设置并点击「导出数据」。';

  @override
  String get importingData => '导入数据';

  @override
  String get importingDataDescription => '导入先前导出的数据以恢复您的宠物和记录。';

  @override
  String get foodTypes => '食物类型';

  @override
  String get managingFoodTypesDescription =>
      '转到右上角的菜单（三点）并选择「管理食物类型」以添加、编辑或删除食物类型。';

  @override
  String get usingFoodTypes => '使用食物类型';

  @override
  String get usingFoodTypesDescription => '添加喂食记录时，从您保存的食物类型中选择。这有助于保持追踪的一致性。';

  @override
  String get localStorage => '本地存储';

  @override
  String get localStorageDescription => '您的所有数据都存储在设备本地。您的宠物信息保持私密，可离线访问。';

  @override
  String get customization => '自定义';

  @override
  String get themeColors => '主题颜色';

  @override
  String get themeColorsDescription => '点击右上角的调色板图标更改应用的主题颜色。从多种颜色中选择以个性化您的体验。';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return '这将向 $count 只猫添加喂食记录：';
  }

  @override
  String get type => '类型';

  @override
  String get types => '类型';

  @override
  String get noFoodTypesYet => '尚无食物类型';

  @override
  String get foodTypeName => '食物类型名称';

  @override
  String get addNewFoodType => '添加新食物类型';

  @override
  String get addAndManageFoodTypesForFeedingRecords => '添加和管理喂食记录的食物类型';
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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '您確定要刪除 \"$groupName\" 嗎？\n\n這將從此組中移除 $count 隻寵物。';
  }

  @override
  String get editPetInformation => '編輯寵物信息';

  @override
  String get updateYourPetsDetails => '更新您的寵物詳情';

  @override
  String get groupOptional => '組（可選）';

  @override
  String get selectAGroup => '選擇一個組';

  @override
  String get noGroup => '無組';

  @override
  String get description => '描述';

  @override
  String get group => '組';

  @override
  String get catNotFound => '未找到貓';

  @override
  String get changeThemeColor => '更改主題顏色';

  @override
  String get themeColor => '主題顏色';

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
  String addedToCats(int successCount, int failedCount) {
    return '已添加到 $successCount 隻貓。$failedCount 隻貓今天已有 5 條記錄。';
  }

  @override
  String addedToAllCats(int count) {
    return '已成功添加到所有 $count 隻貓';
  }

  @override
  String get groupFeeding => '組餵食';

  @override
  String get recordFeedingForAllPetsInGroup => '記錄此組中所有寵物的餵食';

  @override
  String get gettingStarted => '開始使用';

  @override
  String get creatingYourFirstPet => '創建您的第一隻寵物';

  @override
  String get creatingYourFirstPetDescription =>
      '點擊底部的「新建組」按鈕創建組，然後點擊「添加寵物」將您的第一隻寵物添加到組中。';

  @override
  String get addingPets => '添加寵物';

  @override
  String get addingPetsDescription => '您可以直接將寵物添加到組中，也可以不添加組。寵物可以在稍後在組之間移動。';

  @override
  String get petTypes => '寵物類型';

  @override
  String get petTypesDescription => '添加寵物時選擇貓或狗。您還可以為每隻寵物選擇自定義圖標。';

  @override
  String get managingPets => '管理寵物';

  @override
  String get viewingPetDetails => '查看寵物詳情';

  @override
  String get viewingPetDetailsDescription =>
      '點擊列表中的任何寵物以查看詳細信息，包括體重記錄、餵食歷史和醫療記錄。';

  @override
  String get editingPetInformation => '編輯寵物信息';

  @override
  String get editingPetInformationDescription =>
      '點擊寵物信息標籤中的「編輯」按鈕以更新名稱、描述、圖標或組分配。';

  @override
  String get deletingPets => '刪除寵物';

  @override
  String get deletingPetsDescription => '使用寵物信息標籤中的「刪除」按鈕永久刪除寵物和所有相關記錄。';

  @override
  String get recordingData => '記錄數據';

  @override
  String get weightRecords => '體重記錄';

  @override
  String get weightRecordsDescription => '隨時間追蹤您的寵物體重。點擊體重標籤中的 + 按鈕添加新記錄。';

  @override
  String get feedingRecords => '餵食記錄';

  @override
  String get feedingRecordsDescription => '記錄餵食時間、食物類型和數量。每隻寵物每天最多可添加 5 條記錄。';

  @override
  String get medicalRecords => '醫療記錄';

  @override
  String get medicalRecordsDescription => '追蹤獸醫訪問、藥物、疫苗接種和其他醫療信息。';

  @override
  String get groupsAndOrganization => '組和組織';

  @override
  String get creatingGroups => '創建組';

  @override
  String get creatingGroupsDescription => '創建組以組織您的寵物。點擊「新建組」創建組，然後向其中添加寵物。';

  @override
  String get groupFeedingDescription => '使用組餵食功能一次記錄組中所有寵物的相同餵食。';

  @override
  String get tagsDescription => '為您的寵物添加標籤以便輕鬆過濾。標籤幫助您使用頂部的過濾欄快速組織和查找寵物。';

  @override
  String get dataManagement => '數據管理';

  @override
  String get exportingData => '導出數據';

  @override
  String get exportingDataDescription => '導出您的數據以共享或備份。轉到設置並點擊「導出數據」。';

  @override
  String get importingData => '導入數據';

  @override
  String get importingDataDescription => '導入先前導出的數據以恢復您的寵物和記錄。';

  @override
  String get foodTypes => '食物類型';

  @override
  String get managingFoodTypesDescription =>
      '轉到右上角的菜單（三點）並選擇「管理食物類型」以添加、編輯或刪除食物類型。';

  @override
  String get usingFoodTypes => '使用食物類型';

  @override
  String get usingFoodTypesDescription => '添加餵食記錄時，從您保存的食物類型中選擇。這有助於保持追蹤的一致性。';

  @override
  String get localStorage => '本地存儲';

  @override
  String get localStorageDescription => '您的所有數據都存儲在設備本地。您的寵物信息保持私密，可離線訪問。';

  @override
  String get customization => '自定義';

  @override
  String get themeColors => '主題顏色';

  @override
  String get themeColorsDescription => '點擊右上角的調色板圖標更改應用的主題顏色。從多種顏色中選擇以個性化您的體驗。';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return '這將向 $count 隻貓添加餵食記錄：';
  }

  @override
  String get type => '類型';

  @override
  String get types => '類型';

  @override
  String get noFoodTypesYet => '尚無食物類型';

  @override
  String get foodTypeName => '食物類型名稱';

  @override
  String get addNewFoodType => '添加新食物類型';

  @override
  String get addAndManageFoodTypesForFeedingRecords => '添加和管理餵食記錄的食物類型';
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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '您確定要刪除 \"$groupName\" 嗎？\n\n這將從此群組中移除 $count 隻寵物。';
  }

  @override
  String get editPetInformation => '編輯寵物資訊';

  @override
  String get updateYourPetsDetails => '更新您的寵物詳情';

  @override
  String get groupOptional => '群組（選填）';

  @override
  String get selectAGroup => '選擇一個群組';

  @override
  String get noGroup => '無群組';

  @override
  String get description => '描述';

  @override
  String get group => '群組';

  @override
  String get catNotFound => '找不到貓';

  @override
  String get changeThemeColor => '更改主題顏色';

  @override
  String get themeColor => '主題顏色';

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
  String addedToCats(int successCount, int failedCount) {
    return '已新增到 $successCount 隻貓。$failedCount 隻貓今天已有 5 筆記錄。';
  }

  @override
  String addedToAllCats(int count) {
    return '已成功新增到所有 $count 隻貓';
  }

  @override
  String get groupFeeding => '群組餵食';

  @override
  String get recordFeedingForAllPetsInGroup => '記錄此群組中所有寵物的餵食';

  @override
  String get gettingStarted => '開始使用';

  @override
  String get creatingYourFirstPet => '建立您的第一隻寵物';

  @override
  String get creatingYourFirstPetDescription =>
      '點擊底部的「新建群組」按鈕建立群組，然後點擊「新增寵物」將您的第一隻寵物新增到群組中。';

  @override
  String get addingPets => '新增寵物';

  @override
  String get addingPetsDescription => '您可以直接將寵物新增到群組中，也可以不新增群組。寵物可以在稍後在群組之間移動。';

  @override
  String get petTypes => '寵物類型';

  @override
  String get petTypesDescription => '新增寵物時選擇貓或狗。您還可以為每隻寵物選擇自訂圖示。';

  @override
  String get managingPets => '管理寵物';

  @override
  String get viewingPetDetails => '查看寵物詳情';

  @override
  String get viewingPetDetailsDescription =>
      '點擊清單中的任何寵物以查看詳細資訊，包括體重記錄、餵食歷史和醫療記錄。';

  @override
  String get editingPetInformation => '編輯寵物資訊';

  @override
  String get editingPetInformationDescription =>
      '點擊寵物資訊標籤中的「編輯」按鈕以更新名稱、描述、圖示或群組分配。';

  @override
  String get deletingPets => '刪除寵物';

  @override
  String get deletingPetsDescription => '使用寵物資訊標籤中的「刪除」按鈕永久刪除寵物和所有相關記錄。';

  @override
  String get recordingData => '記錄資料';

  @override
  String get weightRecords => '體重記錄';

  @override
  String get weightRecordsDescription => '隨時間追蹤您的寵物體重。點擊體重標籤中的 + 按鈕新增記錄。';

  @override
  String get feedingRecords => '餵食記錄';

  @override
  String get feedingRecordsDescription => '記錄餵食時間、食物類型和數量。每隻寵物每天最多可新增 5 筆記錄。';

  @override
  String get medicalRecords => '醫療記錄';

  @override
  String get medicalRecordsDescription => '追蹤獸醫訪問、藥物、疫苗接種和其他醫療資訊。';

  @override
  String get groupsAndOrganization => '群組和組織';

  @override
  String get creatingGroups => '建立群組';

  @override
  String get creatingGroupsDescription => '建立群組以組織您的寵物。點擊「新建群組」建立群組，然後向其中新增寵物。';

  @override
  String get groupFeedingDescription => '使用群組餵食功能一次記錄群組中所有寵物的相同餵食。';

  @override
  String get tagsDescription => '為您的寵物新增標籤以便輕鬆過濾。標籤幫助您使用頂部的過濾欄快速組織和查找寵物。';

  @override
  String get dataManagement => '資料管理';

  @override
  String get exportingData => '匯出資料';

  @override
  String get exportingDataDescription => '匯出您的資料以共享或備份。前往設定並點擊「匯出資料」。';

  @override
  String get importingData => '匯入資料';

  @override
  String get importingDataDescription => '匯入先前匯出的資料以恢復您的寵物和記錄。';

  @override
  String get foodTypes => '食物類型';

  @override
  String get managingFoodTypesDescription =>
      '前往右上角的選單（三點）並選擇「管理食物類型」以新增、編輯或刪除食物類型。';

  @override
  String get usingFoodTypes => '使用食物類型';

  @override
  String get usingFoodTypesDescription => '新增餵食記錄時，從您儲存的食物類型中選擇。這有助於保持追蹤的一致性。';

  @override
  String get localStorage => '本機儲存';

  @override
  String get localStorageDescription => '您的所有資料都儲存在裝置本機。您的寵物資訊保持私密，可離線存取。';

  @override
  String get customization => '自訂';

  @override
  String get themeColors => '主題顏色';

  @override
  String get themeColorsDescription =>
      '點擊右上角的調色板圖示更改應用程式的主題顏色。從多種顏色中選擇以個人化您的體驗。';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return '這將向 $count 隻貓新增餵食記錄：';
  }

  @override
  String get type => '類型';

  @override
  String get types => '類型';

  @override
  String get noFoodTypesYet => '尚無食物類型';

  @override
  String get foodTypeName => '食物類型名稱';

  @override
  String get addNewFoodType => '新增新食物類型';

  @override
  String get addAndManageFoodTypesForFeedingRecords => '新增和管理餵食記錄的食物類型';
}
