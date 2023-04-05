// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomConfig _$$_RoomConfigFromJson(Map<String, dynamic> json) =>
    _$_RoomConfig(
      defaultPhaseLength: json['default_phase_length'] as int,
      waitingTimePatient: json['waiting_time_patient'] as int,
      expiringTimePatient: json['expiring_time_patient'] as int,
    );

Map<String, dynamic> _$$_RoomConfigToJson(_$_RoomConfig instance) =>
    <String, dynamic>{
      'default_phase_length': instance.defaultPhaseLength,
      'waiting_time_patient': instance.waitingTimePatient,
      'expiring_time_patient': instance.expiringTimePatient,
    };
