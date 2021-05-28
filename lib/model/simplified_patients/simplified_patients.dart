// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simplified_patients.freezed.dart';
part 'simplified_patients.g.dart';

// The package freezed is used to auto-generate the code for the immutable data classes annotated
// via @freezed.
//
// If you change anything on the data models, make sure to run the following command:
// flutter pub run build_runner build --delete-conflicting-outputs
//
// If you want to rebuild every time you save this file (recommended), run the following command:
// flutter pub run build_runner watch --delete-conflicting-outputs
//
// For more information on the freezed package see the official documentation:
// https://pub.dev/packages/freezed

/// Defines the [SimplifiedPatientList] data model. A [SimplifiedPatientList]
/// consists of a List [patients] of [SimplifiedPatient].
///
/// This class is immutable and can be created from a json which confirms to the
/// response defined in the GET rooms/$roomID/patients/ route in the API specification.
@freezed
class SimplifiedPatientList with _$SimplifiedPatientList {
  const factory SimplifiedPatientList({
    required List<SimplifiedPatient> patients,
  }) = _SimplifiedPatientList;

  factory SimplifiedPatientList.fromJson(Map<String, dynamic> json) {
    return SimplifiedPatientList(patients: parseSimplifiedPatientList(json));
  }
}

/// Parses multiple patients in the given [json] into a list of [SimplifiedPatient].
List<SimplifiedPatient> parseSimplifiedPatientList(Map<String, dynamic> json) {
  final parsed = json["patients"].cast<Map<String, dynamic>>();
  return parsed
      .map<SimplifiedPatient>((json) => SimplifiedPatient.fromJson(json))
      .toList();
}

/// Defines the [SimplifiedPatient] data model. Not to be confused with the regular
/// [Patient], a [SimplifiedPatient] stores only the data which is most important
/// for a trainer to see in a list of all patients.
/// A [SimplifiedPatient] consists only of a [dps_code], the [triage] color,
/// [current\_phase\_nr] and [next\_phase\_nr].
///
/// This class is immutable and can be created from a json which confirms to the
/// response defined in the GET rooms/$roomID/patients/ route in the API specification.
@freezed
class SimplifiedPatient with _$SimplifiedPatient {
  const factory SimplifiedPatient({
    required String dps_code,
    required String triage,
    required String current_phase_nr,
    required String next_phase_nr,
  }) = _SimplifiedPatient;

  factory SimplifiedPatient.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedPatientFromJson(json);
}
