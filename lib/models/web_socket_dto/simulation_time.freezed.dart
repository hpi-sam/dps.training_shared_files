// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simulation_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SimulationTime {
  int get time => throw _privateConstructorUsedError;
  RoomStateEnum get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimulationTimeCopyWith<SimulationTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulationTimeCopyWith<$Res> {
  factory $SimulationTimeCopyWith(
          SimulationTime value, $Res Function(SimulationTime) then) =
      _$SimulationTimeCopyWithImpl<$Res, SimulationTime>;
  @useResult
  $Res call({int time, RoomStateEnum state});
}

/// @nodoc
class _$SimulationTimeCopyWithImpl<$Res, $Val extends SimulationTime>
    implements $SimulationTimeCopyWith<$Res> {
  _$SimulationTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RoomStateEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SimulationTimeCopyWith<$Res>
    implements $SimulationTimeCopyWith<$Res> {
  factory _$$_SimulationTimeCopyWith(
          _$_SimulationTime value, $Res Function(_$_SimulationTime) then) =
      __$$_SimulationTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int time, RoomStateEnum state});
}

/// @nodoc
class __$$_SimulationTimeCopyWithImpl<$Res>
    extends _$SimulationTimeCopyWithImpl<$Res, _$_SimulationTime>
    implements _$$_SimulationTimeCopyWith<$Res> {
  __$$_SimulationTimeCopyWithImpl(
      _$_SimulationTime _value, $Res Function(_$_SimulationTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? state = null,
  }) {
    return _then(_$_SimulationTime(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RoomStateEnum,
    ));
  }
}

/// @nodoc

class _$_SimulationTime implements _SimulationTime {
  const _$_SimulationTime({required this.time, required this.state});

  @override
  final int time;
  @override
  final RoomStateEnum state;

  @override
  String toString() {
    return 'SimulationTime(time: $time, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SimulationTime &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SimulationTimeCopyWith<_$_SimulationTime> get copyWith =>
      __$$_SimulationTimeCopyWithImpl<_$_SimulationTime>(this, _$identity);
}

abstract class _SimulationTime implements SimulationTime {
  const factory _SimulationTime(
      {required final int time,
      required final RoomStateEnum state}) = _$_SimulationTime;

  @override
  int get time;
  @override
  RoomStateEnum get state;
  @override
  @JsonKey(ignore: true)
  _$$_SimulationTimeCopyWith<_$_SimulationTime> get copyWith =>
      throw _privateConstructorUsedError;
}
