import 'package:dps.training_shared_files/models/room/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulation_time.freezed.dart';

@freezed
class SimulationTime with _$SimulationTime {
  const factory SimulationTime({
    required int time,
    required RoomStateEnum state,
  }) = _SimulationTime;

  factory SimulationTime.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> jsonContentPart = json['content'];

    return SimulationTime(
      time: jsonContentPart['time'],
      state: RoomStateEnum.values.byName(jsonContentPart['state']),
    );
  }
}
