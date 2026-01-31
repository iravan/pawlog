import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_th.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pt'),
    Locale('th'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'HK'),
    Locale('zh', 'TW')
  ];

  /// The app title
  ///
  /// In en, this message translates to:
  /// **'PawsLog'**
  String get appTitle;

  /// Subtitle on login page
  ///
  /// In en, this message translates to:
  /// **'Track your pet\'s health and activities'**
  String get trackYourPetsHealth;

  /// Button on login page
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// App bar title on main page
  ///
  /// In en, this message translates to:
  /// **'My Pets'**
  String get myPets;

  /// Empty state message
  ///
  /// In en, this message translates to:
  /// **'No groups or pets available'**
  String get noGroupsOrPetsAvailable;

  /// Floating action button label
  ///
  /// In en, this message translates to:
  /// **'New Group'**
  String get newGroup;

  /// Tooltip for create group button
  ///
  /// In en, this message translates to:
  /// **'Create Group'**
  String get createGroup;

  /// Label for tag filter section
  ///
  /// In en, this message translates to:
  /// **'Filter by tags:'**
  String get filterByTags;

  /// Button to clear tag filters
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// Title for ungrouped pets section
  ///
  /// In en, this message translates to:
  /// **'Ungrouped Pets'**
  String get ungroupedPets;

  /// Pet count text with pluralization
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{0 pets} =1{1 pet} other{{count} pets}}'**
  String petCount(int count);

  /// Empty state for group
  ///
  /// In en, this message translates to:
  /// **'No pets in this group'**
  String get noPetsInThisGroup;

  /// Button to add a pet
  ///
  /// In en, this message translates to:
  /// **'Add Pet'**
  String get addPet;

  /// Tooltip for expand button
  ///
  /// In en, this message translates to:
  /// **'Expand'**
  String get expand;

  /// Tooltip for collapse button
  ///
  /// In en, this message translates to:
  /// **'Collapse'**
  String get collapse;

  /// Tooltip for feed group button
  ///
  /// In en, this message translates to:
  /// **'Feed Group'**
  String get feedGroup;

  /// Menu item to edit group
  ///
  /// In en, this message translates to:
  /// **'Edit Group'**
  String get editGroup;

  /// Menu item to delete group
  ///
  /// In en, this message translates to:
  /// **'Delete Group'**
  String get deleteGroup;

  /// Dialog title for deleting group
  ///
  /// In en, this message translates to:
  /// **'Delete Group'**
  String get deleteGroupTitle;

  /// Confirmation message for deleting empty group
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{groupName}\"?'**
  String deleteGroupConfirmEmpty(String groupName);

  /// Confirmation message for deleting group with pets
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{groupName}\"?\n\nThis will remove {count} cat(s) from this group.'**
  String deleteGroupConfirmWithPets(String groupName, int count);

  /// Cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Delete button
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Menu item for managing food types
  ///
  /// In en, this message translates to:
  /// **'Manage Food Types'**
  String get manageFoodTypes;

  /// Menu item for importing data
  ///
  /// In en, this message translates to:
  /// **'Import Data'**
  String get importData;

  /// Menu item for exporting data
  ///
  /// In en, this message translates to:
  /// **'Export Data'**
  String get exportData;

  /// Success message after importing
  ///
  /// In en, this message translates to:
  /// **'Data imported successfully!'**
  String get dataImportedSuccessfully;

  /// Dialog title for adding pet
  ///
  /// In en, this message translates to:
  /// **'Add New Pet'**
  String get addNewPet;

  /// Subtitle in add pet dialog
  ///
  /// In en, this message translates to:
  /// **'Create a new pet profile'**
  String get createANewPetProfile;

  /// Label for pet type selection
  ///
  /// In en, this message translates to:
  /// **'Pet Type'**
  String get petType;

  /// Cat pet type
  ///
  /// In en, this message translates to:
  /// **'Cat'**
  String get cat;

  /// Dog pet type
  ///
  /// In en, this message translates to:
  /// **'Dog'**
  String get dog;

  /// Name field label
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// Hint for pet name field
  ///
  /// In en, this message translates to:
  /// **'Enter pet name'**
  String get enterPetName;

  /// Validation error for pet name
  ///
  /// In en, this message translates to:
  /// **'Please enter a cat name'**
  String get pleaseEnterACatName;

  /// Description field label
  ///
  /// In en, this message translates to:
  /// **'Description (optional)'**
  String get descriptionOptional;

  /// Hint for description field
  ///
  /// In en, this message translates to:
  /// **'Tell us about your pet...'**
  String get tellUsAboutYourPet;

  /// Label for icon selection
  ///
  /// In en, this message translates to:
  /// **'Select Icon'**
  String get selectIcon;

  /// Dialog title for editing group
  ///
  /// In en, this message translates to:
  /// **'Edit Group'**
  String get editGroupTitle;

  /// Dialog title for creating group
  ///
  /// In en, this message translates to:
  /// **'Create Group'**
  String get createGroupTitle;

  /// Subtitle in edit group dialog
  ///
  /// In en, this message translates to:
  /// **'Update group information'**
  String get updateGroupInformation;

  /// Subtitle in create group dialog
  ///
  /// In en, this message translates to:
  /// **'Organize your pets into groups'**
  String get organizeYourPetsIntoGroups;

  /// Hint for group name field
  ///
  /// In en, this message translates to:
  /// **'Enter group name'**
  String get enterGroupName;

  /// Validation error for group name
  ///
  /// In en, this message translates to:
  /// **'Please enter a group name'**
  String get pleaseEnterAGroupName;

  /// Hint for group description field
  ///
  /// In en, this message translates to:
  /// **'Describe this group...'**
  String get describeThisGroup;

  /// Button to save changes
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// Dialog title for deleting pet
  ///
  /// In en, this message translates to:
  /// **'Delete Pet'**
  String get deletePet;

  /// Confirmation message for deleting pet
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{petName}\"?\n\nThis will permanently delete:\n- The pet profile\n- All weight records\n- All feeding records\n\nThis action cannot be undone.'**
  String deletePetConfirm(String petName);

  /// Message after pet deletion
  ///
  /// In en, this message translates to:
  /// **'{petName} has been deleted'**
  String petHasBeenDeleted(String petName);

  /// Error message when pet not found
  ///
  /// In en, this message translates to:
  /// **'Pet not found'**
  String get petNotFound;

  /// Tags section title
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get tags;

  /// Add button
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// Empty state for tags
  ///
  /// In en, this message translates to:
  /// **'No tags yet'**
  String get noTagsYet;

  /// Latest weight card title
  ///
  /// In en, this message translates to:
  /// **'Latest Weight'**
  String get latestWeight;

  /// Empty state for weight records
  ///
  /// In en, this message translates to:
  /// **'No weight records yet'**
  String get noWeightRecordsYet;

  /// Edit button
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Dialog title for adding tag
  ///
  /// In en, this message translates to:
  /// **'Add Tag'**
  String get addTag;

  /// Label for tag name field
  ///
  /// In en, this message translates to:
  /// **'Tag name'**
  String get tagName;

  /// Hint for tag name field
  ///
  /// In en, this message translates to:
  /// **'Enter tag name'**
  String get enterTagName;

  /// Empty state for feeding records
  ///
  /// In en, this message translates to:
  /// **'No feeding records yet'**
  String get noFeedingRecordsYet;

  /// Hint text for empty records
  ///
  /// In en, this message translates to:
  /// **'Tap the + button to add a record'**
  String get tapTheButtonToAddARecord;

  /// Button to add feeding record
  ///
  /// In en, this message translates to:
  /// **'Add Feeding'**
  String get addFeeding;

  /// Button to add weight record
  ///
  /// In en, this message translates to:
  /// **'Add Weight'**
  String get addWeight;

  /// Button to add medical record
  ///
  /// In en, this message translates to:
  /// **'Add Record'**
  String get addRecord;

  /// Empty state for medical records
  ///
  /// In en, this message translates to:
  /// **'No medical records yet'**
  String get noMedicalRecordsYet;

  /// Info tab label
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// Medical tab label
  ///
  /// In en, this message translates to:
  /// **'Medical'**
  String get medical;

  /// Weight tab label
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// Feeding tab label
  ///
  /// In en, this message translates to:
  /// **'Feeding'**
  String get feeding;

  /// Dialog title for adding feeding record
  ///
  /// In en, this message translates to:
  /// **'Add Feeding Record'**
  String get addFeedingRecord;

  /// Dialog title for editing feeding record
  ///
  /// In en, this message translates to:
  /// **'Edit Feeding Record'**
  String get editFeedingRecord;

  /// Subtitle in add feeding dialog
  ///
  /// In en, this message translates to:
  /// **'Record your pet\'s feeding'**
  String get recordYourPetsFeeding;

  /// Subtitle in edit feeding dialog
  ///
  /// In en, this message translates to:
  /// **'Update feeding information'**
  String get updateFeedingInformation;

  /// Label for food type field
  ///
  /// In en, this message translates to:
  /// **'Food Type'**
  String get foodType;

  /// Hint for food type field
  ///
  /// In en, this message translates to:
  /// **'Select food type'**
  String get selectFoodType;

  /// Validation error for food type
  ///
  /// In en, this message translates to:
  /// **'Please select a food type'**
  String get pleaseSelectAFoodType;

  /// Label for amount field
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// Hint for amount field
  ///
  /// In en, this message translates to:
  /// **'Enter amount'**
  String get enterAmount;

  /// Validation error for amount
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid amount (0.5-1000)'**
  String get pleaseEnterAValidAmount;

  /// Label for date field
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// Hint for date field
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get selectDate;

  /// Label for notes field
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// Hint for notes field
  ///
  /// In en, this message translates to:
  /// **'Enter notes (optional)'**
  String get enterNotes;

  /// Dialog title for adding weight record
  ///
  /// In en, this message translates to:
  /// **'Add Weight Record'**
  String get addWeightRecord;

  /// Dialog title for editing weight record
  ///
  /// In en, this message translates to:
  /// **'Edit Weight Record'**
  String get editWeightRecord;

  /// Subtitle in add weight dialog
  ///
  /// In en, this message translates to:
  /// **'Record your cat\'s weight'**
  String get recordYourCatsWeight;

  /// Subtitle in edit weight dialog
  ///
  /// In en, this message translates to:
  /// **'Update weight information'**
  String get updateWeightInformation;

  /// Label for weight field
  ///
  /// In en, this message translates to:
  /// **'Weight (kg)'**
  String get weightKg;

  /// Hint for weight field
  ///
  /// In en, this message translates to:
  /// **'Enter weight'**
  String get enterWeight;

  /// Validation error for weight
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid weight'**
  String get pleaseEnterAValidWeight;

  /// Dialog title for adding medical record
  ///
  /// In en, this message translates to:
  /// **'Add Medical Record'**
  String get addMedicalRecord;

  /// Dialog title for editing medical record
  ///
  /// In en, this message translates to:
  /// **'Edit Medical Record'**
  String get editMedicalRecord;

  /// Subtitle in add medical dialog
  ///
  /// In en, this message translates to:
  /// **'Record medical information'**
  String get recordMedicalInformation;

  /// Subtitle in edit medical dialog
  ///
  /// In en, this message translates to:
  /// **'Update medical information'**
  String get updateMedicalInformation;

  /// Label for title field
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// Hint for title field
  ///
  /// In en, this message translates to:
  /// **'Enter title'**
  String get enterTitle;

  /// Validation error for title
  ///
  /// In en, this message translates to:
  /// **'Please enter a title'**
  String get pleaseEnterATitle;

  /// Confirmation message for deleting group with pets (fixed)
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{groupName}\"?\n\nThis will remove {count} pet(s) from this group.'**
  String deleteGroupConfirmWithPetsFixed(String groupName, int count);

  /// Dialog title for editing pet
  ///
  /// In en, this message translates to:
  /// **'Edit Pet Information'**
  String get editPetInformation;

  /// Subtitle in edit pet dialog
  ///
  /// In en, this message translates to:
  /// **'Update your pet\'s details'**
  String get updateYourPetsDetails;

  /// Label for group selection field
  ///
  /// In en, this message translates to:
  /// **'Group (optional)'**
  String get groupOptional;

  /// Hint for group selection
  ///
  /// In en, this message translates to:
  /// **'Select a group'**
  String get selectAGroup;

  /// Option for no group
  ///
  /// In en, this message translates to:
  /// **'No Group'**
  String get noGroup;

  /// Description section title
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// Group section title
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get group;

  /// App bar title when cat not found
  ///
  /// In en, this message translates to:
  /// **'Cat Not Found'**
  String get catNotFound;

  /// Help page title
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// Theme color button tooltip
  ///
  /// In en, this message translates to:
  /// **'Change theme color'**
  String get changeThemeColor;

  /// Theme color picker dialog title
  ///
  /// In en, this message translates to:
  /// **'Theme Color'**
  String get themeColor;

  /// Snackbar message when food type is added
  ///
  /// In en, this message translates to:
  /// **'{foodType} added'**
  String foodTypeAdded(String foodType);

  /// Dialog title for deleting food type
  ///
  /// In en, this message translates to:
  /// **'Delete Food Type'**
  String get deleteFoodType;

  /// Confirmation message for deleting food type
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{foodType}\"?\n\nThis will remove it from all feeding records.'**
  String deleteFoodTypeConfirm(String foodType);

  /// Dialog title for editing food type
  ///
  /// In en, this message translates to:
  /// **'Edit Food Type'**
  String get editFoodType;

  /// Hint for food type input
  ///
  /// In en, this message translates to:
  /// **'Enter food type name'**
  String get enterFoodTypeName;

  /// Validation message for food type name
  ///
  /// In en, this message translates to:
  /// **'Please enter a food type name'**
  String get pleaseEnterAFoodTypeName;

  /// Button label for group feeding
  ///
  /// In en, this message translates to:
  /// **'Save to All Cats'**
  String get saveToAllCats;

  /// Message when group feeding is partially successful
  ///
  /// In en, this message translates to:
  /// **'Added to {successCount} cat(s). {failedCount} cat(s) already have 5 records for this day.'**
  String addedToCats(int successCount, int failedCount);

  /// Message when group feeding is fully successful
  ///
  /// In en, this message translates to:
  /// **'Added to all {count} cat(s) successfully.'**
  String addedToAllCats(int count);

  /// Dialog title for group feeding
  ///
  /// In en, this message translates to:
  /// **'Group Feeding'**
  String get groupFeeding;

  /// Subtitle for group feeding dialog
  ///
  /// In en, this message translates to:
  /// **'Record feeding for all pets in this group'**
  String get recordFeedingForAllPetsInGroup;

  /// Help section title
  ///
  /// In en, this message translates to:
  /// **'Getting Started'**
  String get gettingStarted;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Creating Your First Pet'**
  String get creatingYourFirstPet;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Tap the \"New Group\" button at the bottom to create a group, then tap \"Add Pet\" to add your first pet to the group.'**
  String get creatingYourFirstPetDescription;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Adding Pets'**
  String get addingPets;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'You can add pets directly to a group or add them without a group. Pets can be moved between groups later.'**
  String get addingPetsDescription;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Pet Types'**
  String get petTypes;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Choose between Cat or Dog when adding a pet. You can also select a custom icon for each pet.'**
  String get petTypesDescription;

  /// Help section title
  ///
  /// In en, this message translates to:
  /// **'Managing Pets'**
  String get managingPets;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Viewing Pet Details'**
  String get viewingPetDetails;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Tap on any pet in the list to view detailed information, including weight records, feeding history, and medical records.'**
  String get viewingPetDetailsDescription;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Editing Pet Information'**
  String get editingPetInformation;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Tap the \"Edit\" button in the pet\'s info tab to update name, description, icon, or group assignment.'**
  String get editingPetInformationDescription;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Deleting Pets'**
  String get deletingPets;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Use the \"Delete\" button in the pet\'s info tab to permanently remove a pet and all associated records.'**
  String get deletingPetsDescription;

  /// Help section title
  ///
  /// In en, this message translates to:
  /// **'Recording Data'**
  String get recordingData;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Weight Records'**
  String get weightRecords;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Track your pet\'s weight over time. Tap the + button in the Weight tab to add a new record.'**
  String get weightRecordsDescription;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Feeding Records'**
  String get feedingRecords;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Record feeding times, food types, and amounts. You can add up to 5 records per day per pet.'**
  String get feedingRecordsDescription;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Medical Records'**
  String get medicalRecords;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Keep track of vet visits, medications, vaccinations, and other medical information.'**
  String get medicalRecordsDescription;

  /// Help section title
  ///
  /// In en, this message translates to:
  /// **'Groups & Organization'**
  String get groupsAndOrganization;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Creating Groups'**
  String get creatingGroups;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Create groups to organize your pets. Tap \"New Group\" to create a group, then add pets to it.'**
  String get creatingGroupsDescription;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Use the group feeding feature to record the same feeding for all pets in a group at once.'**
  String get groupFeedingDescription;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Add tags to pets for easy filtering. Tap \"Add\" in the Tags section to create custom tags.'**
  String get tagsDescription;

  /// Help section title
  ///
  /// In en, this message translates to:
  /// **'Data Management'**
  String get dataManagement;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Exporting Data'**
  String get exportingData;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Export your data to share or backup. Go to Settings and tap \"Export Data\".'**
  String get exportingDataDescription;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Importing Data'**
  String get importingData;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Import previously exported data to restore your pets and records.'**
  String get importingDataDescription;

  /// Help section title
  ///
  /// In en, this message translates to:
  /// **'Food Types'**
  String get foodTypes;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Managing Food Types'**
  String get managingFoodTypes;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Go to the menu (three dots) in the top-right corner and select \"Manage Food Types\" to add, edit, or remove food types.'**
  String get managingFoodTypesDescription;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Using Food Types'**
  String get usingFoodTypes;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'When adding a feeding record, select from your saved food types. This helps maintain consistency in tracking.'**
  String get usingFoodTypesDescription;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Local Storage'**
  String get localStorage;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'All your data is stored locally on your device. Your pet information stays private and is accessible offline.'**
  String get localStorageDescription;

  /// Help section title
  ///
  /// In en, this message translates to:
  /// **'Customization'**
  String get customization;

  /// Help item title
  ///
  /// In en, this message translates to:
  /// **'Theme Colors'**
  String get themeColors;

  /// Help item description
  ///
  /// In en, this message translates to:
  /// **'Change the app\'s theme color by tapping the palette icon in the top-right corner. Choose from a variety of colors to personalize your experience.'**
  String get themeColorsDescription;

  /// Message in group feeding dialog
  ///
  /// In en, this message translates to:
  /// **'This will add a feeding record to {count} cat(s):'**
  String thisWillAddAFeedingRecordToCats(int count);

  /// Singular form of type
  ///
  /// In en, this message translates to:
  /// **'type'**
  String get type;

  /// Plural form of type
  ///
  /// In en, this message translates to:
  /// **'types'**
  String get types;

  /// Empty state message for food types
  ///
  /// In en, this message translates to:
  /// **'No food types yet'**
  String get noFoodTypesYet;

  /// Label for food type name input
  ///
  /// In en, this message translates to:
  /// **'Food Type Name'**
  String get foodTypeName;

  /// Section title for adding food type
  ///
  /// In en, this message translates to:
  /// **'Add New Food Type'**
  String get addNewFoodType;

  /// Subtitle for food types dialog
  ///
  /// In en, this message translates to:
  /// **'Add and manage food types for feeding records'**
  String get addAndManageFoodTypesForFeedingRecords;

  /// Default group name for indoor pets
  ///
  /// In en, this message translates to:
  /// **'Indoor Pets'**
  String get defaultGroupIndoorPets;

  /// Default group description for indoor pets
  ///
  /// In en, this message translates to:
  /// **'Pets that stay indoors'**
  String get defaultGroupIndoorPetsDescription;

  /// Default group name for outdoor pets
  ///
  /// In en, this message translates to:
  /// **'Outdoor Pets'**
  String get defaultGroupOutdoorPets;

  /// Default group description for outdoor pets
  ///
  /// In en, this message translates to:
  /// **'Pets that go outside'**
  String get defaultGroupOutdoorPetsDescription;

  /// Default group name for young pets
  ///
  /// In en, this message translates to:
  /// **'Young Pets'**
  String get defaultGroupYoungPets;

  /// Default group description for young pets
  ///
  /// In en, this message translates to:
  /// **'Young pets under 1 year'**
  String get defaultGroupYoungPetsDescription;

  /// Default pet name - Whiskers
  ///
  /// In en, this message translates to:
  /// **'Whiskers'**
  String get defaultPetWhiskersName;

  /// Default pet description - Whiskers
  ///
  /// In en, this message translates to:
  /// **'A playful orange tabby who loves to explore'**
  String get defaultPetWhiskersDescription;

  /// Default pet name - Luna
  ///
  /// In en, this message translates to:
  /// **'Luna'**
  String get defaultPetLunaName;

  /// Default pet description - Luna
  ///
  /// In en, this message translates to:
  /// **'A graceful black cat with green eyes'**
  String get defaultPetLunaDescription;

  /// Default pet name - Max
  ///
  /// In en, this message translates to:
  /// **'Max'**
  String get defaultPetMaxName;

  /// Default pet description - Max
  ///
  /// In en, this message translates to:
  /// **'A friendly golden retriever'**
  String get defaultPetMaxDescription;

  /// Default food type - wet food
  ///
  /// In en, this message translates to:
  /// **'Wet food'**
  String get defaultFoodTypeWetFood;

  /// Default food type - dry food
  ///
  /// In en, this message translates to:
  /// **'Dry Food'**
  String get defaultFoodTypeDryFood;

  /// Label for today's date
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// Label for yesterday's date
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// Dialog title for deleting weight record
  ///
  /// In en, this message translates to:
  /// **'Delete Weight Record'**
  String get deleteWeightRecord;

  /// Confirmation message for deleting weight record
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this weight record ({weight} kg)?'**
  String deleteWeightRecordConfirm(String weight);

  /// Dialog title for deleting feeding record
  ///
  /// In en, this message translates to:
  /// **'Delete Feeding Record'**
  String get deleteFeedingRecord;

  /// Confirmation message for deleting feeding record
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this feeding record ({foodType} • {amount}g)?'**
  String deleteFeedingRecordConfirm(String foodType, String amount);

  /// Dialog title for deleting medical record
  ///
  /// In en, this message translates to:
  /// **'Delete Medical Record'**
  String get deleteMedicalRecord;

  /// Confirmation message for deleting medical record
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{title}\"?'**
  String deleteMedicalRecordConfirm(String title);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'de',
        'en',
        'es',
        'fr',
        'it',
        'ja',
        'ko',
        'nl',
        'pt',
        'th',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'HK':
            return AppLocalizationsZhHk();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'th':
      return AppLocalizationsTh();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
