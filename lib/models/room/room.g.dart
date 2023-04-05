// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as int,
      invitationCode: json['invitation_code'] as String,
      defaultPhaseLength: json['default_phase_length'] as int?,
      waitingTimePatient: json['waiting_time_patient'] as int?,
      expiringTimePatient: json['expiring_time_patient'] as int?,
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'invitation_code': instance.invitationCode,
      'default_phase_length': instance.defaultPhaseLength,
      'waiting_time_patient': instance.waitingTimePatient,
      'expiring_time_patient': instance.expiringTimePatient,
    };
