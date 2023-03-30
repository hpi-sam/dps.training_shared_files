import 'package:intl/intl.dart' as intl;

import 'shared_files_localizations.dart';

/// The translations for German (`de`).
class SharedFilesLocalizationsDe extends SharedFilesLocalizations {
  SharedFilesLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get biometryWidget_name => 'Name';

  @override
  String get biometryWidget_title => 'Persönliche Daten';

  @override
  String get biometryWidget_address => 'Adresse: ';

  @override
  String get biometryWidget_biometrics => 'Biometrie: ';

  @override
  String get biometryWidget_birthDate => 'Geburtsdatum: ';

  @override
  String get biometryWidget_gender => 'Geschlecht: ';

  @override
  String get diverse => 'Divers';

  @override
  String get female => 'Weiblich';

  @override
  String get male => 'Männlich';

  @override
  String biometryWidget_dateOfBirthAndAge(DateTime date, num age) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    final intl.NumberFormat ageNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String ageString = ageNumberFormat.format(age);

    return '$dateString ($ageString Jahre) ';
  }

  @override
  String get appTitle => 'dps.training';

  @override
  String get backButton => 'Zurück';

  @override
  String get cancelButton => 'Abbrechen';

  @override
  String get firstImpressionRow_firstImpressionfields_bleeding => 'Blutung';

  @override
  String get firstImpressionRow_firstImpressionfields_canWalk => 'Gehfähig';

  @override
  String get firstImpressionRow_firstImpressionfields_cyanosis => 'Zyanose';

  @override
  String get firstImpressionRow_firstImpressionfields_motionless => 'Regungslos';

  @override
  String get generalInformationWidget_title => 'Auffindesituation';

  @override
  String get generalInformationWidget_injuries_title => 'Verletzungen';

  @override
  String get generalInformationWidget_situationOfDiscovery_title => 'Auffinde-Situation';

  @override
  String get patientVisualizationLegendWidget_bleeding => 'Blutung';

  @override
  String get patientVisualizationLegendWidget_bleedingSplattering => 'spritzende Blu.';

  @override
  String get patientVisualizationLegendWidget_fracture => 'Fraktur';

  @override
  String get phaseInformationWidget_airwayInformation_title => 'A - Airway';

  @override
  String get phaseInformationWidget_bloodPressureInformation_title => 'RR';

  @override
  String get phaseInformationWidget_breathingInformation_cyanosis => ' Zyanose';

  @override
  String get phaseInformationWidget_breathingInformation_title => 'B - Breathing';

  @override
  String get phaseInformationWidget_circulationInformation_title => 'C - Circulation';

  @override
  String get phaseInformationWidget_disabilityInformation_gcs_eye => 'Aug.  ';

  @override
  String get phaseInformationWidget_disabilityInformation_gcs_motor => 'Mot.  ';

  @override
  String get phaseInformationWidget_disabilityInformation_gcs_title => 'GCS: ';

  @override
  String get phaseInformationWidget_disabilityInformation_gcs_verbal => 'Spr.  ';

  @override
  String get phaseInformationWidget_disabilityInformation_pupils => 'Pupillen: ';

  @override
  String get phaseInformationWidget_disabilityInformation_title => 'D - Disability';

  @override
  String get phaseInformationWidget_ekgInformation_title => 'EKG';

  @override
  String get phaseInformationWidget_exposureInformation_pain => 'Schmerz: ';

  @override
  String get phaseInformationWidget_exposureInformation_skin => 'Haut: ';

  @override
  String get phaseInformationWidget_exposureInformation_title => 'E - Exposure';

  @override
  String get phaseInformationWidget_exsangInformation_title => 'x - exsang. Hemorrhage';

  @override
  String get phaseInformationWidget_hiddenInformation_title => 'Noch nicht erhoben';

  @override
  String get phaseInformationWidget_lungsInformation_title => 'Auskultation Lunge';

  @override
  String get phaseInformationWidget_psycheInformation_title => 'Psyche';

  @override
  String get phaseInformationWidget_spcoInformation_title => 'SpCO';

  @override
  String get phaseInformationWidget_spo2Information_title => 'SpO2';

  @override
  String get phaseInformationWidget_notMeasurableInformation_title => 'Wert nicht messbar';

  @override
  String get phaseInformationWidget_noValueInformation_title => 'Keine Daten';

  @override
  String get phaseInformationWidget_bodyCheckInformation_title => 'Body-Check';

  @override
  String get phaseInformationWidget_dead_patient => 'Der Patient ist leblos';
}
