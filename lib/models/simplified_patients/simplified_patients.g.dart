// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_patients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SimplifiedPatient _$$_SimplifiedPatientFromJson(Map<String, dynamic> json) =>
    _$_SimplifiedPatient(
      dps_code: json['dps_code'] as String,
      triage: json['triage'] as String,
      suggested_triage: json['suggested_triage'] as String,
      current_phase_nr: json['current_phase_nr'] as String,
      next_phase_nr: json['next_phase_nr'] as String,
      is_checked_out: json['is_checked_out'] as bool,
    );

Map<String, dynamic> _$$_SimplifiedPatientToJson(
        _$_SimplifiedPatient instance) =>
    <String, dynamic>{
      'dps_code': instance.dps_code,
      'triage': instance.triage,
      'suggested_triage': instance.suggested_triage,
      'current_phase_nr': instance.current_phase_nr,
      'next_phase_nr': instance.next_phase_nr,
      'is_checked_out': instance.is_checked_out,
    };
