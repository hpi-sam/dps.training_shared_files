// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_applied_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MeasureAppliedUpdate {
  int get helperNr => throw _privateConstructorUsedError;
  String get patientDpsCode => throw _privateConstructorUsedError;
  AppliedMeasure get appliedMeasure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeasureAppliedUpdateCopyWith<MeasureAppliedUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureAppliedUpdateCopyWith<$Res> {
  factory $MeasureAppliedUpdateCopyWith(MeasureAppliedUpdate value,
          $Res Function(MeasureAppliedUpdate) then) =
      _$MeasureAppliedUpdateCopyWithImpl<$Res, MeasureAppliedUpdate>;
  @useResult
  $Res call(
      {int helperNr, String patientDpsCode, AppliedMeasure appliedMeasure});

  $AppliedMeasureCopyWith<$Res> get appliedMeasure;
}

/// @nodoc
class _$MeasureAppliedUpdateCopyWithImpl<$Res,
        $Val extends MeasureAppliedUpdate>
    implements $MeasureAppliedUpdateCopyWith<$Res> {
  _$MeasureAppliedUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helperNr = null,
    Object? patientDpsCode = null,
    Object? appliedMeasure = null,
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
      appliedMeasure: null == appliedMeasure
          ? _value.appliedMeasure
          : appliedMeasure // ignore: cast_nullable_to_non_nullable
              as AppliedMeasure,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppliedMeasureCopyWith<$Res> get appliedMeasure {
    return $AppliedMeasureCopyWith<$Res>(_value.appliedMeasure, (value) {
      return _then(_value.copyWith(appliedMeasure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MeasureAppliedUpdateCopyWith<$Res>
    implements $MeasureAppliedUpdateCopyWith<$Res> {
  factory _$$_MeasureAppliedUpdateCopyWith(_$_MeasureAppliedUpdate value,
          $Res Function(_$_MeasureAppliedUpdate) then) =
      __$$_MeasureAppliedUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int helperNr, String patientDpsCode, AppliedMeasure appliedMeasure});

  @override
  $AppliedMeasureCopyWith<$Res> get appliedMeasure;
}

/// @nodoc
class __$$_MeasureAppliedUpdateCopyWithImpl<$Res>
    extends _$MeasureAppliedUpdateCopyWithImpl<$Res, _$_MeasureAppliedUpdate>
    implements _$$_MeasureAppliedUpdateCopyWith<$Res> {
  __$$_MeasureAppliedUpdateCopyWithImpl(_$_MeasureAppliedUpdate _value,
      $Res Function(_$_MeasureAppliedUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helperNr = null,
    Object? patientDpsCode = null,
    Object? appliedMeasure = null,
  }) {
    return _then(_$_MeasureAppliedUpdate(
      helperNr: null == helperNr
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      patientDpsCode: null == patientDpsCode
          ? _value.patientDpsCode
          : patientDpsCode // ignore: cast_nullable_to_non_nullable
              as String,
      appliedMeasure: null == appliedMeasure
          ? _value.appliedMeasure
          : appliedMeasure // ignore: cast_nullable_to_non_nullable
              as AppliedMeasure,
    ));
  }
}

/// @nodoc

class _$_MeasureAppliedUpdate implements _MeasureAppliedUpdate {
  const _$_MeasureAppliedUpdate(
      {required this.helperNr,
      required this.patientDpsCode,
      required this.appliedMeasure});

  @override
  final int helperNr;
  @override
  final String patientDpsCode;
  @override
  final AppliedMeasure appliedMeasure;

  @override
  String toString() {
    return 'MeasureAppliedUpdate(helperNr: $helperNr, patientDpsCode: $patientDpsCode, appliedMeasure: $appliedMeasure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasureAppliedUpdate &&
            (identical(other.helperNr, helperNr) ||
                other.helperNr == helperNr) &&
            (identical(other.patientDpsCode, patientDpsCode) ||
                other.patientDpsCode == patientDpsCode) &&
            (identical(other.appliedMeasure, appliedMeasure) ||
                other.appliedMeasure == appliedMeasure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, helperNr, patientDpsCode, appliedMeasure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasureAppliedUpdateCopyWith<_$_MeasureAppliedUpdate> get copyWith =>
      __$$_MeasureAppliedUpdateCopyWithImpl<_$_MeasureAppliedUpdate>(
          this, _$identity);
}

abstract class _MeasureAppliedUpdate implements MeasureAppliedUpdate {
  const factory _MeasureAppliedUpdate(
      {required final int helperNr,
      required final String patientDpsCode,
      required final AppliedMeasure appliedMeasure}) = _$_MeasureAppliedUpdate;

  @override
  int get helperNr;
  @override
  String get patientDpsCode;
  @override
  AppliedMeasure get appliedMeasure;
  @override
  @JsonKey(ignore: true)
  _$$_MeasureAppliedUpdateCopyWith<_$_MeasureAppliedUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
