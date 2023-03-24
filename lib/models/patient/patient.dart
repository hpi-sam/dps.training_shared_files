// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:dps.training_shared_files/models/applied_measures/applied_measures.dart';
import 'package:dps.training_shared_files/models/available_measures/available_measures.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

/// Defines the patient data model.
/// The package freezed is used to auto-generate the code for the immutable data classes annotated
/// via @freezed.
///
/// If you change anything on the data models, make sure to run the following command:
/// flutter pub run build_runner build --delete-conflicting-outputs
///
/// If you want to rebuild every time you save this file (recommended), run the following command:
/// flutter pub run build_runner watch --delete-conflicting-outputs
///
/// For more information on the freezed package see the official documentation:
/// https://pub.dev/packages/freezed
@freezed
class Patient with _$Patient {
  const Patient._();
  const factory Patient({
    required int helperNr,
    // This is the full DPSCode as provided by the dps naming system.
    required String completeDpsCode,
    // Short version of dps code, used internally by frontend to identify patient
    required String patientDpsCode,
    required PatientCurrentPhase currentPhase,
    required PatientFirstImpression firstImpression,
    required PatientPersonalData personalData,
    required PatientInjuries injuries,
    required String injuryDescription,
    required String bodyCheckInformation,
    required String situationOfDiscovery,
    required String triageCategory,
    required AppliedMeasures appliedMeasures,
    required bool isCheckedOut,
    required bool isAlive,
    @Default(null) AvailableMeasures? availableMeasures,
  }) = _Patient;

  get name => personalData.name;
  get address => personalData.address;
  get birth_date => personalData.birth_date;
  get age => personalData.age;
  get gender => personalData.gender;
  get biometrics => personalData.biometrics;

  /// Creates a [Patient] from the given [patientJson]. The [patientJson] must conform to our
  /// API specification (https://github.com/hpi-sam/BPMANV-Server/blob/dev/api_spezification.md)
  factory Patient.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> patientJson = json['content']['patient'];
    final Map<String, dynamic> jsonContentPart = json['content'];

    return Patient(
      helperNr: json['helper_nr'],
      completeDpsCode: patientJson["static_data"]["dps_code"],
      patientDpsCode: json['patient_dps_code'],
      currentPhase: PatientCurrentPhase.fromJson(
        patientJson["current_phase"],
      ),
      firstImpression: PatientFirstImpression.fromJson(
        patientJson["static_data"]["first_impression"],
      ),
      personalData: PatientPersonalData.fromJson(
        patientJson["static_data"]["personal_data"],
      ),
      injuries: PatientInjuries.fromJson(
        // a bit hacky to work with lists, see: https://github.com/rrousselGit/freezed/issues/173
        {'injuries': patientJson["static_data"]["injuries"],},
      ),
      injuryDescription: patientJson["static_data"]["injury_description"],
      bodyCheckInformation: patientJson["static_data"]
          ["body_check_information"],
      situationOfDiscovery: patientJson["static_data"]
          ["situation_of_discovery"],
      triageCategory: patientJson["triage"],
      appliedMeasures: AppliedMeasures.fromJson(jsonContentPart),
      isCheckedOut: patientJson["is_checked_out"],
      isAlive: patientJson["is_alive"],
    );
  }
}

/// Model that contains all relevant information about the current phase of a
/// [Patient]. Based on the dPS patient model.
@freezed
class PatientCurrentPhase with _$PatientCurrentPhase {
  const PatientCurrentPhase._();

  const factory PatientCurrentPhase({
    required PatientStandardDiagnosticData standardDiagnosticData,
    required String ekg,
    required String pulmonary_auscultation,
    required String blood_pressure,
    required String spo2,
    required String spco,
  }) = _PatientCurrentPhase;

  factory PatientCurrentPhase.fromJson(Map<String, dynamic> json) {
    return PatientCurrentPhase(
      standardDiagnosticData:
          PatientStandardDiagnosticData.fromJson(json["standard_diagnostic"]),
      ekg: json["ekg"],
      pulmonary_auscultation: json["pulmonary_auscultation"],
      blood_pressure: json["blood_pressure"],
      spo2: json["spo2"],
      spco: json["spco"],
    );
  }
}

/// Model that contains all relevant information about the standard diagnostic data
/// of a [Patient]. Based on the dPS patient model.
@freezed
class PatientStandardDiagnosticData with _$PatientStandardDiagnosticData {
  const PatientStandardDiagnosticData._();

  const factory PatientStandardDiagnosticData({
    required PatientBreathing breathing,
    required PatientCirculation circulation,
    required PatientDisability disability,
    required PatientExposure exposure,
    required String airway,
    required String exsang_hemorrhage,
    required String psyche,
  }) = _PatientStandardDiagnosticData;

  factory PatientStandardDiagnosticData.fromJson(Map<String, dynamic> json) {
    return PatientStandardDiagnosticData(
      breathing: PatientBreathing.fromJson(json["breathing"]),
      circulation: PatientCirculation.fromJson(json["circulation"]),
      disability: PatientDisability.fromJson(json["disability"]),
      exposure: PatientExposure.fromJson(json["exposure"]),
      airway: json["airway"],
      exsang_hemorrhage: json["exsang_hemorrhage"],
      psyche: json["psyche"],
    );
  }
}

/// Model that contains all relevant information regarding breathing
/// of a [Patient]. Based on the dPS patient model.
@freezed
class PatientBreathing with _$PatientBreathing {
  const factory PatientBreathing({
    required String pattern,
    required String frequency,
    required bool has_cyanosis,
  }) = _PatientBreathing;
  factory PatientBreathing.fromJson(Map<String, dynamic> json) =>
      _$PatientBreathingFromJson(json);
}

/// Model that contains all relevant information regarding circulation
/// of a [Patient]. Based on the dPS patient model.
@freezed
class PatientCirculation with _$PatientCirculation {
  const factory PatientCirculation({
    required String rhythm,
    required String pulse,
    required String pulse_place,
    required String recap,
  }) = _PatientCirculation;
  factory PatientCirculation.fromJson(Map<String, dynamic> json) =>
      _$PatientCirculationFromJson(json);
}

/// Model that contains all relevant information regarding disabilities
/// of a [Patient]. Based on the dPS patient model.
@freezed
class PatientDisability with _$PatientDisability {
  const factory PatientDisability({
    required String pupils,
    required int gcs_eyes,
    required int gcs_language,
    required int gcs_motoric_behaviour,
  }) = _PatientDisability;
  factory PatientDisability.fromJson(Map<String, dynamic> json) =>
      _$PatientDisabilityFromJson(json);
}

/// Model that contains all relevant information regarding exposure
/// of a [Patient]. Based on the dPS patient model.
@freezed
class PatientExposure with _$PatientExposure {
  const factory PatientExposure({
    required String pain,
    required String skin,
  }) = _PatientExposure;
  factory PatientExposure.fromJson(Map<String, dynamic> json) =>
      _$PatientExposureFromJson(json);
}

/// Model that contains all relevant personal information of a [Patient].
/// Based on the dPS patient model.
@freezed
class PatientPersonalData with _$PatientPersonalData {
  const factory PatientPersonalData({
    required String name,
    required String address,
    required String birth_date,
    required int age,
    required String gender,
    required String biometrics,
  }) = _PatientPersonalData;
  factory PatientPersonalData.fromJson(Map<String, dynamic> json) =>
      _$PatientPersonalDataFromJson(json);
}

/// Model that contains all relevant first impression information
/// of a [Patient]. Based on the dPS patient model.
@freezed
class PatientFirstImpression with _$PatientFirstImpression {
  const factory PatientFirstImpression({
    required bool can_walk,
    required bool is_bleeding,
    required bool is_bleeding_critically,
    required bool is_motionless,
    required bool has_cyanosis,
  }) = _PatientFirstImpression;
  factory PatientFirstImpression.fromJson(Map<String, dynamic> json) =>
      _$PatientFirstImpressionFromJson(json);
}

/// Model that contains all relevant information regarding injuries
/// of a [Patient]. Based on the dPS patient model.
@freezed
class PatientInjuries with _$PatientInjuries {
  const PatientInjuries._();
  const factory PatientInjuries({
    required List injuries,
  }) = _PatientInjuries;
  factory PatientInjuries.fromJson(Map<String, dynamic> json) =>
      _$PatientInjuriesFromJson(json);

  List<String> _injuriesOf(String location) {
    List<String> result = [];

    injuries.forEach((injury) {
      if (injury["location"] == location) {
        result.add(injury["injury_type"]);
      }
    });

    return result;
  }

  get head => _injuriesOf("head");
  get left_arm => _injuriesOf("left arm");
  get right_arm => _injuriesOf("right arm");
  get thorax => _injuriesOf("thorax");
  get abdomen => _injuriesOf("abdomen");
  get pelvis => _injuriesOf("pelvis");
  get left_leg => _injuriesOf("left leg");
  get right_leg => _injuriesOf("right leg");
  get neck => _injuriesOf("neck");
}
