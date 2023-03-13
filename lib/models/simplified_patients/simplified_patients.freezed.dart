// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_patients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$SimplifiedPatientListCopyWithImpl<$Res, SimplifiedPatientList>;
  @useResult
  $Res call({List<SimplifiedPatient> patients});
}

/// @nodoc
class _$SimplifiedPatientListCopyWithImpl<$Res,
        $Val extends SimplifiedPatientList>
    implements $SimplifiedPatientListCopyWith<$Res> {
  _$SimplifiedPatientListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patients = null,
  }) {
    return _then(_value.copyWith(
      patients: null == patients
          ? _value.patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<SimplifiedPatient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SimplifiedPatientListCopyWith<$Res>
    implements $SimplifiedPatientListCopyWith<$Res> {
  factory _$$_SimplifiedPatientListCopyWith(_$_SimplifiedPatientList value,
          $Res Function(_$_SimplifiedPatientList) then) =
      __$$_SimplifiedPatientListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SimplifiedPatient> patients});
}

/// @nodoc
class __$$_SimplifiedPatientListCopyWithImpl<$Res>
    extends _$SimplifiedPatientListCopyWithImpl<$Res, _$_SimplifiedPatientList>
    implements _$$_SimplifiedPatientListCopyWith<$Res> {
  __$$_SimplifiedPatientListCopyWithImpl(_$_SimplifiedPatientList _value,
      $Res Function(_$_SimplifiedPatientList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patients = null,
  }) {
    return _then(_$_SimplifiedPatientList(
      patients: null == patients
          ? _value._patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<SimplifiedPatient>,
    ));
  }
}

/// @nodoc

class _$_SimplifiedPatientList implements _SimplifiedPatientList {
  const _$_SimplifiedPatientList(
      {required final List<SimplifiedPatient> patients})
      : _patients = patients;

  final List<SimplifiedPatient> _patients;
  @override
  List<SimplifiedPatient> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  @override
  String toString() {
    return 'SimplifiedPatientList(patients: $patients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SimplifiedPatientList &&
            const DeepCollectionEquality().equals(other._patients, _patients));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_patients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SimplifiedPatientListCopyWith<_$_SimplifiedPatientList> get copyWith =>
      __$$_SimplifiedPatientListCopyWithImpl<_$_SimplifiedPatientList>(
          this, _$identity);
}

abstract class _SimplifiedPatientList implements SimplifiedPatientList {
  const factory _SimplifiedPatientList(
          {required final List<SimplifiedPatient> patients}) =
      _$_SimplifiedPatientList;

  @override
  List<SimplifiedPatient> get patients;
  @override
  @JsonKey(ignore: true)
  _$$_SimplifiedPatientListCopyWith<_$_SimplifiedPatientList> get copyWith =>
      throw _privateConstructorUsedError;
}

SimplifiedPatient _$SimplifiedPatientFromJson(Map<String, dynamic> json) {
  return _SimplifiedPatient.fromJson(json);
}

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
      _$SimplifiedPatientCopyWithImpl<$Res, SimplifiedPatient>;
  @useResult
  $Res call(
      {String dps_code,
      String triage,
      String suggested_triage,
      String current_phase_nr,
      String next_phase_nr,
      bool is_checked_out});
}

/// @nodoc
class _$SimplifiedPatientCopyWithImpl<$Res, $Val extends SimplifiedPatient>
    implements $SimplifiedPatientCopyWith<$Res> {
  _$SimplifiedPatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dps_code = null,
    Object? triage = null,
    Object? suggested_triage = null,
    Object? current_phase_nr = null,
    Object? next_phase_nr = null,
    Object? is_checked_out = null,
  }) {
    return _then(_value.copyWith(
      dps_code: null == dps_code
          ? _value.dps_code
          : dps_code // ignore: cast_nullable_to_non_nullable
              as String,
      triage: null == triage
          ? _value.triage
          : triage // ignore: cast_nullable_to_non_nullable
              as String,
      suggested_triage: null == suggested_triage
          ? _value.suggested_triage
          : suggested_triage // ignore: cast_nullable_to_non_nullable
              as String,
      current_phase_nr: null == current_phase_nr
          ? _value.current_phase_nr
          : current_phase_nr // ignore: cast_nullable_to_non_nullable
              as String,
      next_phase_nr: null == next_phase_nr
          ? _value.next_phase_nr
          : next_phase_nr // ignore: cast_nullable_to_non_nullable
              as String,
      is_checked_out: null == is_checked_out
          ? _value.is_checked_out
          : is_checked_out // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SimplifiedPatientCopyWith<$Res>
    implements $SimplifiedPatientCopyWith<$Res> {
  factory _$$_SimplifiedPatientCopyWith(_$_SimplifiedPatient value,
          $Res Function(_$_SimplifiedPatient) then) =
      __$$_SimplifiedPatientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dps_code,
      String triage,
      String suggested_triage,
      String current_phase_nr,
      String next_phase_nr,
      bool is_checked_out});
}

/// @nodoc
class __$$_SimplifiedPatientCopyWithImpl<$Res>
    extends _$SimplifiedPatientCopyWithImpl<$Res, _$_SimplifiedPatient>
    implements _$$_SimplifiedPatientCopyWith<$Res> {
  __$$_SimplifiedPatientCopyWithImpl(
      _$_SimplifiedPatient _value, $Res Function(_$_SimplifiedPatient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dps_code = null,
    Object? triage = null,
    Object? suggested_triage = null,
    Object? current_phase_nr = null,
    Object? next_phase_nr = null,
    Object? is_checked_out = null,
  }) {
    return _then(_$_SimplifiedPatient(
      dps_code: null == dps_code
          ? _value.dps_code
          : dps_code // ignore: cast_nullable_to_non_nullable
              as String,
      triage: null == triage
          ? _value.triage
          : triage // ignore: cast_nullable_to_non_nullable
              as String,
      suggested_triage: null == suggested_triage
          ? _value.suggested_triage
          : suggested_triage // ignore: cast_nullable_to_non_nullable
              as String,
      current_phase_nr: null == current_phase_nr
          ? _value.current_phase_nr
          : current_phase_nr // ignore: cast_nullable_to_non_nullable
              as String,
      next_phase_nr: null == next_phase_nr
          ? _value.next_phase_nr
          : next_phase_nr // ignore: cast_nullable_to_non_nullable
              as String,
      is_checked_out: null == is_checked_out
          ? _value.is_checked_out
          : is_checked_out // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SimplifiedPatient implements _SimplifiedPatient {
  const _$_SimplifiedPatient(
      {required this.dps_code,
      required this.triage,
      required this.suggested_triage,
      required this.current_phase_nr,
      required this.next_phase_nr,
      required this.is_checked_out});

  factory _$_SimplifiedPatient.fromJson(Map<String, dynamic> json) =>
      _$$_SimplifiedPatientFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_SimplifiedPatient &&
            (identical(other.dps_code, dps_code) ||
                other.dps_code == dps_code) &&
            (identical(other.triage, triage) || other.triage == triage) &&
            (identical(other.suggested_triage, suggested_triage) ||
                other.suggested_triage == suggested_triage) &&
            (identical(other.current_phase_nr, current_phase_nr) ||
                other.current_phase_nr == current_phase_nr) &&
            (identical(other.next_phase_nr, next_phase_nr) ||
                other.next_phase_nr == next_phase_nr) &&
            (identical(other.is_checked_out, is_checked_out) ||
                other.is_checked_out == is_checked_out));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dps_code, triage,
      suggested_triage, current_phase_nr, next_phase_nr, is_checked_out);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SimplifiedPatientCopyWith<_$_SimplifiedPatient> get copyWith =>
      __$$_SimplifiedPatientCopyWithImpl<_$_SimplifiedPatient>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SimplifiedPatientToJson(
      this,
    );
  }
}

abstract class _SimplifiedPatient implements SimplifiedPatient {
  const factory _SimplifiedPatient(
      {required final String dps_code,
      required final String triage,
      required final String suggested_triage,
      required final String current_phase_nr,
      required final String next_phase_nr,
      required final bool is_checked_out}) = _$_SimplifiedPatient;

  factory _SimplifiedPatient.fromJson(Map<String, dynamic> json) =
      _$_SimplifiedPatient.fromJson;

  @override
  String get dps_code;
  @override
  String get triage;
  @override
  String get suggested_triage;
  @override
  String get current_phase_nr;
  @override
  String get next_phase_nr;
  @override
  bool get is_checked_out;
  @override
  @JsonKey(ignore: true)
  _$$_SimplifiedPatientCopyWith<_$_SimplifiedPatient> get copyWith =>
      throw _privateConstructorUsedError;
}
