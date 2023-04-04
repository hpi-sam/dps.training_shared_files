import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'shared_files_localizations_de.dart';

/// Callers can lookup localized strings with an instance of SharedFilesLocalizations
/// returned by `SharedFilesLocalizations.of(context)`.
///
/// Applications need to include `SharedFilesLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/shared_files_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: SharedFilesLocalizations.localizationsDelegates,
///   supportedLocales: SharedFilesLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the SharedFilesLocalizations.supportedLocales
/// property.
abstract class SharedFilesLocalizations {
  SharedFilesLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static SharedFilesLocalizations? of(BuildContext context) {
    return Localizations.of<SharedFilesLocalizations>(context, SharedFilesLocalizations);
  }

  static const LocalizationsDelegate<SharedFilesLocalizations> delegate = _SharedFilesLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de')
  ];

  /// No description provided for @biometryWidget_name.
  ///
  /// In de, this message translates to:
  /// **'Name'**
  String get biometryWidget_name;

  /// No description provided for @biometryWidget_title.
  ///
  /// In de, this message translates to:
  /// **'Persönliche Daten'**
  String get biometryWidget_title;

  /// No description provided for @biometryWidget_address.
  ///
  /// In de, this message translates to:
  /// **'Adresse: '**
  String get biometryWidget_address;

  /// No description provided for @biometryWidget_biometrics.
  ///
  /// In de, this message translates to:
  /// **'Biometrie: '**
  String get biometryWidget_biometrics;

  /// No description provided for @biometryWidget_birthDate.
  ///
  /// In de, this message translates to:
  /// **'Geburtsdatum: '**
  String get biometryWidget_birthDate;

  /// No description provided for @biometryWidget_gender.
  ///
  /// In de, this message translates to:
  /// **'Geschlecht: '**
  String get biometryWidget_gender;

  /// No description provided for @diverse.
  ///
  /// In de, this message translates to:
  /// **'Divers'**
  String get diverse;

  /// No description provided for @female.
  ///
  /// In de, this message translates to:
  /// **'Weiblich'**
  String get female;

  /// No description provided for @male.
  ///
  /// In de, this message translates to:
  /// **'Männlich'**
  String get male;

  /// Date of birth of a patient followed by the age in brackets.
  ///
  /// In de, this message translates to:
  /// **'{date} ({age} Jahre) '**
  String biometryWidget_dateOfBirthAndAge(DateTime date, num age);

  /// No description provided for @appTitle.
  ///
  /// In de, this message translates to:
  /// **'dps.training'**
  String get appTitle;

  /// No description provided for @backButton.
  ///
  /// In de, this message translates to:
  /// **'Zurück'**
  String get backButton;

  /// No description provided for @cancelButton.
  ///
  /// In de, this message translates to:
  /// **'Abbrechen'**
  String get cancelButton;

  /// No description provided for @firstImpressionRow_firstImpressionfields_bleeding.
  ///
  /// In de, this message translates to:
  /// **'Blutung'**
  String get firstImpressionRow_firstImpressionfields_bleeding;

  /// No description provided for @firstImpressionRow_firstImpressionfields_canWalk.
  ///
  /// In de, this message translates to:
  /// **'Gehfähig'**
  String get firstImpressionRow_firstImpressionfields_canWalk;

  /// No description provided for @firstImpressionRow_firstImpressionfields_cyanosis.
  ///
  /// In de, this message translates to:
  /// **'Zyanose'**
  String get firstImpressionRow_firstImpressionfields_cyanosis;

  /// No description provided for @firstImpressionRow_firstImpressionfields_motionless.
  ///
  /// In de, this message translates to:
  /// **'Regungslos'**
  String get firstImpressionRow_firstImpressionfields_motionless;

  /// No description provided for @generalInformationWidget_title.
  ///
  /// In de, this message translates to:
  /// **'Auffindesituation'**
  String get generalInformationWidget_title;

  /// No description provided for @generalInformationWidget_injuries_title.
  ///
  /// In de, this message translates to:
  /// **'Verletzungen'**
  String get generalInformationWidget_injuries_title;

  /// No description provided for @generalInformationWidget_situationOfDiscovery_title.
  ///
  /// In de, this message translates to:
  /// **'Auffinde-Situation'**
  String get generalInformationWidget_situationOfDiscovery_title;

  /// No description provided for @patientVisualizationLegendWidget_bleeding.
  ///
  /// In de, this message translates to:
  /// **'Blutung'**
  String get patientVisualizationLegendWidget_bleeding;

  /// No description provided for @patientVisualizationLegendWidget_bleedingSplattering.
  ///
  /// In de, this message translates to:
  /// **'spritzende Blu.'**
  String get patientVisualizationLegendWidget_bleedingSplattering;

  /// No description provided for @patientVisualizationLegendWidget_fracture.
  ///
  /// In de, this message translates to:
  /// **'Fraktur'**
  String get patientVisualizationLegendWidget_fracture;

  /// No description provided for @phaseInformationWidget_airwayInformation_title.
  ///
  /// In de, this message translates to:
  /// **'A - Airway'**
  String get phaseInformationWidget_airwayInformation_title;

  /// No description provided for @phaseInformationWidget_bloodPressureInformation_title.
  ///
  /// In de, this message translates to:
  /// **'RR'**
  String get phaseInformationWidget_bloodPressureInformation_title;

  /// No description provided for @phaseInformationWidget_breathingInformation_cyanosis.
  ///
  /// In de, this message translates to:
  /// **' Zyanose'**
  String get phaseInformationWidget_breathingInformation_cyanosis;

  /// No description provided for @phaseInformationWidget_breathingInformation_title.
  ///
  /// In de, this message translates to:
  /// **'B - Breathing'**
  String get phaseInformationWidget_breathingInformation_title;

  /// No description provided for @phaseInformationWidget_circulationInformation_title.
  ///
  /// In de, this message translates to:
  /// **'C - Circulation'**
  String get phaseInformationWidget_circulationInformation_title;

  /// No description provided for @phaseInformationWidget_disabilityInformation_gcs_eye.
  ///
  /// In de, this message translates to:
  /// **'Aug.  '**
  String get phaseInformationWidget_disabilityInformation_gcs_eye;

  /// No description provided for @phaseInformationWidget_disabilityInformation_gcs_motor.
  ///
  /// In de, this message translates to:
  /// **'Mot.  '**
  String get phaseInformationWidget_disabilityInformation_gcs_motor;

  /// No description provided for @phaseInformationWidget_disabilityInformation_gcs_title.
  ///
  /// In de, this message translates to:
  /// **'GCS: '**
  String get phaseInformationWidget_disabilityInformation_gcs_title;

  /// No description provided for @phaseInformationWidget_disabilityInformation_gcs_verbal.
  ///
  /// In de, this message translates to:
  /// **'Spr.  '**
  String get phaseInformationWidget_disabilityInformation_gcs_verbal;

  /// No description provided for @phaseInformationWidget_disabilityInformation_pupils.
  ///
  /// In de, this message translates to:
  /// **'Pupillen: '**
  String get phaseInformationWidget_disabilityInformation_pupils;

  /// No description provided for @phaseInformationWidget_disabilityInformation_title.
  ///
  /// In de, this message translates to:
  /// **'D - Disability'**
  String get phaseInformationWidget_disabilityInformation_title;

  /// No description provided for @phaseInformationWidget_ekgInformation_title.
  ///
  /// In de, this message translates to:
  /// **'EKG'**
  String get phaseInformationWidget_ekgInformation_title;

  /// No description provided for @phaseInformationWidget_exposureInformation_pain.
  ///
  /// In de, this message translates to:
  /// **'Schmerz: '**
  String get phaseInformationWidget_exposureInformation_pain;

  /// No description provided for @phaseInformationWidget_exposureInformation_skin.
  ///
  /// In de, this message translates to:
  /// **'Haut: '**
  String get phaseInformationWidget_exposureInformation_skin;

  /// No description provided for @phaseInformationWidget_exposureInformation_title.
  ///
  /// In de, this message translates to:
  /// **'E - Exposure'**
  String get phaseInformationWidget_exposureInformation_title;

  /// No description provided for @phaseInformationWidget_exsangInformation_title.
  ///
  /// In de, this message translates to:
  /// **'x - exsang. Hemorrhage'**
  String get phaseInformationWidget_exsangInformation_title;

  /// No description provided for @phaseInformationWidget_hiddenInformation_title.
  ///
  /// In de, this message translates to:
  /// **'Noch nicht erhoben'**
  String get phaseInformationWidget_hiddenInformation_title;

  /// No description provided for @phaseInformationWidget_lungsInformation_title.
  ///
  /// In de, this message translates to:
  /// **'Auskultation Lunge'**
  String get phaseInformationWidget_lungsInformation_title;

  /// No description provided for @phaseInformationWidget_psycheInformation_title.
  ///
  /// In de, this message translates to:
  /// **'Psyche'**
  String get phaseInformationWidget_psycheInformation_title;

  /// No description provided for @phaseInformationWidget_spcoInformation_title.
  ///
  /// In de, this message translates to:
  /// **'SpCO'**
  String get phaseInformationWidget_spcoInformation_title;

  /// No description provided for @phaseInformationWidget_spo2Information_title.
  ///
  /// In de, this message translates to:
  /// **'SpO2'**
  String get phaseInformationWidget_spo2Information_title;

  /// No description provided for @phaseInformationWidget_notMeasurableInformation_title.
  ///
  /// In de, this message translates to:
  /// **'Wert nicht messbar'**
  String get phaseInformationWidget_notMeasurableInformation_title;

  /// No description provided for @phaseInformationWidget_noValueInformation_title.
  ///
  /// In de, this message translates to:
  /// **'Keine Daten'**
  String get phaseInformationWidget_noValueInformation_title;

  /// No description provided for @phaseInformationWidget_bodyCheckInformation_title.
  ///
  /// In de, this message translates to:
  /// **'Body-Check'**
  String get phaseInformationWidget_bodyCheckInformation_title;

  /// No description provided for @phaseInformationWidget_dead_patient.
  ///
  /// In de, this message translates to:
  /// **'Der Patient ist leblos'**
  String get phaseInformationWidget_dead_patient;
}

class _SharedFilesLocalizationsDelegate extends LocalizationsDelegate<SharedFilesLocalizations> {
  const _SharedFilesLocalizationsDelegate();

  @override
  Future<SharedFilesLocalizations> load(Locale locale) {
    return SynchronousFuture<SharedFilesLocalizations>(lookupSharedFilesLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de'].contains(locale.languageCode);

  @override
  bool shouldReload(_SharedFilesLocalizationsDelegate old) => false;
}

SharedFilesLocalizations lookupSharedFilesLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return SharedFilesLocalizationsDe();
  }

  throw FlutterError(
    'SharedFilesLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
