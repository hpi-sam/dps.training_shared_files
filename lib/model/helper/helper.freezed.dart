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
      {String? dpsCode = null,
      RunningMeasure? runningMeasure = null,
      required int activePage,
      required int helperNr,
      required HelperRole role,
      required int entityID}) {
    return _Helper(
      dpsCode: dpsCode,
      runningMeasure: runningMeasure,
      activePage: activePage,
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
  String? get dpsCode => throw _privateConstructorUsedError;

  /// The measure a helper is currently implementing. Null if the helper is currently
  /// not implementing a measure.
  RunningMeasure? get runningMeasure => throw _privateConstructorUsedError;

  /// The page of the bottom navigation bar a helper has viewed last.
  int get activePage => throw _privateConstructorUsedError;

  /// The identifying number of this helper that is used for any helper-specific
  /// API calls.
  int get helperNr => throw _privateConstructorUsedError;

  /// The role of this helper.
  HelperRole get role => throw _privateConstructorUsedError;

  /// The entityID of this helper. **Caution:** This is **not** the ID used in helper-specific
  /// API calls. For that, see [helperNr].
  int get entityID => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HelperCopyWith<Helper> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelperCopyWith<$Res> {
  factory $HelperCopyWith(Helper value, $Res Function(Helper) then) =
      _$HelperCopyWithImpl<$Res>;
  $Res call(
      {String? dpsCode,
      RunningMeasure? runningMeasure,
      int activePage,
      int helperNr,
      HelperRole role,
      int entityID});

  $RunningMeasureCopyWith<$Res>? get runningMeasure;
}

/// @nodoc
class _$HelperCopyWithImpl<$Res> implements $HelperCopyWith<$Res> {
  _$HelperCopyWithImpl(this._value, this._then);

  final Helper _value;
  // ignore: unused_field
  final $Res Function(Helper) _then;

  @override
  $Res call({
    Object? dpsCode = freezed,
    Object? runningMeasure = freezed,
    Object? activePage = freezed,
    Object? helperNr = freezed,
    Object? role = freezed,
    Object? entityID = freezed,
  }) {
    return _then(_value.copyWith(
      dpsCode: dpsCode == freezed
          ? _value.dpsCode
          : dpsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      runningMeasure: runningMeasure == freezed
          ? _value.runningMeasure
          : runningMeasure // ignore: cast_nullable_to_non_nullable
              as RunningMeasure?,
      activePage: activePage == freezed
          ? _value.activePage
          : activePage // ignore: cast_nullable_to_non_nullable
              as int,
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
              as int,
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
}

/// @nodoc
abstract class _$HelperCopyWith<$Res> implements $HelperCopyWith<$Res> {
  factory _$HelperCopyWith(_Helper value, $Res Function(_Helper) then) =
      __$HelperCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? dpsCode,
      RunningMeasure? runningMeasure,
      int activePage,
      int helperNr,
      HelperRole role,
      int entityID});

  @override
  $RunningMeasureCopyWith<$Res>? get runningMeasure;
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
    Object? dpsCode = freezed,
    Object? runningMeasure = freezed,
    Object? activePage = freezed,
    Object? helperNr = freezed,
    Object? role = freezed,
    Object? entityID = freezed,
  }) {
    return _then(_Helper(
      dpsCode: dpsCode == freezed
          ? _value.dpsCode
          : dpsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      runningMeasure: runningMeasure == freezed
          ? _value.runningMeasure
          : runningMeasure // ignore: cast_nullable_to_non_nullable
              as RunningMeasure?,
      activePage: activePage == freezed
          ? _value.activePage
          : activePage // ignore: cast_nullable_to_non_nullable
              as int,
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
              as int,
    ));
  }
}

/// @nodoc
class _$_Helper extends _Helper {
  const _$_Helper(
      {this.dpsCode = null,
      this.runningMeasure = null,
      required this.activePage,
      required this.helperNr,
      required this.role,
      required this.entityID})
      : super._();

  @JsonKey(defaultValue: null)
  @override

  /// The ID of the patient a helper has most recently scanned. Null if no patient
  /// has been scanned by the helper yet.
  final String? dpsCode;
  @JsonKey(defaultValue: null)
  @override

  /// The measure a helper is currently implementing. Null if the helper is currently
  /// not implementing a measure.
  final RunningMeasure? runningMeasure;
  @override

  /// The page of the bottom navigation bar a helper has viewed last.
  final int activePage;
  @override

  /// The identifying number of this helper that is used for any helper-specific
  /// API calls.
  final int helperNr;
  @override

  /// The role of this helper.
  final HelperRole role;
  @override

  /// The entityID of this helper. **Caution:** This is **not** the ID used in helper-specific
  /// API calls. For that, see [helperNr].
  final int entityID;

  @override
  String toString() {
    return 'Helper(dpsCode: $dpsCode, runningMeasure: $runningMeasure, activePage: $activePage, helperNr: $helperNr, role: $role, entityID: $entityID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Helper &&
            (identical(other.dpsCode, dpsCode) ||
                const DeepCollectionEquality()
                    .equals(other.dpsCode, dpsCode)) &&
            (identical(other.runningMeasure, runningMeasure) ||
                const DeepCollectionEquality()
                    .equals(other.runningMeasure, runningMeasure)) &&
            (identical(other.activePage, activePage) ||
                const DeepCollectionEquality()
                    .equals(other.activePage, activePage)) &&
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
      const DeepCollectionEquality().hash(dpsCode) ^
      const DeepCollectionEquality().hash(runningMeasure) ^
      const DeepCollectionEquality().hash(activePage) ^
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
      {String? dpsCode,
      RunningMeasure? runningMeasure,
      required int activePage,
      required int helperNr,
      required HelperRole role,
      required int entityID}) = _$_Helper;
  const _Helper._() : super._();

  @override

  /// The ID of the patient a helper has most recently scanned. Null if no patient
  /// has been scanned by the helper yet.
  String? get dpsCode => throw _privateConstructorUsedError;
  @override

  /// The measure a helper is currently implementing. Null if the helper is currently
  /// not implementing a measure.
  RunningMeasure? get runningMeasure => throw _privateConstructorUsedError;
  @override

  /// The page of the bottom navigation bar a helper has viewed last.
  int get activePage => throw _privateConstructorUsedError;
  @override

  /// The identifying number of this helper that is used for any helper-specific
  /// API calls.
  int get helperNr => throw _privateConstructorUsedError;
  @override

  /// The role of this helper.
  HelperRole get role => throw _privateConstructorUsedError;
  @override

  /// The entityID of this helper. **Caution:** This is **not** the ID used in helper-specific
  /// API calls. For that, see [helperNr].
  int get entityID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HelperCopyWith<_Helper> get copyWith => throw _privateConstructorUsedError;
}
