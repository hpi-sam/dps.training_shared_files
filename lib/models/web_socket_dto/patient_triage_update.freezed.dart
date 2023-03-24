// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_triage_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientTriageUpdate {
  int get helperNr => throw _privateConstructorUsedError;
  String get patientDpsCode => throw _privateConstructorUsedError;
  String get triageColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientTriageUpdateCopyWith<PatientTriageUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientTriageUpdateCopyWith<$Res> {
  factory $PatientTriageUpdateCopyWith(
          PatientTriageUpdate value, $Res Function(PatientTriageUpdate) then) =
      _$PatientTriageUpdateCopyWithImpl<$Res, PatientTriageUpdate>;
  @useResult
  $Res call({int helperNr, String patientDpsCode, String triageColor});
}

/// @nodoc
class _$PatientTriageUpdateCopyWithImpl<$Res, $Val extends PatientTriageUpdate>
    implements $PatientTriageUpdateCopyWith<$Res> {
  _$PatientTriageUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helperNr = null,
    Object? patientDpsCode = null,
    Object? triageColor = null,
  }) {
    return _then(_value.copyWith(
      helperNr: null == helperNr
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      patientDpsCode: null == patientDpsCode
          ? _value.patientDpsCode
          : patientDpsCode // ignore: cast_nullable_to_non_nullable
              as String,
      triageColor: null == triageColor
          ? _value.triageColor
          : triageColor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientTriageUpdateCopyWith<$Res>
    implements $PatientTriageUpdateCopyWith<$Res> {
  factory _$$_PatientTriageUpdateCopyWith(_$_PatientTriageUpdate value,
          $Res Function(_$_PatientTriageUpdate) then) =
      __$$_PatientTriageUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int helperNr, String patientDpsCode, String triageColor});
}

/// @nodoc
class __$$_PatientTriageUpdateCopyWithImpl<$Res>
    extends _$PatientTriageUpdateCopyWithImpl<$Res, _$_PatientTriageUpdate>
    implements _$$_PatientTriageUpdateCopyWith<$Res> {
  __$$_PatientTriageUpdateCopyWithImpl(_$_PatientTriageUpdate _value,
      $Res Function(_$_PatientTriageUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helperNr = null,
    Object? patientDpsCode = null,
    Object? triageColor = null,
  }) {
    return _then(_$_PatientTriageUpdate(
      helperNr: null == helperNr
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      patientDpsCode: null == patientDpsCode
          ? _value.patientDpsCode
          : patientDpsCode // ignore: cast_nullable_to_non_nullable
              as String,
      triageColor: null == triageColor
          ? _value.triageColor
          : triageColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PatientTriageUpdate implements _PatientTriageUpdate {
  const _$_PatientTriageUpdate(
      {required this.helperNr,
      required this.patientDpsCode,
      required this.triageColor});

  @override
  final int helperNr;
  @override
  final String patientDpsCode;
  @override
  final String triageColor;

  @override
  String toString() {
    return 'PatientTriageUpdate(helperNr: $helperNr, patientDpsCode: $patientDpsCode, triageColor: $triageColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientTriageUpdate &&
            (identical(other.helperNr, helperNr) ||
                other.helperNr == helperNr) &&
            (identical(other.patientDpsCode, patientDpsCode) ||
                other.patientDpsCode == patientDpsCode) &&
            (identical(other.triageColor, triageColor) ||
                other.triageColor == triageColor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, helperNr, patientDpsCode, triageColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientTriageUpdateCopyWith<_$_PatientTriageUpdate> get copyWith =>
      __$$_PatientTriageUpdateCopyWithImpl<_$_PatientTriageUpdate>(
          this, _$identity);
}

abstract class _PatientTriageUpdate implements PatientTriageUpdate {
  const factory _PatientTriageUpdate(
      {required final int helperNr,
      required final String patientDpsCode,
      required final String triageColor}) = _$_PatientTriageUpdate;

  @override
  int get helperNr;
  @override
  String get patientDpsCode;
  @override
  String get triageColor;
  @override
  @JsonKey(ignore: true)
  _$$_PatientTriageUpdateCopyWith<_$_PatientTriageUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
