// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'triage_accuracy.freezed.dart';

@freezed
class TriageAccuracy with _$TriageAccuracy {
  const factory TriageAccuracy({
    required int correct,
    required int over,
    required int under,
    required int notTriage,
  }) = _TriageAccuracy;

  factory TriageAccuracy.fromJson(Map<String, dynamic> json) {
    return TriageAccuracy(
      correct: json['correct'],
      over: json['over'],
      under: json['under'],
      notTriage: json['not_triage'],
    );
  }
}
