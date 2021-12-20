// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'simplified_patients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SimplifiedPatientListTearOff {
  const _$SimplifiedPatientListTearOff();

  _SimplifiedPatientList call({required List<SimplifiedPatient> patients}) {
    return _SimplifiedPatientList(
      patients: patients,
    );
  }
}

/// @nodoc
const $SimplifiedPatientList = _$SimplifiedPatientListTearOff();

/// @nodoc
mixin _$SimplifiedPatientList {
  List<SimplifiedPatient> get patients => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedPatientListCopyWith<SimplifiedPatientList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedPatientListCopyWith<$Res> {
  factory $SimplifiedPatientListCopyWith(SimplifiedPatientList value,
          $Res Function(SimplifiedPatientList) then) =
      _$SimplifiedPatientListCopyWithImpl<$Res>;
  $Res call({List<SimplifiedPatient> patients});
}

/// @nodoc
class _$SimplifiedPatientListCopyWithImpl<$Res>
    implements $SimplifiedPatientListCopyWith<$Res> {
  _$SimplifiedPatientListCopyWithImpl(this._value, this._then);

  final SimplifiedPatientList _value;
  // ignore: unused_field
  final $Res Function(SimplifiedPatientList) _then;

  @override
  $Res call({
    Object? patients = freezed,
  }) {
    return _then(_value.copyWith(
      patients: patients == freezed
          ? _value.patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<SimplifiedPatient>,
    ));
  }
}

/// @nodoc
abstract class _$SimplifiedPatientListCopyWith<$Res>
    implements $SimplifiedPatientListCopyWith<$Res> {
  factory _$SimplifiedPatientListCopyWith(_SimplifiedPatientList value,
          $Res Function(_SimplifiedPatientList) then) =
      __$SimplifiedPatientListCopyWithImpl<$Res>;
  @override
  $Res call({List<SimplifiedPatient> patients});
}

/// @nodoc
class __$SimplifiedPatientListCopyWithImpl<$Res>
    extends _$SimplifiedPatientListCopyWithImpl<$Res>
    implements _$SimplifiedPatientListCopyWith<$Res> {
  __$SimplifiedPatientListCopyWithImpl(_SimplifiedPatientList _value,
      $Res Function(_SimplifiedPatientList) _then)
      : super(_value, (v) => _then(v as _SimplifiedPatientList));

  @override
  _SimplifiedPatientList get _value => super._value as _SimplifiedPatientList;

  @override
  $Res call({
    Object? patients = freezed,
  }) {
    return _then(_SimplifiedPatientList(
      patients: patients == freezed
          ? _value.patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<SimplifiedPatient>,
    ));
  }
}

/// @nodoc
class _$_SimplifiedPatientList implements _SimplifiedPatientList {
  const _$_SimplifiedPatientList({required this.patients});

  @override
  final List<SimplifiedPatient> patients;

  @override
  String toString() {
    return 'SimplifiedPatientList(patients: $patients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimplifiedPatientList &&
            (identical(other.patients, patients) ||
                const DeepCollectionEquality()
                    .equals(other.patients, patients)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(patients);

  @JsonKey(ignore: true)
  @override
  _$SimplifiedPatientListCopyWith<_SimplifiedPatientList> get copyWith =>
      __$SimplifiedPatientListCopyWithImpl<_SimplifiedPatientList>(
          this, _$identity);
}

abstract class _SimplifiedPatientList implements SimplifiedPatientList {
  const factory _SimplifiedPatientList(
      {required List<SimplifiedPatient> patients}) = _$_SimplifiedPatientList;

  @override
  List<SimplifiedPatient> get patients => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SimplifiedPatientListCopyWith<_SimplifiedPatientList> get copyWith =>
      throw _privateConstructorUsedError;
}

SimplifiedPatient _$SimplifiedPatientFromJson(Map<String, dynamic> json) {
  return _SimplifiedPatient.fromJson(json);
}

/// @nodoc
class _$SimplifiedPatientTearOff {
  const _$SimplifiedPatientTearOff();

  _SimplifiedPatient call(
      {required String dps_code,
      required String triage,
      required String suggested_triage,
      required String current_phase_nr,
      required String next_phase_nr,
      required bool is_checked_out}) {
    return _SimplifiedPatient(
      dps_code: dps_code,
      triage: triage,
      suggested_triage: suggested_triage,
      current_phase_nr: current_phase_nr,
      next_phase_nr: next_phase_nr,
      is_checked_out: is_checked_out,
    );
  }

  SimplifiedPatient fromJson(Map<String, Object> json) {
    return SimplifiedPatient.fromJson(json);
  }
}

/// @nodoc
const $SimplifiedPatient = _$SimplifiedPatientTearOff();

/// @nodoc
mixin _$SimplifiedPatient {
  String get dps_code => throw _privateConstructorUsedError;
  String get triage => throw _privateConstructorUsedError;
  String get suggested_triage => throw _privateConstructorUsedError;
  String get current_phase_nr => throw _privateConstructorUsedError;
  String get next_phase_nr => throw _privateConstructorUsedError;
  bool get is_checked_out => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimplifiedPatientCopyWith<SimplifiedPatient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedPatientCopyWith<$Res> {
  factory $SimplifiedPatientCopyWith(
          SimplifiedPatient value, $Res Function(SimplifiedPatient) then) =
      _$SimplifiedPatientCopyWithImpl<$Res>;
  $Res call(
      {String dps_code,
      String triage,
      String suggested_triage,
      String current_phase_nr,
      String next_phase_nr,
      bool is_checked_out});
}

/// @nodoc
class _$SimplifiedPatientCopyWithImpl<$Res>
    implements $SimplifiedPatientCopyWith<$Res> {
  _$SimplifiedPatientCopyWithImpl(this._value, this._then);

  final SimplifiedPatient _value;
  // ignore: unused_field
  final $Res Function(SimplifiedPatient) _then;

  @override
  $Res call({
    Object? dps_code = freezed,
    Object? triage = freezed,
    Object? suggested_triage = freezed,
    Object? current_phase_nr = freezed,
    Object? next_phase_nr = freezed,
    Object? is_checked_out = freezed,
  }) {
    return _then(_value.copyWith(
      dps_code: dps_code == freezed
          ? _value.dps_code
          : dps_code // ignore: cast_nullable_to_non_nullable
              as String,
      triage: triage == freezed
          ? _value.triage
          : triage // ignore: cast_nullable_to_non_nullable
              as String,
      suggested_triage: suggested_triage == freezed
          ? _value.suggested_triage
          : suggested_triage // ignore: cast_nullable_to_non_nullable
              as String,
      current_phase_nr: current_phase_nr == freezed
          ? _value.current_phase_nr
          : current_phase_nr // ignore: cast_nullable_to_non_nullable
              as String,
      next_phase_nr: next_phase_nr == freezed
          ? _value.next_phase_nr
          : next_phase_nr // ignore: cast_nullable_to_non_nullable
              as String,
      is_checked_out: is_checked_out == freezed
          ? _value.is_checked_out
          : is_checked_out // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SimplifiedPatientCopyWith<$Res>
    implements $SimplifiedPatientCopyWith<$Res> {
  factory _$SimplifiedPatientCopyWith(
          _SimplifiedPatient value, $Res Function(_SimplifiedPatient) then) =
      __$SimplifiedPatientCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dps_code,
      String triage,
      String suggested_triage,
      String current_phase_nr,
      String next_phase_nr,
      bool is_checked_out});
}

/// @nodoc
class __$SimplifiedPatientCopyWithImpl<$Res>
    extends _$SimplifiedPatientCopyWithImpl<$Res>
    implements _$SimplifiedPatientCopyWith<$Res> {
  __$SimplifiedPatientCopyWithImpl(
      _SimplifiedPatient _value, $Res Function(_SimplifiedPatient) _then)
      : super(_value, (v) => _then(v as _SimplifiedPatient));

  @override
  _SimplifiedPatient get _value => super._value as _SimplifiedPatient;

  @override
  $Res call({
    Object? dps_code = freezed,
    Object? triage = freezed,
    Object? suggested_triage = freezed,
    Object? current_phase_nr = freezed,
    Object? next_phase_nr = freezed,
    Object? is_checked_out = freezed,
  }) {
    return _then(_SimplifiedPatient(
      dps_code: dps_code == freezed
          ? _value.dps_code
          : dps_code // ignore: cast_nullable_to_non_nullable
              as String,
      triage: triage == freezed
          ? _value.triage
          : triage // ignore: cast_nullable_to_non_nullable
              as String,
      suggested_triage: suggested_triage == freezed
          ? _value.suggested_triage
          : suggested_triage // ignore: cast_nullable_to_non_nullable
              as String,
      current_phase_nr: current_phase_nr == freezed
          ? _value.current_phase_nr
          : current_phase_nr // ignore: cast_nullable_to_non_nullable
              as String,
      next_phase_nr: next_phase_nr == freezed
          ? _value.next_phase_nr
          : next_phase_nr // ignore: cast_nullable_to_non_nullable
              as String,
      is_checked_out: is_checked_out == freezed
          ? _value.is_checked_out
          : is_checked_out // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SimplifiedPatient implements _SimplifiedPatient {
  const _$_SimplifiedPatient(
      {required this.dps_code,
      required this.triage,
      required this.suggested_triage,
      required this.current_phase_nr,
      required this.next_phase_nr,
      required this.is_checked_out});

  factory _$_SimplifiedPatient.fromJson(Map<String, dynamic> json) =>
      _$_$_SimplifiedPatientFromJson(json);

  @override
  final String dps_code;
  @override
  final String triage;
  @override
  final String suggested_triage;
  @override
  final String current_phase_nr;
  @override
  final String next_phase_nr;
  @override
  final bool is_checked_out;

  @override
  String toString() {
    return 'SimplifiedPatient(dps_code: $dps_code, triage: $triage, suggested_triage: $suggested_triage, current_phase_nr: $current_phase_nr, next_phase_nr: $next_phase_nr, is_checked_out: $is_checked_out)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimplifiedPatient &&
            (identical(other.dps_code, dps_code) ||
                const DeepCollectionEquality()
                    .equals(other.dps_code, dps_code)) &&
            (identical(other.triage, triage) ||
                const DeepCollectionEquality().equals(other.triage, triage)) &&
            (identical(other.suggested_triage, suggested_triage) ||
                const DeepCollectionEquality()
                    .equals(other.suggested_triage, suggested_triage)) &&
            (identical(other.current_phase_nr, current_phase_nr) ||
                const DeepCollectionEquality()
                    .equals(other.current_phase_nr, current_phase_nr)) &&
            (identical(other.next_phase_nr, next_phase_nr) ||
                const DeepCollectionEquality()
                    .equals(other.next_phase_nr, next_phase_nr)) &&
            (identical(other.is_checked_out, is_checked_out) ||
                const DeepCollectionEquality()
                    .equals(other.is_checked_out, is_checked_out)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dps_code) ^
      const DeepCollectionEquality().hash(triage) ^
      const DeepCollectionEquality().hash(suggested_triage) ^
      const DeepCollectionEquality().hash(current_phase_nr) ^
      const DeepCollectionEquality().hash(next_phase_nr) ^
      const DeepCollectionEquality().hash(is_checked_out);

  @JsonKey(ignore: true)
  @override
  _$SimplifiedPatientCopyWith<_SimplifiedPatient> get copyWith =>
      __$SimplifiedPatientCopyWithImpl<_SimplifiedPatient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SimplifiedPatientToJson(this);
  }
}

abstract class _SimplifiedPatient implements SimplifiedPatient {
  const factory _SimplifiedPatient(
      {required String dps_code,
      required String triage,
      required String suggested_triage,
      required String current_phase_nr,
      required String next_phase_nr,
      required bool is_checked_out}) = _$_SimplifiedPatient;

  factory _SimplifiedPatient.fromJson(Map<String, dynamic> json) =
      _$_SimplifiedPatient.fromJson;

  @override
  String get dps_code => throw _privateConstructorUsedError;
  @override
  String get triage => throw _privateConstructorUsedError;
  @override
  String get suggested_triage => throw _privateConstructorUsedError;
  @override
  String get current_phase_nr => throw _privateConstructorUsedError;
  @override
  String get next_phase_nr => throw _privateConstructorUsedError;
  @override
  bool get is_checked_out => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SimplifiedPatientCopyWith<_SimplifiedPatient> get copyWith =>
      throw _privateConstructorUsedError;
}
