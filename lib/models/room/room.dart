// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

enum RoomStateEnum {
  configuration,
  running,
  paused,
  finished,
}

@freezed
class Room with _$Room {
  const factory Room({
    required int id,
    @JsonKey(name: 'invitation_code')
    required String invitationCode,
    @JsonKey(name: 'default_phase_length')
    int? defaultPhaseLength,
    @JsonKey(name: 'waiting_time_patient')
    int? waitingTimePatient,
    @JsonKey(name: 'expiring_time_patient')
    int? expiringTimePatient,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) =>
      _$RoomFromJson(json);
}
