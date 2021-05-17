// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'simulation_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimulationTime _$SimulationTimeFromJson(Map<String, dynamic> json) {
  return _SimulationTime.fromJson(json);
}

/// @nodoc
class _$SimulationTimeTearOff {
  const _$SimulationTimeTearOff();

  _SimulationTime call({required int time, required String state}) {
    return _SimulationTime(
      time: time,
      state: state,
    );
  }

  SimulationTime fromJson(Map<String, Object> json) {
    return SimulationTime.fromJson(json);
  }
}

/// @nodoc
const $SimulationTime = _$SimulationTimeTearOff();

/// @nodoc
mixin _$SimulationTime {
  int get time => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimulationTimeCopyWith<SimulationTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulationTimeCopyWith<$Res> {
  factory $SimulationTimeCopyWith(
          SimulationTime value, $Res Function(SimulationTime) then) =
      _$SimulationTimeCopyWithImpl<$Res>;
  $Res call({int time, String state});
}

/// @nodoc
class _$SimulationTimeCopyWithImpl<$Res>
    implements $SimulationTimeCopyWith<$Res> {
  _$SimulationTimeCopyWithImpl(this._value, this._then);

  final SimulationTime _value;
  // ignore: unused_field
  final $Res Function(SimulationTime) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SimulationTimeCopyWith<$Res>
    implements $SimulationTimeCopyWith<$Res> {
  factory _$SimulationTimeCopyWith(
          _SimulationTime value, $Res Function(_SimulationTime) then) =
      __$SimulationTimeCopyWithImpl<$Res>;
  @override
  $Res call({int time, String state});
}

/// @nodoc
class __$SimulationTimeCopyWithImpl<$Res>
    extends _$SimulationTimeCopyWithImpl<$Res>
    implements _$SimulationTimeCopyWith<$Res> {
  __$SimulationTimeCopyWithImpl(
      _SimulationTime _value, $Res Function(_SimulationTime) _then)
      : super(_value, (v) => _then(v as _SimulationTime));

  @override
  _SimulationTime get _value => super._value as _SimulationTime;

  @override
  $Res call({
    Object? time = freezed,
    Object? state = freezed,
  }) {
    return _then(_SimulationTime(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SimulationTime implements _SimulationTime {
  const _$_SimulationTime({required this.time, required this.state});

  factory _$_SimulationTime.fromJson(Map<String, dynamic> json) =>
      _$_$_SimulationTimeFromJson(json);

  @override
  final int time;
  @override
  final String state;

  @override
  String toString() {
    return 'SimulationTime(time: $time, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimulationTime &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(state);

  @JsonKey(ignore: true)
  @override
  _$SimulationTimeCopyWith<_SimulationTime> get copyWith =>
      __$SimulationTimeCopyWithImpl<_SimulationTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SimulationTimeToJson(this);
  }
}

abstract class _SimulationTime implements SimulationTime {
  const factory _SimulationTime({required int time, required String state}) =
      _$_SimulationTime;

  factory _SimulationTime.fromJson(Map<String, dynamic> json) =
      _$_SimulationTime.fromJson;

  @override
  int get time => throw _privateConstructorUsedError;
  @override
  String get state => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SimulationTimeCopyWith<_SimulationTime> get copyWith =>
      throw _privateConstructorUsedError;
}
