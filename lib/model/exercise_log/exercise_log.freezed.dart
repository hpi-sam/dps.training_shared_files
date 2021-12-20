// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exercise_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExerciseLogTearOff {
  const _$ExerciseLogTearOff();

  _ExerciseLog call(
      {required List<ExerciseLogEntry> exerciseLogEntries,
      required int duration}) {
    return _ExerciseLog(
      exerciseLogEntries: exerciseLogEntries,
      duration: duration,
    );
  }
}

/// @nodoc
const $ExerciseLog = _$ExerciseLogTearOff();

/// @nodoc
mixin _$ExerciseLog {
  List<ExerciseLogEntry> get exerciseLogEntries =>
      throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseLogCopyWith<ExerciseLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseLogCopyWith<$Res> {
  factory $ExerciseLogCopyWith(
          ExerciseLog value, $Res Function(ExerciseLog) then) =
      _$ExerciseLogCopyWithImpl<$Res>;
  $Res call({List<ExerciseLogEntry> exerciseLogEntries, int duration});
}

/// @nodoc
class _$ExerciseLogCopyWithImpl<$Res> implements $ExerciseLogCopyWith<$Res> {
  _$ExerciseLogCopyWithImpl(this._value, this._then);

  final ExerciseLog _value;
  // ignore: unused_field
  final $Res Function(ExerciseLog) _then;

  @override
  $Res call({
    Object? exerciseLogEntries = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseLogEntries: exerciseLogEntries == freezed
          ? _value.exerciseLogEntries
          : exerciseLogEntries // ignore: cast_nullable_to_non_nullable
              as List<ExerciseLogEntry>,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseLogCopyWith<$Res>
    implements $ExerciseLogCopyWith<$Res> {
  factory _$ExerciseLogCopyWith(
          _ExerciseLog value, $Res Function(_ExerciseLog) then) =
      __$ExerciseLogCopyWithImpl<$Res>;
  @override
  $Res call({List<ExerciseLogEntry> exerciseLogEntries, int duration});
}

/// @nodoc
class __$ExerciseLogCopyWithImpl<$Res> extends _$ExerciseLogCopyWithImpl<$Res>
    implements _$ExerciseLogCopyWith<$Res> {
  __$ExerciseLogCopyWithImpl(
      _ExerciseLog _value, $Res Function(_ExerciseLog) _then)
      : super(_value, (v) => _then(v as _ExerciseLog));

  @override
  _ExerciseLog get _value => super._value as _ExerciseLog;

  @override
  $Res call({
    Object? exerciseLogEntries = freezed,
    Object? duration = freezed,
  }) {
    return _then(_ExerciseLog(
      exerciseLogEntries: exerciseLogEntries == freezed
          ? _value.exerciseLogEntries
          : exerciseLogEntries // ignore: cast_nullable_to_non_nullable
              as List<ExerciseLogEntry>,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_ExerciseLog extends _ExerciseLog with DiagnosticableTreeMixin {
  const _$_ExerciseLog(
      {required this.exerciseLogEntries, required this.duration})
      : super._();

  @override
  final List<ExerciseLogEntry> exerciseLogEntries;
  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseLog(exerciseLogEntries: $exerciseLogEntries, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseLog'))
      ..add(DiagnosticsProperty('exerciseLogEntries', exerciseLogEntries))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseLog &&
            (identical(other.exerciseLogEntries, exerciseLogEntries) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseLogEntries, exerciseLogEntries)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseLogEntries) ^
      const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  _$ExerciseLogCopyWith<_ExerciseLog> get copyWith =>
      __$ExerciseLogCopyWithImpl<_ExerciseLog>(this, _$identity);
}

abstract class _ExerciseLog extends ExerciseLog {
  const factory _ExerciseLog(
      {required List<ExerciseLogEntry> exerciseLogEntries,
      required int duration}) = _$_ExerciseLog;
  const _ExerciseLog._() : super._();

  @override
  List<ExerciseLogEntry> get exerciseLogEntries =>
      throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseLogCopyWith<_ExerciseLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExerciseLogEntryTearOff {
  const _$ExerciseLogEntryTearOff();

  _ExerciseLogEntry call(
      {required LogEntryType logEntryType,
      required int time,
      required String patient,
      required List<String> helpers,
      required String details}) {
    return _ExerciseLogEntry(
      logEntryType: logEntryType,
      time: time,
      patient: patient,
      helpers: helpers,
      details: details,
    );
  }
}

/// @nodoc
const $ExerciseLogEntry = _$ExerciseLogEntryTearOff();

/// @nodoc
mixin _$ExerciseLogEntry {
  LogEntryType get logEntryType => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  String get patient => throw _privateConstructorUsedError;
  List<String> get helpers => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseLogEntryCopyWith<ExerciseLogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseLogEntryCopyWith<$Res> {
  factory $ExerciseLogEntryCopyWith(
          ExerciseLogEntry value, $Res Function(ExerciseLogEntry) then) =
      _$ExerciseLogEntryCopyWithImpl<$Res>;
  $Res call(
      {LogEntryType logEntryType,
      int time,
      String patient,
      List<String> helpers,
      String details});
}

/// @nodoc
class _$ExerciseLogEntryCopyWithImpl<$Res>
    implements $ExerciseLogEntryCopyWith<$Res> {
  _$ExerciseLogEntryCopyWithImpl(this._value, this._then);

  final ExerciseLogEntry _value;
  // ignore: unused_field
  final $Res Function(ExerciseLogEntry) _then;

  @override
  $Res call({
    Object? logEntryType = freezed,
    Object? time = freezed,
    Object? patient = freezed,
    Object? helpers = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      logEntryType: logEntryType == freezed
          ? _value.logEntryType
          : logEntryType // ignore: cast_nullable_to_non_nullable
              as LogEntryType,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as String,
      helpers: helpers == freezed
          ? _value.helpers
          : helpers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseLogEntryCopyWith<$Res>
    implements $ExerciseLogEntryCopyWith<$Res> {
  factory _$ExerciseLogEntryCopyWith(
          _ExerciseLogEntry value, $Res Function(_ExerciseLogEntry) then) =
      __$ExerciseLogEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {LogEntryType logEntryType,
      int time,
      String patient,
      List<String> helpers,
      String details});
}

/// @nodoc
class __$ExerciseLogEntryCopyWithImpl<$Res>
    extends _$ExerciseLogEntryCopyWithImpl<$Res>
    implements _$ExerciseLogEntryCopyWith<$Res> {
  __$ExerciseLogEntryCopyWithImpl(
      _ExerciseLogEntry _value, $Res Function(_ExerciseLogEntry) _then)
      : super(_value, (v) => _then(v as _ExerciseLogEntry));

  @override
  _ExerciseLogEntry get _value => super._value as _ExerciseLogEntry;

  @override
  $Res call({
    Object? logEntryType = freezed,
    Object? time = freezed,
    Object? patient = freezed,
    Object? helpers = freezed,
    Object? details = freezed,
  }) {
    return _then(_ExerciseLogEntry(
      logEntryType: logEntryType == freezed
          ? _value.logEntryType
          : logEntryType // ignore: cast_nullable_to_non_nullable
              as LogEntryType,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as String,
      helpers: helpers == freezed
          ? _value.helpers
          : helpers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_ExerciseLogEntry extends _ExerciseLogEntry
    with DiagnosticableTreeMixin {
  const _$_ExerciseLogEntry(
      {required this.logEntryType,
      required this.time,
      required this.patient,
      required this.helpers,
      required this.details})
      : super._();

  @override
  final LogEntryType logEntryType;
  @override
  final int time;
  @override
  final String patient;
  @override
  final List<String> helpers;
  @override
  final String details;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseLogEntry(logEntryType: $logEntryType, time: $time, patient: $patient, helpers: $helpers, details: $details)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseLogEntry'))
      ..add(DiagnosticsProperty('logEntryType', logEntryType))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('patient', patient))
      ..add(DiagnosticsProperty('helpers', helpers))
      ..add(DiagnosticsProperty('details', details));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseLogEntry &&
            (identical(other.logEntryType, logEntryType) ||
                const DeepCollectionEquality()
                    .equals(other.logEntryType, logEntryType)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.patient, patient) ||
                const DeepCollectionEquality()
                    .equals(other.patient, patient)) &&
            (identical(other.helpers, helpers) ||
                const DeepCollectionEquality()
                    .equals(other.helpers, helpers)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(logEntryType) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(patient) ^
      const DeepCollectionEquality().hash(helpers) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$ExerciseLogEntryCopyWith<_ExerciseLogEntry> get copyWith =>
      __$ExerciseLogEntryCopyWithImpl<_ExerciseLogEntry>(this, _$identity);
}

abstract class _ExerciseLogEntry extends ExerciseLogEntry {
  const factory _ExerciseLogEntry(
      {required LogEntryType logEntryType,
      required int time,
      required String patient,
      required List<String> helpers,
      required String details}) = _$_ExerciseLogEntry;
  const _ExerciseLogEntry._() : super._();

  @override
  LogEntryType get logEntryType => throw _privateConstructorUsedError;
  @override
  int get time => throw _privateConstructorUsedError;
  @override
  String get patient => throw _privateConstructorUsedError;
  @override
  List<String> get helpers => throw _privateConstructorUsedError;
  @override
  String get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseLogEntryCopyWith<_ExerciseLogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
