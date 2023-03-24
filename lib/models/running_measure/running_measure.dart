// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:dps.training_shared_files/api/core/uris.dart';

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
  const factory RunningMeasure({
    required int helperNr,
    required String name,
    required Uri image_small,
    required Uri image_original,
    required int start_time,
    required int finish_time,
    required bool requires_two_helpers,
  }) = _RunningMeasure;

  const factory RunningMeasure.none({
    required int helperNr,
  }) = _RunningMeasureNone;

  factory RunningMeasure.fromJson(Map<String, dynamic> json) {
    return RunningMeasure(
      helperNr: json['helperNr'],
      name: json['name'],
      image_small: baseUri.replace(path: '${json['image']['small']}'),
      image_original: baseUri.replace(path: '${json['image']['original']}'),
      start_time: json['start_time'],
      finish_time: json['finish_time'],
      requires_two_helpers: json['requires_two_helpers'],
    );
  }
}