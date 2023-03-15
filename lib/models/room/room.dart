// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';

@freezed
class Room with _$Room {
  const Room._();

  const factory Room({
    required int id,
    required String invitationCode,
    int? defaultPhaseLength,
    int? waitingTimePatient,
    int? expiringTimePatient,
  }) = _Room;

  const factory Room.updateConfigurations({
    required int defaultPhaseLength,
    required int waitingTimePatient,
    required int expiringTimePatient,
  }) = _RoomUpdateConfigurations;

  const factory Room.noneActive() = _RoomNoneActive;

  factory Room.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('is_a_room_active') && !json['is_a_room_active']) {
      return const Room.noneActive();
    }

    return Room(
      id: json['id'],
      invitationCode: json['invitation_code'],
      defaultPhaseLength: json['default_phase_length'],
      waitingTimePatient: json['waiting_time_patient'],
      expiringTimePatient: json['expiring_time_patient'],
    );
  }
}
