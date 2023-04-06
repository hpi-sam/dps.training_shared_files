// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applied_measures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$AppliedMeasuresCopyWithImpl<$Res, AppliedMeasures>;
  @useResult
  $Res call({List<AppliedMeasure> appliedMeasures});
}

/// @nodoc
class _$AppliedMeasuresCopyWithImpl<$Res, $Val extends AppliedMeasures>
    implements $AppliedMeasuresCopyWith<$Res> {
  _$AppliedMeasuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appliedMeasures = null,
  }) {
    return _then(_value.copyWith(
      appliedMeasures: null == appliedMeasures
          ? _value.appliedMeasures
          : appliedMeasures // ignore: cast_nullable_to_non_nullable
              as List<AppliedMeasure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppliedMeasuresCopyWith<$Res>
    implements $AppliedMeasuresCopyWith<$Res> {
  factory _$$_AppliedMeasuresCopyWith(
          _$_AppliedMeasures value, $Res Function(_$_AppliedMeasures) then) =
      __$$_AppliedMeasuresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppliedMeasure> appliedMeasures});
}

/// @nodoc
class __$$_AppliedMeasuresCopyWithImpl<$Res>
    extends _$AppliedMeasuresCopyWithImpl<$Res, _$_AppliedMeasures>
    implements _$$_AppliedMeasuresCopyWith<$Res> {
  __$$_AppliedMeasuresCopyWithImpl(
      _$_AppliedMeasures _value, $Res Function(_$_AppliedMeasures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appliedMeasures = null,
  }) {
    return _then(_$_AppliedMeasures(
      appliedMeasures: null == appliedMeasures
          ? _value._appliedMeasures
          : appliedMeasures // ignore: cast_nullable_to_non_nullable
              as List<AppliedMeasure>,
    ));
  }
}

/// @nodoc

class _$_AppliedMeasures
    with DiagnosticableTreeMixin
    implements _AppliedMeasures {
  const _$_AppliedMeasures(
      {required final List<AppliedMeasure> appliedMeasures})
      : _appliedMeasures = appliedMeasures;

  final List<AppliedMeasure> _appliedMeasures;
  @override
  List<AppliedMeasure> get appliedMeasures {
    if (_appliedMeasures is EqualUnmodifiableListView) return _appliedMeasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedMeasures);
  }

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
        (other.runtimeType == runtimeType &&
            other is _$_AppliedMeasures &&
            const DeepCollectionEquality()
                .equals(other._appliedMeasures, _appliedMeasures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_appliedMeasures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppliedMeasuresCopyWith<_$_AppliedMeasures> get copyWith =>
      __$$_AppliedMeasuresCopyWithImpl<_$_AppliedMeasures>(this, _$identity);
}

abstract class _AppliedMeasures implements AppliedMeasures {
  const factory _AppliedMeasures(
          {required final List<AppliedMeasure> appliedMeasures}) =
      _$_AppliedMeasures;

  @override
  List<AppliedMeasure> get appliedMeasures;
  @override
  @JsonKey(ignore: true)
  _$$_AppliedMeasuresCopyWith<_$_AppliedMeasures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppliedMeasure {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  Uri get image_small => throw _privateConstructorUsedError;
  Uri get image_original => throw _privateConstructorUsedError;

  /// -1 if it is not possible to remove this measure
  int get duration_for_removal => throw _privateConstructorUsedError;
  int get start_time => throw _privateConstructorUsedError;
  int get finish_time => throw _privateConstructorUsedError;
  AppliedMeasureState get state => throw _privateConstructorUsedError;

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
      _$AppliedMeasureCopyWithImpl<$Res, AppliedMeasure>;
  @useResult
  $Res call(
      {String name,
      int id,
      Uri image_small,
      Uri image_original,
      int duration_for_removal,
      int start_time,
      int finish_time,
      AppliedMeasureState state,
      String measureTypeID});
}

/// @nodoc
class _$AppliedMeasureCopyWithImpl<$Res, $Val extends AppliedMeasure>
    implements $AppliedMeasureCopyWith<$Res> {
  _$AppliedMeasureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? image_small = null,
    Object? image_original = null,
    Object? duration_for_removal = null,
    Object? start_time = null,
    Object? finish_time = null,
    Object? state = null,
    Object? measureTypeID = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image_small: null == image_small
          ? _value.image_small
          : image_small // ignore: cast_nullable_to_non_nullable
              as Uri,
      image_original: null == image_original
          ? _value.image_original
          : image_original // ignore: cast_nullable_to_non_nullable
              as Uri,
      duration_for_removal: null == duration_for_removal
          ? _value.duration_for_removal
          : duration_for_removal // ignore: cast_nullable_to_non_nullable
              as int,
      start_time: null == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as int,
      finish_time: null == finish_time
          ? _value.finish_time
          : finish_time // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppliedMeasureState,
      measureTypeID: null == measureTypeID
          ? _value.measureTypeID
          : measureTypeID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppliedMeasureCopyWith<$Res>
    implements $AppliedMeasureCopyWith<$Res> {
  factory _$$_AppliedMeasureCopyWith(
          _$_AppliedMeasure value, $Res Function(_$_AppliedMeasure) then) =
      __$$_AppliedMeasureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int id,
      Uri image_small,
      Uri image_original,
      int duration_for_removal,
      int start_time,
      int finish_time,
      AppliedMeasureState state,
      String measureTypeID});
}

/// @nodoc
class __$$_AppliedMeasureCopyWithImpl<$Res>
    extends _$AppliedMeasureCopyWithImpl<$Res, _$_AppliedMeasure>
    implements _$$_AppliedMeasureCopyWith<$Res> {
  __$$_AppliedMeasureCopyWithImpl(
      _$_AppliedMeasure _value, $Res Function(_$_AppliedMeasure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? image_small = null,
    Object? image_original = null,
    Object? duration_for_removal = null,
    Object? start_time = null,
    Object? finish_time = null,
    Object? state = null,
    Object? measureTypeID = null,
  }) {
    return _then(_$_AppliedMeasure(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image_small: null == image_small
          ? _value.image_small
          : image_small // ignore: cast_nullable_to_non_nullable
              as Uri,
      image_original: null == image_original
          ? _value.image_original
          : image_original // ignore: cast_nullable_to_non_nullable
              as Uri,
      duration_for_removal: null == duration_for_removal
          ? _value.duration_for_removal
          : duration_for_removal // ignore: cast_nullable_to_non_nullable
              as int,
      start_time: null == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as int,
      finish_time: null == finish_time
          ? _value.finish_time
          : finish_time // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppliedMeasureState,
      measureTypeID: null == measureTypeID
          ? _value.measureTypeID
          : measureTypeID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppliedMeasure
    with DiagnosticableTreeMixin
    implements _AppliedMeasure {
  const _$_AppliedMeasure(
      {required this.name,
      required this.id,
      required this.image_small,
      required this.image_original,
      required this.duration_for_removal,
      required this.start_time,
      required this.finish_time,
      required this.state,
      required this.measureTypeID});

  @override
  final String name;
  @override
  final int id;
  @override
  final Uri image_small;
  @override
  final Uri image_original;

  /// -1 if it is not possible to remove this measure
  @override
  final int duration_for_removal;
  @override
  final int start_time;
  @override
  final int finish_time;
  @override
  final AppliedMeasureState state;

  /// The type of measure that this [AppliedMeasure] represents.
  @override
  final String measureTypeID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppliedMeasure(name: $name, id: $id, image_small: $image_small, image_original: $image_original, duration_for_removal: $duration_for_removal, start_time: $start_time, finish_time: $finish_time, state: $state, measureTypeID: $measureTypeID)';
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
      ..add(DiagnosticsProperty('measureTypeID', measureTypeID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppliedMeasure &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image_small, image_small) ||
                other.image_small == image_small) &&
            (identical(other.image_original, image_original) ||
                other.image_original == image_original) &&
            (identical(other.duration_for_removal, duration_for_removal) ||
                other.duration_for_removal == duration_for_removal) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.finish_time, finish_time) ||
                other.finish_time == finish_time) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.measureTypeID, measureTypeID) ||
                other.measureTypeID == measureTypeID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      image_small,
      image_original,
      duration_for_removal,
      start_time,
      finish_time,
      state,
      measureTypeID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppliedMeasureCopyWith<_$_AppliedMeasure> get copyWith =>
      __$$_AppliedMeasureCopyWithImpl<_$_AppliedMeasure>(this, _$identity);
}

abstract class _AppliedMeasure implements AppliedMeasure {
  const factory _AppliedMeasure(
      {required final String name,
      required final int id,
      required final Uri image_small,
      required final Uri image_original,
      required final int duration_for_removal,
      required final int start_time,
      required final int finish_time,
      required final AppliedMeasureState state,
      required final String measureTypeID}) = _$_AppliedMeasure;

  @override
  String get name;
  @override
  int get id;
  @override
  Uri get image_small;
  @override
  Uri get image_original;
  @override

  /// -1 if it is not possible to remove this measure
  int get duration_for_removal;
  @override
  int get start_time;
  @override
  int get finish_time;
  @override
  AppliedMeasureState get state;
  @override

  /// The type of measure that this [AppliedMeasure] represents.
  String get measureTypeID;
  @override
  @JsonKey(ignore: true)
  _$$_AppliedMeasureCopyWith<_$_AppliedMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}
