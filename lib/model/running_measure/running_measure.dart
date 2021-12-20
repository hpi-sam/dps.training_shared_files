import 'package:dps.training_shared_files/api_service/urls.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'running_measure.freezed.dart';

///  Defines the measures data model.
///   The package freezed is used to auto-generate the code for the immutable data classes annotated
/// via @freezed.
///
///  If you change anything on the data models, make sure to run the following command:
/// flutter pub run build_runner build --delete-conflicting-outputs

/// If you want to rebuild every time you save this file (recommended), run the following command:
/// flutter pub run build_runner watch --delete-conflicting-outputs

/// For more information on the freezed package see the official documentation:
/// https://pub.dev/packages/freezed
///

/// Model that contains all relevant information about a currently running measure.
@freezed
class RunningMeasure with _$RunningMeasure {
  const RunningMeasure._();
  const factory RunningMeasure({
    required String dpsCode,
    required String name,
    required String image_small,
    required String image_original,
    required int start_time,
    required int finish_time,
    required bool requires_two_helpers,
  }) = _RunningMeasure;
  factory RunningMeasure.fromJson({required Map<String, dynamic> json}) {
    return RunningMeasure(
        dpsCode: json["patient_dps_code"],
        name: json["name"],
        image_small: serverURL + json["image"]["small"],
        image_original: serverURL + json["image"]["original"],
        start_time: json["start_time"],
        finish_time: json["finish_time"],
        requires_two_helpers: json["requires_two_helpers"]);
  }
}
