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
  String deleteGroupConfirmWithPetsFixed(String groupName, int count) {
    return '\"$groupName\" を削除してもよろしいですか？\n\nこれにより、このグループから $count 匹のペットが削除されます。';
  }

  @override
  String get editPetInformation => 'ペット情報を編集';

  @override
  String get updateYourPetsDetails => 'ペットの詳細を更新';

  @override
  String get groupOptional => 'グループ（オプション）';

  @override
  String get selectAGroup => 'グループを選択';

  @override
  String get noGroup => 'グループなし';

  @override
  String get description => '説明';

  @override
  String get group => 'グループ';

  @override
  String get catNotFound => '猫が見つかりません';

  @override
  String get help => 'Help';

  @override
  String get changeThemeColor => 'テーマカラーを変更';

  @override
  String get themeColor => 'テーマカラー';

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
  String addedToCats(int successCount, int failedCount) {
    return '$successCount 匹の猫に追加されました。$failedCount 匹の猫は既にこの日の記録が 5 件あります。';
  }

  @override
  String addedToAllCats(int count) {
    return 'すべての $count 匹の猫に正常に追加されました';
  }

  @override
  String get groupFeeding => 'グループ給餌';

  @override
  String get recordFeedingForAllPetsInGroup => 'このグループのすべてのペットに給餌を記録';

  @override
  String get gettingStarted => 'はじめに';

  @override
  String get creatingYourFirstPet => '最初のペットを作成';

  @override
  String get creatingYourFirstPetDescription =>
      '下部の「新しいグループ」ボタンをタップしてグループを作成し、「ペットを追加」をタップして最初のペットをグループに追加します。';

  @override
  String get addingPets => 'ペットを追加';

  @override
  String get addingPetsDescription =>
      'ペットを直接グループに追加するか、グループなしで追加できます。ペットは後でグループ間で移動できます。';

  @override
  String get petTypes => 'ペットの種類';

  @override
  String get petTypesDescription =>
      'ペットを追加する際に猫または犬を選択します。各ペットのカスタムアイコンも選択できます。';

  @override
  String get managingPets => 'ペットの管理';

  @override
  String get viewingPetDetails => 'ペットの詳細を表示';

  @override
  String get viewingPetDetailsDescription =>
      'リスト内の任意のペットをタップして、体重記録、給餌履歴、医療記録を含む詳細情報を表示します。';

  @override
  String get editingPetInformation => 'ペット情報を編集';

  @override
  String get editingPetInformationDescription =>
      'ペットの情報タブの「編集」ボタンをタップして、名前、説明、アイコン、またはグループの割り当てを更新します。';

  @override
  String get deletingPets => 'ペットを削除';

  @override
  String get deletingPetsDescription =>
      'ペットの情報タブの「削除」ボタンを使用して、ペットとすべての関連記録を永続的に削除します。';

  @override
  String get recordingData => 'データの記録';

  @override
  String get weightRecords => '体重記録';

  @override
  String get weightRecordsDescription =>
      '時間の経過とともにペットの体重を追跡します。体重タブの + ボタンをタップして新しい記録を追加します。';

  @override
  String get feedingRecords => '給餌記録';

  @override
  String get feedingRecordsDescription =>
      '給餌時間、フードタイプ、量を記録します。ペットごとに1日あたり最大5件の記録を追加できます。';

  @override
  String get medicalRecords => '医療記録';

  @override
  String get medicalRecordsDescription => '獣医の訪問、薬、ワクチン、その他の医療情報を追跡します。';

  @override
  String get groupsAndOrganization => 'グループと整理';

  @override
  String get creatingGroups => 'グループを作成';

  @override
  String get creatingGroupsDescription =>
      'ペットを整理するためのグループを作成します。「新しいグループ」をタップしてグループを作成し、ペットを追加します。';

  @override
  String get groupFeedingDescription =>
      'グループ給餌機能を使用して、グループ内のすべてのペットに同じ給餌を一度に記録します。';

  @override
  String get tagsDescription =>
      'ペットにタグを追加して簡単にフィルタリングします。タグは、上部のフィルターバーを使用してペットをすばやく整理して見つけるのに役立ちます。';

  @override
  String get dataManagement => 'データ管理';

  @override
  String get exportingData => 'データをエクスポート';

  @override
  String get exportingDataDescription =>
      'データをエクスポートして共有またはバックアップします。設定に移動し、「データをエクスポート」をタップします。';

  @override
  String get importingData => 'データをインポート';

  @override
  String get importingDataDescription => '以前にエクスポートしたデータをインポートして、ペットと記録を復元します。';

  @override
  String get foodTypes => 'フードタイプ';

  @override
  String get managingFoodTypes => 'Managing Food Types';

  @override
  String get managingFoodTypesDescription =>
      '右上隅のメニュー（三点）に移動し、「フードタイプを管理」を選択して、フードタイプを追加、編集、または削除します。';

  @override
  String get usingFoodTypes => 'フードタイプを使用';

  @override
  String get usingFoodTypesDescription =>
      '給餌記録を追加する際に、保存したフードタイプから選択します。これにより、追跡の一貫性が保たれます。';

  @override
  String get localStorage => 'ローカルストレージ';

  @override
  String get localStorageDescription =>
      'すべてのデータはデバイスにローカルに保存されます。ペット情報はプライベートのままで、オフラインでアクセスできます。';

  @override
  String get customization => 'カスタマイズ';

  @override
  String get themeColors => 'テーマカラー';

  @override
  String get themeColorsDescription =>
      '右上隅のパレットアイコンをタップしてアプリのテーマカラーを変更します。さまざまな色から選択して、体験をパーソナライズします。';

  @override
  String thisWillAddAFeedingRecordToCats(int count) {
    return 'これにより、$count 匹の猫に給餌記録が追加されます：';
  }

  @override
  String get type => 'タイプ';

  @override
  String get types => 'タイプ';

  @override
  String get noFoodTypesYet => 'フードタイプはまだありません';

  @override
  String get foodTypeName => 'フードタイプ名';

  @override
  String get addNewFoodType => '新しいフードタイプを追加';

  @override
  String get addAndManageFoodTypesForFeedingRecords => '給餌記録のフードタイプを追加および管理';
}
