// ignore_for_file: non_constant_identifier_names

/// This class provides the Strings used in this package. Note that fields need
/// to be initialized by calling buildDefaultGermanOptions(), before using them.
abstract class LocalizedStrings {
  static late String languageCode;

  static late String biometryWidget_title;
  static late String biometryWidget_address;
  static late String biometryWidget_biometrics;
  static late String biometryWidget_birthDate;
  static late String biometryWidget_gender;
  static late String diverse;
  static late String female;
  static late String male;
  static late String years;
  static late String appTitle;
  static late String backButton;
  static late String cancelButton;
  static late String firstImpressionRow_firstImpressionfields_bleeding;
  static late String firstImpressionRow_firstImpressionfields_canWalk;
  static late String firstImpressionRow_firstImpressionfields_cyanosis;
  static late String firstImpressionRow_firstImpressionfields_motionless;
  static late String generalInformationWidget_title;
  static late String generalInformationWidget_injuries_title;
  static late String generalInformationWidget_situationOfDiscovery_title;
  static late String patientVisualizationLegendWidget_bleeding;
  static late String patientVisualizationLegendWidget_bleedingSplattering;
  static late String patientVisualizationLegendWidget_fracture;
  static late String phaseInformationWidget_airwayInformation_title;
  static late String phaseInformationWidget_bloodPressureInformation_title;
  static late String phaseInformationWidget_breathingInformation_cyanosis;
  static late String phaseInformationWidget_breathingInformation_title;
  static late String phaseInformationWidget_circulationInformation_title;
  static late String phaseInformationWidget_disabilityInformation_gcs_eye;
  static late String phaseInformationWidget_disabilityInformation_gcs_motor;
  static late String phaseInformationWidget_disabilityInformation_gcs_title;
  static late String phaseInformationWidget_disabilityInformation_gcs_verbal;
  static late String phaseInformationWidget_disabilityInformation_pupils;
  static late String phaseInformationWidget_disabilityInformation_title;
  static late String phaseInformationWidget_ekgInformation_title;
  static late String phaseInformationWidget_exposureInformation_pain;
  static late String phaseInformationWidget_exposureInformation_skin;
  static late String phaseInformationWidget_exposureInformation_title;
  static late String phaseInformationWidget_exsangInformation_title;
  static late String phaseInformationWidget_hiddenInformation_title;
  static late String phaseInformationWidget_lungsInformation_title;
  static late String phaseInformationWidget_psycheInformation_title;
  static late String phaseInformationWidget_spcoInformation_title;
  static late String phaseInformationWidget_spo2Information_title;
  static late String phaseInformationWidget_notMeasurableInformation_title;
  static late String phaseInformationWidget_noValueInformation_title;
  static late String phaseInformationWidget_bodyCheckInformation_title;
  static late String phaseInformationWidget_dead_patient;

  /// initializes fields with German strings
  static void buildDefaultGermanStrings() {
    {
      languageCode = "de";
      biometryWidget_title = "Persönliche Daten";
      biometryWidget_address = "Adresse: ";
      biometryWidget_biometrics = "Biometrie: ";
      biometryWidget_birthDate = "Geburtsdatum: ";
      biometryWidget_gender = "Geschlecht: ";
      diverse = "Divers";
      female = "Weiblich";
      male = "Männlich";
      years = "Jahre";
      appTitle = "Digital DPS";
      backButton = "Zurück";
      cancelButton = "Abbrechen";
      firstImpressionRow_firstImpressionfields_bleeding = "Blutung";
      firstImpressionRow_firstImpressionfields_canWalk = "Gehfähig";
      firstImpressionRow_firstImpressionfields_cyanosis = "Zyanose";
      firstImpressionRow_firstImpressionfields_motionless = "Regungslos";
      generalInformationWidget_title = "Auffindesituation";
      generalInformationWidget_injuries_title = "Verletzungen";
      generalInformationWidget_situationOfDiscovery_title =
          "Auffinde-Situation";
      patientVisualizationLegendWidget_bleeding = "Blutung";
      patientVisualizationLegendWidget_bleedingSplattering = "spritzende Blu.";
      patientVisualizationLegendWidget_fracture = "Fraktur";
      phaseInformationWidget_airwayInformation_title = "A - Airway";
      phaseInformationWidget_bloodPressureInformation_title = "RR";
      phaseInformationWidget_breathingInformation_cyanosis = " Zyanose";
      phaseInformationWidget_breathingInformation_title = "B - Breathing";
      phaseInformationWidget_circulationInformation_title = "C - Circulation";
      phaseInformationWidget_disabilityInformation_gcs_eye = "Aug.  ";
      phaseInformationWidget_disabilityInformation_gcs_motor = "Mot.  ";
      phaseInformationWidget_disabilityInformation_gcs_title = "GCS: ";
      phaseInformationWidget_disabilityInformation_gcs_verbal = "Spr.  ";
      phaseInformationWidget_disabilityInformation_pupils = "Pupillen: ";
      phaseInformationWidget_disabilityInformation_title = "D - Disability";
      phaseInformationWidget_ekgInformation_title = "EKG";
      phaseInformationWidget_exposureInformation_pain = "Schmerz: ";
      phaseInformationWidget_exposureInformation_skin = "Haut: ";
      phaseInformationWidget_exposureInformation_title = "E - Exposure";
      phaseInformationWidget_exsangInformation_title = "x - exsang. Hemorrhage";
      phaseInformationWidget_hiddenInformation_title = "Noch nicht erhoben";
      phaseInformationWidget_lungsInformation_title = "Auskultation Lunge";
      phaseInformationWidget_psycheInformation_title = "Psyche";
      phaseInformationWidget_spcoInformation_title = "SpCO";
      phaseInformationWidget_spo2Information_title = "SpO2";
      phaseInformationWidget_notMeasurableInformation_title =
          "Wert nicht messbar";
      phaseInformationWidget_noValueInformation_title = "Keine Daten";
      phaseInformationWidget_bodyCheckInformation_title = "Body-Check";
      phaseInformationWidget_dead_patient = "Der Patient ist leblos";
    }
  }
}
