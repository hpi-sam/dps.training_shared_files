import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_triage_update.freezed.dart';

@freezed
class PatientTriageUpdate with _$PatientTriageUpdate {
  const factory PatientTriageUpdate({
    required int helperNr,
    required String patientDpsCode,
    required String triageColor,
  }) = _PatientTriageUpdate;

  factory PatientTriageUpdate.fromJson(Map<String, dynamic> json) {
    return PatientTriageUpdate(
      helperNr: json['helper_nr'],
      patientDpsCode: json['patient_dps_code'],
      triageColor: json['content']['triage_color'],
    );
  }
}