// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'applied_measures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppliedMeasuresTearOff {
  const _$AppliedMeasuresTearOff();

  _AppliedMeasures call({required List<AppliedMeasure> appliedMeasures}) {
    return _AppliedMeasures(
      appliedMeasures: appliedMeasures,
    );
  }
}

/// @nodoc
const $AppliedMeasures = _$AppliedMeasuresTearOff();

/// @nodoc
mixin _$AppliedMeasures {
  List<AppliedMeasure> get appliedMeasures =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppliedMeasuresCopyWith<AppliedMeasures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppliedMeasuresCopyWith<$Res> {
  factory $AppliedMeasuresCopyWith(
          AppliedMeasures value, $Res Function(AppliedMeasures) then) =
      _$AppliedMeasuresCopyWithImpl<$Res>;
  $Res call({List<AppliedMeasure> appliedMeasures});
}

/// @nodoc
class _$AppliedMeasuresCopyWithImpl<$Res>
    implements $AppliedMeasuresCopyWith<$Res> {
  _$AppliedMeasuresCopyWithImpl(this._value, this._then);

  final AppliedMeasures _value;
  // ignore: unused_field
  final $Res Function(AppliedMeasures) _then;

  @override
  $Res call({
    Object? appliedMeasures = freezed,
  }) {
    return _then(_value.copyWith(
      appliedMeasures: appliedMeasures == freezed
          ? _value.appliedMeasures
          : appliedMeasures // ignore: cast_nullable_to_non_nullable
              as List<AppliedMeasure>,
    ));
  }
}

/// @nodoc
abstract class _$AppliedMeasuresCopyWith<$Res>
    implements $AppliedMeasuresCopyWith<$Res> {
  factory _$AppliedMeasuresCopyWith(
          _AppliedMeasures value, $Res Function(_AppliedMeasures) then) =
      __$AppliedMeasuresCopyWithImpl<$Res>;
  @override
  $Res call({List<AppliedMeasure> appliedMeasures});
}

/// @nodoc
class __$AppliedMeasuresCopyWithImpl<$Res>
    extends _$AppliedMeasuresCopyWithImpl<$Res>
    implements _$AppliedMeasuresCopyWith<$Res> {
  __$AppliedMeasuresCopyWithImpl(
      _AppliedMeasures _value, $Res Function(_AppliedMeasures) _then)
      : super(_value, (v) => _then(v as _AppliedMeasures));

  @override
  _AppliedMeasures get _value => super._value as _AppliedMeasures;

  @override
  $Res call({
    Object? appliedMeasures = freezed,
  }) {
    return _then(_AppliedMeasures(
      appliedMeasures: appliedMeasures == freezed
          ? _value.appliedMeasures
          : appliedMeasures // ignore: cast_nullable_to_non_nullable
              as List<AppliedMeasure>,
    ));
  }
}

/// @nodoc
class _$_AppliedMeasures extends _AppliedMeasures with DiagnosticableTreeMixin {
  const _$_AppliedMeasures({required this.appliedMeasures}) : super._();

  @override
  final List<AppliedMeasure> appliedMeasures;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppliedMeasures(appliedMeasures: $appliedMeasures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppliedMeasures'))
      ..add(DiagnosticsProperty('appliedMeasures', appliedMeasures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppliedMeasures &&
            (identical(other.appliedMeasures, appliedMeasures) ||
                const DeepCollectionEquality()
                    .equals(other.appliedMeasures, appliedMeasures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appliedMeasures);

  @JsonKey(ignore: true)
  @override
  _$AppliedMeasuresCopyWith<_AppliedMeasures> get copyWith =>
      __$AppliedMeasuresCopyWithImpl<_AppliedMeasures>(this, _$identity);
}

abstract class _AppliedMeasures extends AppliedMeasures {
  const factory _AppliedMeasures(
      {required List<AppliedMeasure> appliedMeasures}) = _$_AppliedMeasures;
  const _AppliedMeasures._() : super._();

  @override
  List<AppliedMeasure> get appliedMeasures =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppliedMeasuresCopyWith<_AppliedMeasures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppliedMeasureTearOff {
  const _$AppliedMeasureTearOff();

  _AppliedMeasure call(
      {required String name,
      required int id,
      required String image_small,
      required String image_original,
      required int duration_for_removal,
      required int start_time,
      required int finish_time,
      required AppliedMeasureState state,
      required String dpsCode,
      required String measureTypeID}) {
    return _AppliedMeasure(
      name: name,
      id: id,
      image_small: image_small,
      image_original: image_original,
      duration_for_removal: duration_for_removal,
      start_time: start_time,
      finish_time: finish_time,
      state: state,
      dpsCode: dpsCode,
      measureTypeID: measureTypeID,
    );
  }
}

/// @nodoc
const $AppliedMeasure = _$AppliedMeasureTearOff();

/// @nodoc
mixin _$AppliedMeasure {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get image_small => throw _privateConstructorUsedError;
  String get image_original => throw _privateConstructorUsedError;

  /// -1 if it is not possible to remove this measure
  int get duration_for_removal => throw _privateConstructorUsedError;
  int get start_time => throw _privateConstructorUsedError;
  int get finish_time => throw _privateConstructorUsedError;
  AppliedMeasureState get state => throw _privateConstructorUsedError;

  /// The dps code of the patient that this measure is applied on.
  String get dpsCode => throw _privateConstructorUsedError;

  /// The type of measure that this [AppliedMeasure] represents.
  String get measureTypeID => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppliedMeasureCopyWith<AppliedMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppliedMeasureCopyWith<$Res> {
  factory $AppliedMeasureCopyWith(
          AppliedMeasure value, $Res Function(AppliedMeasure) then) =
      _$AppliedMeasureCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int id,
      String image_small,
      String image_original,
      int duration_for_removal,
      int start_time,
      int finish_time,
      AppliedMeasureState state,
      String dpsCode,
      String measureTypeID});
}

/// @nodoc
class _$AppliedMeasureCopyWithImpl<$Res>
    implements $AppliedMeasureCopyWith<$Res> {
  _$AppliedMeasureCopyWithImpl(this._value, this._then);

  final AppliedMeasure _value;
  // ignore: unused_field
  final $Res Function(AppliedMeasure) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? image_small = freezed,
    Object? image_original = freezed,
    Object? duration_for_removal = freezed,
    Object? start_time = freezed,
    Object? finish_time = freezed,
    Object? state = freezed,
    Object? dpsCode = freezed,
    Object? measureTypeID = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image_small: image_small == freezed
          ? _value.image_small
          : image_small // ignore: cast_nullable_to_non_nullable
              as String,
      image_original: image_original == freezed
          ? _value.image_original
          : image_original // ignore: cast_nullable_to_non_nullable
              as String,
      duration_for_removal: duration_for_removal == freezed
          ? _value.duration_for_removal
          : duration_for_removal // ignore: cast_nullable_to_non_nullable
              as int,
      start_time: start_time == freezed
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as int,
      finish_time: finish_time == freezed
          ? _value.finish_time
          : finish_time // ignore: cast_nullable_to_non_nullable
              as int,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppliedMeasureState,
      dpsCode: dpsCode == freezed
          ? _value.dpsCode
          : dpsCode // ignore: cast_nullable_to_non_nullable
              as String,
      measureTypeID: measureTypeID == freezed
          ? _value.measureTypeID
          : measureTypeID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AppliedMeasureCopyWith<$Res>
    implements $AppliedMeasureCopyWith<$Res> {
  factory _$AppliedMeasureCopyWith(
          _AppliedMeasure value, $Res Function(_AppliedMeasure) then) =
      __$AppliedMeasureCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int id,
      String image_small,
      String image_original,
      int duration_for_removal,
      int start_time,
      int finish_time,
      AppliedMeasureState state,
      String dpsCode,
      String measureTypeID});
}

/// @nodoc
class __$AppliedMeasureCopyWithImpl<$Res>
    extends _$AppliedMeasureCopyWithImpl<$Res>
    implements _$AppliedMeasureCopyWith<$Res> {
  __$AppliedMeasureCopyWithImpl(
      _AppliedMeasure _value, $Res Function(_AppliedMeasure) _then)
      : super(_value, (v) => _then(v as _AppliedMeasure));

  @override
  _AppliedMeasure get _value => super._value as _AppliedMeasure;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? image_small = freezed,
    Object? image_original = freezed,
    Object? duration_for_removal = freezed,
    Object? start_time = freezed,
    Object? finish_time = freezed,
    Object? state = freezed,
    Object? dpsCode = freezed,
    Object? measureTypeID = freezed,
  }) {
    return _then(_AppliedMeasure(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image_small: image_small == freezed
          ? _value.image_small
          : image_small // ignore: cast_nullable_to_non_nullable
              as String,
      image_original: image_original == freezed
          ? _value.image_original
          : image_original // ignore: cast_nullable_to_non_nullable
              as String,
      duration_for_removal: duration_for_removal == freezed
          ? _value.duration_for_removal
          : duration_for_removal // ignore: cast_nullable_to_non_nullable
              as int,
      start_time: start_time == freezed
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as int,
      finish_time: finish_time == freezed
          ? _value.finish_time
          : finish_time // ignore: cast_nullable_to_non_nullable
              as int,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppliedMeasureState,
      dpsCode: dpsCode == freezed
          ? _value.dpsCode
          : dpsCode // ignore: cast_nullable_to_non_nullable
              as String,
      measureTypeID: measureTypeID == freezed
          ? _value.measureTypeID
          : measureTypeID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_AppliedMeasure extends _AppliedMeasure with DiagnosticableTreeMixin {
  const _$_AppliedMeasure(
      {required this.name,
      required this.id,
      required this.image_small,
      required this.image_original,
      required this.duration_for_removal,
      required this.start_time,
      required this.finish_time,
      required this.state,
      required this.dpsCode,
      required this.measureTypeID})
      : super._();

  @override
  final String name;
  @override
  final int id;
  @override
  final String image_small;
  @override
  final String image_original;
  @override

  /// -1 if it is not possible to remove this measure
  final int duration_for_removal;
  @override
  final int start_time;
  @override
  final int finish_time;
  @override
  final AppliedMeasureState state;
  @override

  /// The dps code of the patient that this measure is applied on.
  final String dpsCode;
  @override

  /// The type of measure that this [AppliedMeasure] represents.
  final String measureTypeID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppliedMeasure(name: $name, id: $id, image_small: $image_small, image_original: $image_original, duration_for_removal: $duration_for_removal, start_time: $start_time, finish_time: $finish_time, state: $state, dpsCode: $dpsCode, measureTypeID: $measureTypeID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppliedMeasure'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image_small', image_small))
      ..add(DiagnosticsProperty('image_original', image_original))
      ..add(DiagnosticsProperty('duration_for_removal', duration_for_removal))
      ..add(DiagnosticsProperty('start_time', start_time))
      ..add(DiagnosticsProperty('finish_time', finish_time))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('dpsCode', dpsCode))
      ..add(DiagnosticsProperty('measureTypeID', measureTypeID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppliedMeasure &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image_small, image_small) ||
                const DeepCollectionEquality()
                    .equals(other.image_small, image_small)) &&
            (identical(other.image_original, image_original) ||
                const DeepCollectionEquality()
                    .equals(other.image_original, image_original)) &&
            (identical(other.duration_for_removal, duration_for_removal) ||
                const DeepCollectionEquality().equals(
                    other.duration_for_removal, duration_for_removal)) &&
            (identical(other.start_time, start_time) ||
                const DeepCollectionEquality()
                    .equals(other.start_time, start_time)) &&
            (identical(other.finish_time, finish_time) ||
                const DeepCollectionEquality()
                    .equals(other.finish_time, finish_time)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.dpsCode, dpsCode) ||
                const DeepCollectionEquality()
                    .equals(other.dpsCode, dpsCode)) &&
            (identical(other.measureTypeID, measureTypeID) ||
                const DeepCollectionEquality()
                    .equals(other.measureTypeID, measureTypeID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image_small) ^
      const DeepCollectionEquality().hash(image_original) ^
      const DeepCollectionEquality().hash(duration_for_removal) ^
      const DeepCollectionEquality().hash(start_time) ^
      const DeepCollectionEquality().hash(finish_time) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(dpsCode) ^
      const DeepCollectionEquality().hash(measureTypeID);

  @JsonKey(ignore: true)
  @override
  _$AppliedMeasureCopyWith<_AppliedMeasure> get copyWith =>
      __$AppliedMeasureCopyWithImpl<_AppliedMeasure>(this, _$identity);
}

abstract class _AppliedMeasure extends AppliedMeasure {
  const factory _AppliedMeasure(
      {required String name,
      required int id,
      required String image_small,
      required String image_original,
      required int duration_for_removal,
      required int start_time,
      required int finish_time,
      required AppliedMeasureState state,
      required String dpsCode,
      required String measureTypeID}) = _$_AppliedMeasure;
  const _AppliedMeasure._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get image_small => throw _privateConstructorUsedError;
  @override
  String get image_original => throw _privateConstructorUsedError;
  @override

  /// -1 if it is not possible to remove this measure
  int get duration_for_removal => throw _privateConstructorUsedError;
  @override
  int get start_time => throw _privateConstructorUsedError;
  @override
  int get finish_time => throw _privateConstructorUsedError;
  @override
  AppliedMeasureState get state => throw _privateConstructorUsedError;
  @override

  /// The dps code of the patient that this measure is applied on.
  String get dpsCode => throw _privateConstructorUsedError;
  @override

  /// The type of measure that this [AppliedMeasure] represents.
  String get measureTypeID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppliedMeasureCopyWith<_AppliedMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}
