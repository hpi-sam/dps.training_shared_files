import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_log.freezed.dart';

enum LogEntryType {
  phase_change,
  pause,
  applied_measure_begin,
  applied_measure_end,
  transport,
  contact,
  death,
  eoc_internal_briefing,
  eoc_helper_request,
  eoc_report,
  others
}

/// Defines the ExerciseLog data model.
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
class ExerciseLog with _$ExerciseLog {
  const ExerciseLog._();
  const factory ExerciseLog(
      {required List<ExerciseLogEntry> exerciseLogEntries,
      required int duration}) = _ExerciseLog;
  factory ExerciseLog.fromJson(Map<String, dynamic> json) {
    return ExerciseLog(
        exerciseLogEntries: parseExerciseLogEntries(json),
        duration: json["exercise_duration"]);
  }
}

/// Parses multiple log entries in the given [json]
/// into a list of [ExerciseLogEntry].
List<ExerciseLogEntry> parseExerciseLogEntries(Map<String, dynamic> json) {
  final parsed = json["log_entries"].cast<Map<String, dynamic>>();
  return parsed
      .map<ExerciseLogEntry>((json) => ExerciseLogEntry.fromJson(json))
      .toList();
}

/// A single exercise log entry, containing time and detailed information about the
/// event it represents.
@freezed
class ExerciseLogEntry with _$ExerciseLogEntry {
  const ExerciseLogEntry._();
  const factory ExerciseLogEntry({
    required LogEntryType logEntryType,
    required int time,
    required String patient,
    required List<String> helpers,
    required String details,
  }) = _ExerciseLogEntry;

  factory ExerciseLogEntry.fromJson(Map<String, dynamic> json) {
    return ExerciseLogEntry(
        logEntryType: LogEntryType.values
            .firstWhere((element) => describeEnum(element) == json["type"]),
        time: json["time"],
        patient: json["patient"],
        helpers: (json["helpers"] as List<dynamic>).cast<String>(),
        details: json["details"]);
  }
}
