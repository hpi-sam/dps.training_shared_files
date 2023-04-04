// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_config.freezed.dart';
part 'room_config.g.dart';


@freezed
class RoomConfig with _$RoomConfig {
  const factory RoomConfig({
    @JsonKey(name: 'default_phase_length')
    required int defaultPhaseLength,
    @JsonKey(name: 'waiting_time_patient')
    required int waitingTimePatient,
    @JsonKey(name: 'expiring_time_patient')
    required int expiringTimePatient,
  }) = _RoomConfig;

  factory RoomConfig.fromJson(Map<String, dynamic> json) =>
      _$RoomConfigFromJson(json);
}
