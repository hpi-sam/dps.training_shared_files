// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dps.training_shared_files/models/room/room.dart';

part 'own_rooms.freezed.dart';
part 'own_rooms.g.dart';

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

/// Defines the [OwnRoomList] data model.
///
/// This class is immutable and can be created from a json which confirms to the
/// response defined in the GET rooms/own/ route in the API specification.
@freezed
class OwnRoomList with _$OwnRoomList {
  const factory OwnRoomList({
    required List<OwnRoom> rooms,
  }) = _OwnRoomList;

  factory OwnRoomList.fromJson(Map<String, dynamic> json) {
    return OwnRoomList(rooms: parseOwnRoomList(json));
  }
}

/// Parses multiple rooms in the given [json] into a list of [OwnRoom].
List<OwnRoom> parseOwnRoomList(Map<String, dynamic> json) {
  final parsed = json["rooms"].cast<Map<String, dynamic>>();
  return parsed.map<OwnRoom>((json) => OwnRoom.fromJson(json)).toList();
}

/// Defines the [OwnRoom] data model. An [OwnRoom] consists of an [id], an
/// [invitationCode], [state] and a [creationTime].
///
/// This class is immutable and can be created from a json which confirms to the
/// response defined in the GET rooms/own/ route in the API specification.
@freezed
class OwnRoom with _$OwnRoom {
  const factory OwnRoom({
    required int id,
    @JsonKey(name: 'invitation_code')
    required String invitationCode,
    required RoomStateEnum state,
    @JsonKey(name: 'creation_time')
    required DateTime creationTime,
  }) = _OwnRoom;

  factory OwnRoom.fromJson(Map<String, dynamic> json) =>
      _$OwnRoomFromJson(json);
}
