// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$ExerciseLogCopyWithImpl<$Res, ExerciseLog>;
  @useResult
  $Res call({List<ExerciseLogEntry> exerciseLogEntries, int duration});
}

/// @nodoc
class _$ExerciseLogCopyWithImpl<$Res, $Val extends ExerciseLog>
    implements $ExerciseLogCopyWith<$Res> {
  _$ExerciseLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseLogEntries = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      exerciseLogEntries: null == exerciseLogEntries
          ? _value.exerciseLogEntries
          : exerciseLogEntries // ignore: cast_nullable_to_non_nullable
              as List<ExerciseLogEntry>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseLogCopyWith<$Res>
    implements $ExerciseLogCopyWith<$Res> {
  factory _$$_ExerciseLogCopyWith(
          _$_ExerciseLog value, $Res Function(_$_ExerciseLog) then) =
      __$$_ExerciseLogCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExerciseLogEntry> exerciseLogEntries, int duration});
}

/// @nodoc
class __$$_ExerciseLogCopyWithImpl<$Res>
    extends _$ExerciseLogCopyWithImpl<$Res, _$_ExerciseLog>
    implements _$$_ExerciseLogCopyWith<$Res> {
  __$$_ExerciseLogCopyWithImpl(
      _$_ExerciseLog _value, $Res Function(_$_ExerciseLog) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseLogEntries = null,
    Object? duration = null,
  }) {
    return _then(_$_ExerciseLog(
      exerciseLogEntries: null == exerciseLogEntries
          ? _value._exerciseLogEntries
          : exerciseLogEntries // ignore: cast_nullable_to_non_nullable
              as List<ExerciseLogEntry>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExerciseLog extends _ExerciseLog with DiagnosticableTreeMixin {
  const _$_ExerciseLog(
      {required final List<ExerciseLogEntry> exerciseLogEntries,
      required this.duration})
      : _exerciseLogEntries = exerciseLogEntries,
        super._();

  final List<ExerciseLogEntry> _exerciseLogEntries;
  @override
  List<ExerciseLogEntry> get exerciseLogEntries {
    if (_exerciseLogEntries is EqualUnmodifiableListView)
      return _exerciseLogEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exerciseLogEntries);
  }

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
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseLog &&
            const DeepCollectionEquality()
                .equals(other._exerciseLogEntries, _exerciseLogEntries) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_exerciseLogEntries), duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseLogCopyWith<_$_ExerciseLog> get copyWith =>
      __$$_ExerciseLogCopyWithImpl<_$_ExerciseLog>(this, _$identity);
}

abstract class _ExerciseLog extends ExerciseLog {
  const factory _ExerciseLog(
      {required final List<ExerciseLogEntry> exerciseLogEntries,
      required final int duration}) = _$_ExerciseLog;
  const _ExerciseLog._() : super._();

  @override
  List<ExerciseLogEntry> get exerciseLogEntries;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseLogCopyWith<_$_ExerciseLog> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$ExerciseLogEntryCopyWithImpl<$Res, ExerciseLogEntry>;
  @useResult
  $Res call(
      {LogEntryType logEntryType,
      int time,
      String patient,
      List<String> helpers,
      String details});
}

/// @nodoc
class _$ExerciseLogEntryCopyWithImpl<$Res, $Val extends ExerciseLogEntry>
    implements $ExerciseLogEntryCopyWith<$Res> {
  _$ExerciseLogEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logEntryType = null,
    Object? time = null,
    Object? patient = null,
    Object? helpers = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      logEntryType: null == logEntryType
          ? _value.logEntryType
          : logEntryType // ignore: cast_nullable_to_non_nullable
              as LogEntryType,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as String,
      helpers: null == helpers
          ? _value.helpers
          : helpers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseLogEntryCopyWith<$Res>
    implements $ExerciseLogEntryCopyWith<$Res> {
  factory _$$_ExerciseLogEntryCopyWith(
          _$_ExerciseLogEntry value, $Res Function(_$_ExerciseLogEntry) then) =
      __$$_ExerciseLogEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LogEntryType logEntryType,
      int time,
      String patient,
      List<String> helpers,
      String details});
}

/// @nodoc
class __$$_ExerciseLogEntryCopyWithImpl<$Res>
    extends _$ExerciseLogEntryCopyWithImpl<$Res, _$_ExerciseLogEntry>
    implements _$$_ExerciseLogEntryCopyWith<$Res> {
  __$$_ExerciseLogEntryCopyWithImpl(
      _$_ExerciseLogEntry _value, $Res Function(_$_ExerciseLogEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logEntryType = null,
    Object? time = null,
    Object? patient = null,
    Object? helpers = null,
    Object? details = null,
  }) {
    return _then(_$_ExerciseLogEntry(
      logEntryType: null == logEntryType
          ? _value.logEntryType
          : logEntryType // ignore: cast_nullable_to_non_nullable
              as LogEntryType,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as String,
      helpers: null == helpers
          ? _value._helpers
          : helpers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      details: null == details
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
      required final List<String> helpers,
      required this.details})
      : _helpers = helpers,
        super._();

  @override
  final LogEntryType logEntryType;
  @override
  final int time;
  @override
  final String patient;
  final List<String> _helpers;
  @override
  List<String> get helpers {
    if (_helpers is EqualUnmodifiableListView) return _helpers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_helpers);
  }

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
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseLogEntry &&
            (identical(other.logEntryType, logEntryType) ||
                other.logEntryType == logEntryType) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            const DeepCollectionEquality().equals(other._helpers, _helpers) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, logEntryType, time, patient,
      const DeepCollectionEquality().hash(_helpers), details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseLogEntryCopyWith<_$_ExerciseLogEntry> get copyWith =>
      __$$_ExerciseLogEntryCopyWithImpl<_$_ExerciseLogEntry>(this, _$identity);
}

abstract class _ExerciseLogEntry extends ExerciseLogEntry {
  const factory _ExerciseLogEntry(
      {required final LogEntryType logEntryType,
      required final int time,
      required final String patient,
      required final List<String> helpers,
      required final String details}) = _$_ExerciseLogEntry;
  const _ExerciseLogEntry._() : super._();

  @override
  LogEntryType get logEntryType;
  @override
  int get time;
  @override
  String get patient;
  @override
  List<String> get helpers;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseLogEntryCopyWith<_$_ExerciseLogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
