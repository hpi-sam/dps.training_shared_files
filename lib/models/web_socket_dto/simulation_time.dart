import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulation_time.freezed.dart';

enum SimulationStateEnum {
  running,
  paused,
  configuration,
  finished,
}

@freezed
class SimulationTime with _$SimulationTime {
  const factory SimulationTime({
    required int time,
    required SimulationStateEnum state,
  }) = _SimulationTime;

  factory SimulationTime.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> jsonContentPart = json['content'];

    return SimulationTime(
      time: jsonContentPart['time'],
      state: SimulationStateEnum.values.byName(jsonContentPart['state']),
    );
  }
}
