// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulation_time.freezed.dart';
part 'simulation_time.g.dart';

/// Defines the time data model.
/// The package freezed is used to auto-generate the code for the immutable data classes annotated
/// via @freezed.
///
/// If you change anything on the data models, make sure to run the following command:
/// flutter pub run build_runner build --delete-conflicting-outputs
///
/// If you want to rebuild every time you save this file (recommended), run the following command:
/// flutter pub run build_runner watch --delete-conflicting-outputs
///
/// For more information on the freezed package see the official documentation:
/// https://pub.dev/packages/freezed

@freezed
class SimulationTime with _$SimulationTime {
  const factory SimulationTime({
    required int time,
    required String state,
  }) = _SimulationTime;

  factory SimulationTime.fromJson(Map<String, dynamic> json) =>
      _$SimulationTimeFromJson(json);
}
