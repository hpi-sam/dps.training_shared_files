// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/api_service/urls.dart';

part 'applied_measures.freezed.dart';

/// [AppliedMeasures] are either running (= another helper does them right now),
/// active (= only effective for a given time; e.g. medication) or
/// finished (= applied for an unlimited time)
enum AppliedMeasureState {
  running,
  active,
  finished,
  aborted,
  removed,
  expired,
  waiting_for_second_helper
}

///  Defines the applied measures data model.
///   The package freezed is used to auto-generate the code for the immutable data classes annotated
/// via @freezed.
///
///  If you change anything on the data models, make sure to run the following command:
/// flutter pub run build_runner build --delete-conflicting-outputs

/// If you want to rebuild every time you save this file (recommended), run the following command:
/// flutter pub run build_runner watch --delete-conflicting-outputs

/// For more information on the freezed package see the official documentation:
/// https://pub.dev/packages/freezed
@freezed
class AppliedMeasures with _$AppliedMeasures {
  const AppliedMeasures._();
  const factory AppliedMeasures(
      {required List<AppliedMeasure> appliedMeasures}) = _AppliedMeasures;

  factory AppliedMeasures.fromJson(Map<String, dynamic> json) {
    if (json.isNotEmpty) {
      return AppliedMeasures(appliedMeasures: parseAppliedMeasures(json));
    } else
      return AppliedMeasures(appliedMeasures: []);
  }
}

/// Parses multiple applied measures in the given [json] into a list of [AppliedMeasure].
List<AppliedMeasure> parseAppliedMeasures(Map<String, dynamic> json) {
  final parsed = json["applied_measures"].cast<Map<String, dynamic>>();
  return parsed
      .map<AppliedMeasure>((json) => AppliedMeasure.fromJson(json))
      .toList();
}

/// Model that contains all relevant information of a single [AppliedMeasure].
@freezed
class AppliedMeasure with _$AppliedMeasure {
  const AppliedMeasure._();
  const factory AppliedMeasure({
    required String name,
    required int id,
    required String image_small,
    required String image_original,

    /// -1 if it is not possible to remove this measure
    required int duration_for_removal,
    required int start_time,
    required int finish_time,
    required AppliedMeasureState state,

    /// The dps code of the patient that this measure is applied on.
    required String dpsCode,

    /// The type of measure that this [AppliedMeasure] represents.
    required String measureTypeID,
  }) = _AppliedMeasure;
  factory AppliedMeasure.fromJson(Map<String, dynamic> json) {
    return AppliedMeasure(
        name: json["name"],
        id: json["id"],
        image_small: serverURL + json["image"]["small"],
        image_original: serverURL + json["image"]["original"],
        duration_for_removal: json["duration_for_removal"],
        start_time: json["start_time"],
        finish_time: json["finish_time"],
        state: AppliedMeasureState.values.firstWhere((element) {
          return describeEnum(element) == json["state"];
        }),
        dpsCode: json["patient_dps_code"],
        measureTypeID: json["measure_type_id"]);
  }
}
