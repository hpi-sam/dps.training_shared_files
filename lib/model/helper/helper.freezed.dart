// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'helper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HelperTearOff {
  const _$HelperTearOff();

  _Helper call(
      {String? patientDpsCode = null,
      RunningMeasure? runningMeasure = null,
      Inventory? inventory = null,
      Patient? patient = null,
      required int helperNr,
      required HelperRole role,
      int? entityID = null}) {
    return _Helper(
      patientDpsCode: patientDpsCode,
      runningMeasure: runningMeasure,
      inventory: inventory,
      patient: patient,
      helperNr: helperNr,
      role: role,
      entityID: entityID,
    );
  }
}

/// @nodoc
const $Helper = _$HelperTearOff();

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

  /// The entityID of this helper that is displayed in its QR-Code. **Caution:** This is **not** the ID used in helper-specific
  /// API calls. For that, see [helperNr].
  int? get entityID => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HelperCopyWith<Helper> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelperCopyWith<$Res> {
  factory $HelperCopyWith(Helper value, $Res Function(Helper) then) =
      _$HelperCopyWithImpl<$Res>;
  $Res call(
      {String? patientDpsCode,
      RunningMeasure? runningMeasure,
      Inventory? inventory,
      Patient? patient,
      int helperNr,
      HelperRole role,
      int? entityID});

  $RunningMeasureCopyWith<$Res>? get runningMeasure;
  $InventoryCopyWith<$Res>? get inventory;
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class _$HelperCopyWithImpl<$Res> implements $HelperCopyWith<$Res> {
  _$HelperCopyWithImpl(this._value, this._then);

  final Helper _value;
  // ignore: unused_field
  final $Res Function(Helper) _then;

  @override
  $Res call({
    Object? patientDpsCode = freezed,
    Object? runningMeasure = freezed,
    Object? inventory = freezed,
    Object? patient = freezed,
    Object? helperNr = freezed,
    Object? role = freezed,
    Object? entityID = freezed,
  }) {
    return _then(_value.copyWith(
      patientDpsCode: patientDpsCode == freezed
          ? _value.patientDpsCode
          : patientDpsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      runningMeasure: runningMeasure == freezed
          ? _value.runningMeasure
          : runningMeasure // ignore: cast_nullable_to_non_nullable
              as RunningMeasure?,
      inventory: inventory == freezed
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as Inventory?,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
      helperNr: helperNr == freezed
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as HelperRole,
      entityID: entityID == freezed
          ? _value.entityID
          : entityID // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $RunningMeasureCopyWith<$Res>? get runningMeasure {
    if (_value.runningMeasure == null) {
      return null;
    }

    return $RunningMeasureCopyWith<$Res>(_value.runningMeasure!, (value) {
      return _then(_value.copyWith(runningMeasure: value));
    });
  }

  @override
  $InventoryCopyWith<$Res>? get inventory {
    if (_value.inventory == null) {
      return null;
    }

    return $InventoryCopyWith<$Res>(_value.inventory!, (value) {
      return _then(_value.copyWith(inventory: value));
    });
  }

  @override
  $PatientCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $PatientCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value));
    });
  }
}

/// @nodoc
abstract class _$HelperCopyWith<$Res> implements $HelperCopyWith<$Res> {
  factory _$HelperCopyWith(_Helper value, $Res Function(_Helper) then) =
      __$HelperCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? patientDpsCode,
      RunningMeasure? runningMeasure,
      Inventory? inventory,
      Patient? patient,
      int helperNr,
      HelperRole role,
      int? entityID});

  @override
  $RunningMeasureCopyWith<$Res>? get runningMeasure;
  @override
  $InventoryCopyWith<$Res>? get inventory;
  @override
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class __$HelperCopyWithImpl<$Res> extends _$HelperCopyWithImpl<$Res>
    implements _$HelperCopyWith<$Res> {
  __$HelperCopyWithImpl(_Helper _value, $Res Function(_Helper) _then)
      : super(_value, (v) => _then(v as _Helper));

  @override
  _Helper get _value => super._value as _Helper;

  @override
  $Res call({
    Object? patientDpsCode = freezed,
    Object? runningMeasure = freezed,
    Object? inventory = freezed,
    Object? patient = freezed,
    Object? helperNr = freezed,
    Object? role = freezed,
    Object? entityID = freezed,
  }) {
    return _then(_Helper(
      patientDpsCode: patientDpsCode == freezed
          ? _value.patientDpsCode
          : patientDpsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      runningMeasure: runningMeasure == freezed
          ? _value.runningMeasure
          : runningMeasure // ignore: cast_nullable_to_non_nullable
              as RunningMeasure?,
      inventory: inventory == freezed
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as Inventory?,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
      helperNr: helperNr == freezed
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as HelperRole,
      entityID: entityID == freezed
          ? _value.entityID
          : entityID // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
class _$_Helper extends _Helper {
  const _$_Helper(
      {this.patientDpsCode = null,
      this.runningMeasure = null,
      this.inventory = null,
      this.patient = null,
      required this.helperNr,
      required this.role,
      this.entityID = null})
      : super._();

  @JsonKey(defaultValue: null)
  @override

  /// The ID of the patient a helper has most recently scanned. Null if no patient
  /// has been scanned by the helper yet.
  final String? patientDpsCode;
  @JsonKey(defaultValue: null)
  @override

  /// The measure a helper is currently implementing. Null if the helper is currently
  /// not implementing a measure.
  final RunningMeasure? runningMeasure;
  @JsonKey(defaultValue: null)
  @override

  /// The inventory of the helper
  final Inventory? inventory;
  @JsonKey(defaultValue: null)
  @override

  /// The instance of the last scanned patient
  final Patient? patient;
  @override

  /// The identifying number of this helper that is used for any helper-specific
  /// API calls.
  final int helperNr;
  @override

  /// The role of this helper.
  final HelperRole role;
  @JsonKey(defaultValue: null)
  @override

  /// The entityID of this helper that is displayed in its QR-Code. **Caution:** This is **not** the ID used in helper-specific
  /// API calls. For that, see [helperNr].
  final int? entityID;

  @override
  String toString() {
    return 'Helper(patientDpsCode: $patientDpsCode, runningMeasure: $runningMeasure, inventory: $inventory, patient: $patient, helperNr: $helperNr, role: $role, entityID: $entityID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Helper &&
            (identical(other.patientDpsCode, patientDpsCode) ||
                const DeepCollectionEquality()
                    .equals(other.patientDpsCode, patientDpsCode)) &&
            (identical(other.runningMeasure, runningMeasure) ||
                const DeepCollectionEquality()
                    .equals(other.runningMeasure, runningMeasure)) &&
            (identical(other.inventory, inventory) ||
                const DeepCollectionEquality()
                    .equals(other.inventory, inventory)) &&
            (identical(other.patient, patient) ||
                const DeepCollectionEquality()
                    .equals(other.patient, patient)) &&
            (identical(other.helperNr, helperNr) ||
                const DeepCollectionEquality()
                    .equals(other.helperNr, helperNr)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.entityID, entityID) ||
                const DeepCollectionEquality()
                    .equals(other.entityID, entityID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(patientDpsCode) ^
      const DeepCollectionEquality().hash(runningMeasure) ^
      const DeepCollectionEquality().hash(inventory) ^
      const DeepCollectionEquality().hash(patient) ^
      const DeepCollectionEquality().hash(helperNr) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(entityID);

  @JsonKey(ignore: true)
  @override
  _$HelperCopyWith<_Helper> get copyWith =>
      __$HelperCopyWithImpl<_Helper>(this, _$identity);
}

abstract class _Helper extends Helper {
  const factory _Helper(
      {String? patientDpsCode,
      RunningMeasure? runningMeasure,
      Inventory? inventory,
      Patient? patient,
      required int helperNr,
      required HelperRole role,
      int? entityID}) = _$_Helper;
  const _Helper._() : super._();

  @override

  /// The ID of the patient a helper has most recently scanned. Null if no patient
  /// has been scanned by the helper yet.
  String? get patientDpsCode => throw _privateConstructorUsedError;
  @override

  /// The measure a helper is currently implementing. Null if the helper is currently
  /// not implementing a measure.
  RunningMeasure? get runningMeasure => throw _privateConstructorUsedError;
  @override

  /// The inventory of the helper
  Inventory? get inventory => throw _privateConstructorUsedError;
  @override

  /// The instance of the last scanned patient
  Patient? get patient => throw _privateConstructorUsedError;
  @override

  /// The identifying number of this helper that is used for any helper-specific
  /// API calls.
  int get helperNr => throw _privateConstructorUsedError;
  @override

  /// The role of this helper.
  HelperRole get role => throw _privateConstructorUsedError;
  @override

  /// The entityID of this helper that is displayed in its QR-Code. **Caution:** This is **not** the ID used in helper-specific
  /// API calls. For that, see [helperNr].
  int? get entityID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HelperCopyWith<_Helper> get copyWith => throw _privateConstructorUsedError;
}
