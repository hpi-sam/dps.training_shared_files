// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'own_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OwnRoom _$$_OwnRoomFromJson(Map<String, dynamic> json) => _$_OwnRoom(
      id: json['id'] as int,
      invitationCode: json['invitation_code'] as String,
      state: $enumDecode(_$RoomStateEnumEnumMap, json['state']),
      creationTime: DateTime.parse(json['creation_time'] as String),
    );

Map<String, dynamic> _$$_OwnRoomToJson(_$_OwnRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invitation_code': instance.invitationCode,
      'state': _$RoomStateEnumEnumMap[instance.state]!,
      'creation_time': instance.creationTime.toIso8601String(),
    };

const _$RoomStateEnumEnumMap = {
  RoomStateEnum.configuration: 'configuration',
  RoomStateEnum.running: 'running',
  RoomStateEnum.paused: 'paused',
  RoomStateEnum.finished: 'finished',
};
