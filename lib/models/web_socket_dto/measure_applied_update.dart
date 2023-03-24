import 'package:dps.training_shared_files/models/applied_measures/applied_measures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'measure_applied_update.freezed.dart';

@freezed
class MeasureAppliedUpdate with _$MeasureAppliedUpdate {
  const factory MeasureAppliedUpdate({
    required int helperNr,
    required String patientDpsCode,
    required AppliedMeasure appliedMeasure,
  }) = _MeasureAppliedUpdate;

  factory MeasureAppliedUpdate.fromJson(Map<String, dynamic> json) {
    return MeasureAppliedUpdate(
      helperNr: json['helper_nr'],
      patientDpsCode: json['patient_dps_code'],
      appliedMeasure: AppliedMeasure.fromJson(json['content']),
    );
  }
}