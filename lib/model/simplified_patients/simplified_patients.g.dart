// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_patients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SimplifiedPatient _$_$_SimplifiedPatientFromJson(Map<String, dynamic> json) {
  return _$_SimplifiedPatient(
    dps_code: json['dps_code'] as String,
    triage: json['triage'] as String,
    suggested_triage: json['suggested_triage'] as String,
    current_phase_nr: json['current_phase_nr'] as String,
    next_phase_nr: json['next_phase_nr'] as String,
  );
}

Map<String, dynamic> _$_$_SimplifiedPatientToJson(
        _$_SimplifiedPatient instance) =>
    <String, dynamic>{
      'dps_code': instance.dps_code,
      'triage': instance.triage,
      'suggested_triage': instance.suggested_triage,
      'current_phase_nr': instance.current_phase_nr,
      'next_phase_nr': instance.next_phase_nr,
    };
