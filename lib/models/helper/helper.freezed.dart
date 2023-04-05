// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'helper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Helper {
  /// The ID of the patient a helper has most recently scanned. Null if no patient
  /// has been scanned by the helper yet.
  String? get patientDpsCode => throw _privateConstructorUsedError;

  /// The measure a helper is currently implementing. Null if the helper is currently
  /// not implementing a measure.
  RunningMeasure? get runningMeasure => throw _privateConstructorUsedError;

  /// The inventory of the helper
  Inventory? get inventory => throw _privateConstructorUsedError;

  /// The instance of the last scanned patient
  Patient? get patient => throw _privateConstructorUsedError;

  /// The identifying number of this helper that is used for any helper-specific
  /// API calls.
  int get helperNr => throw _privateConstructorUsedError;

  /// The role of this helper.
  HelperRole get role => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HelperCopyWith<Helper> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelperCopyWith<$Res> {
  factory $HelperCopyWith(Helper value, $Res Function(Helper) then) =
      _$HelperCopyWithImpl<$Res, Helper>;
  @useResult
  $Res call(
      {String? patientDpsCode,
      RunningMeasure? runningMeasure,
      Inventory? inventory,
      Patient? patient,
      int helperNr,
      HelperRole role});

  $RunningMeasureCopyWith<$Res>? get runningMeasure;
  $InventoryCopyWith<$Res>? get inventory;
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class _$HelperCopyWithImpl<$Res, $Val extends Helper>
    implements $HelperCopyWith<$Res> {
  _$HelperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientDpsCode = freezed,
    Object? runningMeasure = freezed,
    Object? inventory = freezed,
    Object? patient = freezed,
    Object? helperNr = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      patientDpsCode: freezed == patientDpsCode
          ? _value.patientDpsCode
          : patientDpsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      runningMeasure: freezed == runningMeasure
          ? _value.runningMeasure
          : runningMeasure // ignore: cast_nullable_to_non_nullable
              as RunningMeasure?,
      inventory: freezed == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as Inventory?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
      helperNr: null == helperNr
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as HelperRole,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RunningMeasureCopyWith<$Res>? get runningMeasure {
    if (_value.runningMeasure == null) {
      return null;
    }

    return $RunningMeasureCopyWith<$Res>(_value.runningMeasure!, (value) {
      return _then(_value.copyWith(runningMeasure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InventoryCopyWith<$Res>? get inventory {
    if (_value.inventory == null) {
      return null;
    }

    return $InventoryCopyWith<$Res>(_value.inventory!, (value) {
      return _then(_value.copyWith(inventory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $PatientCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HelperCopyWith<$Res> implements $HelperCopyWith<$Res> {
  factory _$$_HelperCopyWith(_$_Helper value, $Res Function(_$_Helper) then) =
      __$$_HelperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? patientDpsCode,
      RunningMeasure? runningMeasure,
      Inventory? inventory,
      Patient? patient,
      int helperNr,
      HelperRole role});

  @override
  $RunningMeasureCopyWith<$Res>? get runningMeasure;
  @override
  $InventoryCopyWith<$Res>? get inventory;
  @override
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class __$$_HelperCopyWithImpl<$Res>
    extends _$HelperCopyWithImpl<$Res, _$_Helper>
    implements _$$_HelperCopyWith<$Res> {
  __$$_HelperCopyWithImpl(_$_Helper _value, $Res Function(_$_Helper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientDpsCode = freezed,
    Object? runningMeasure = freezed,
    Object? inventory = freezed,
    Object? patient = freezed,
    Object? helperNr = null,
    Object? role = null,
  }) {
    return _then(_$_Helper(
      patientDpsCode: freezed == patientDpsCode
          ? _value.patientDpsCode
          : patientDpsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      runningMeasure: freezed == runningMeasure
          ? _value.runningMeasure
          : runningMeasure // ignore: cast_nullable_to_non_nullable
              as RunningMeasure?,
      inventory: freezed == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as Inventory?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
      helperNr: null == helperNr
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as HelperRole,
    ));
  }
}

/// @nodoc

class _$_Helper implements _Helper {
  const _$_Helper(
      {this.patientDpsCode,
      this.runningMeasure,
      this.inventory,
      this.patient,
      required this.helperNr,
      required this.role});

  /// The ID of the patient a helper has most recently scanned. Null if no patient
  /// has been scanned by the helper yet.
  @override
  final String? patientDpsCode;

  /// The measure a helper is currently implementing. Null if the helper is currently
  /// not implementing a measure.
  @override
  final RunningMeasure? runningMeasure;

  /// The inventory of the helper
  @override
  final Inventory? inventory;

  /// The instance of the last scanned patient
  @override
  final Patient? patient;

  /// The identifying number of this helper that is used for any helper-specific
  /// API calls.
  @override
  final int helperNr;

  /// The role of this helper.
  @override
  final HelperRole role;

  @override
  String toString() {
    return 'Helper(patientDpsCode: $patientDpsCode, runningMeasure: $runningMeasure, inventory: $inventory, patient: $patient, helperNr: $helperNr, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Helper &&
            (identical(other.patientDpsCode, patientDpsCode) ||
                other.patientDpsCode == patientDpsCode) &&
            (identical(other.runningMeasure, runningMeasure) ||
                other.runningMeasure == runningMeasure) &&
            (identical(other.inventory, inventory) ||
                other.inventory == inventory) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.helperNr, helperNr) ||
                other.helperNr == helperNr) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patientDpsCode, runningMeasure,
      inventory, patient, helperNr, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HelperCopyWith<_$_Helper> get copyWith =>
      __$$_HelperCopyWithImpl<_$_Helper>(this, _$identity);
}

abstract class _Helper implements Helper {
  const factory _Helper(
      {final String? patientDpsCode,
      final RunningMeasure? runningMeasure,
      final Inventory? inventory,
      final Patient? patient,
      required final int helperNr,
      required final HelperRole role}) = _$_Helper;

  @override

  /// The ID of the patient a helper has most recently scanned. Null if no patient
  /// has been scanned by the helper yet.
  String? get patientDpsCode;
  @override

  /// The measure a helper is currently implementing. Null if the helper is currently
  /// not implementing a measure.
  RunningMeasure? get runningMeasure;
  @override

  /// The inventory of the helper
  Inventory? get inventory;
  @override

  /// The instance of the last scanned patient
  Patient? get patient;
  @override

  /// The identifying number of this helper that is used for any helper-specific
  /// API calls.
  int get helperNr;
  @override

  /// The role of this helper.
  HelperRole get role;
  @override
  @JsonKey(ignore: true)
  _$$_HelperCopyWith<_$_Helper> get copyWith =>
      throw _privateConstructorUsedError;
}
