import 'package:freezed_annotation/freezed_annotation.dart';

part 'measure_applied_canceled.freezed.dart';

@freezed
class MeasureAppliedCanceled with _$MeasureAppliedCanceled {
  const factory MeasureAppliedCanceled({
    required int helperNr,
    required int measureId,
  }) = _MeasureAppliedCanceled;

  factory MeasureAppliedCanceled.fromJson(Map<String, dynamic> json) {
    return MeasureAppliedCanceled(
      helperNr: json['helper_nr'],
      measureId: json['content']['measure_id'],
    );
  }
}