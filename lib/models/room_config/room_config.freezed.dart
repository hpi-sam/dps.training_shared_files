// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomConfig _$RoomConfigFromJson(Map<String, dynamic> json) {
  return _RoomConfig.fromJson(json);
}

/// @nodoc
mixin _$RoomConfig {
  @JsonKey(name: 'default_phase_length')
  int get defaultPhaseLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'waiting_time_patient')
  int get waitingTimePatient => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiring_time_patient')
  int get expiringTimePatient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomConfigCopyWith<RoomConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomConfigCopyWith<$Res> {
  factory $RoomConfigCopyWith(
          RoomConfig value, $Res Function(RoomConfig) then) =
      _$RoomConfigCopyWithImpl<$Res, RoomConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'default_phase_length') int defaultPhaseLength,
      @JsonKey(name: 'waiting_time_patient') int waitingTimePatient,
      @JsonKey(name: 'expiring_time_patient') int expiringTimePatient});
}

/// @nodoc
class _$RoomConfigCopyWithImpl<$Res, $Val extends RoomConfig>
    implements $RoomConfigCopyWith<$Res> {
  _$RoomConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultPhaseLength = null,
    Object? waitingTimePatient = null,
    Object? expiringTimePatient = null,
  }) {
    return _then(_value.copyWith(
      defaultPhaseLength: null == defaultPhaseLength
          ? _value.defaultPhaseLength
          : defaultPhaseLength // ignore: cast_nullable_to_non_nullable
              as int,
      waitingTimePatient: null == waitingTimePatient
          ? _value.waitingTimePatient
          : waitingTimePatient // ignore: cast_nullable_to_non_nullable
              as int,
      expiringTimePatient: null == expiringTimePatient
          ? _value.expiringTimePatient
          : expiringTimePatient // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomConfigCopyWith<$Res>
    implements $RoomConfigCopyWith<$Res> {
  factory _$$_RoomConfigCopyWith(
          _$_RoomConfig value, $Res Function(_$_RoomConfig) then) =
      __$$_RoomConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'default_phase_length') int defaultPhaseLength,
      @JsonKey(name: 'waiting_time_patient') int waitingTimePatient,
      @JsonKey(name: 'expiring_time_patient') int expiringTimePatient});
}

/// @nodoc
class __$$_RoomConfigCopyWithImpl<$Res>
    extends _$RoomConfigCopyWithImpl<$Res, _$_RoomConfig>
    implements _$$_RoomConfigCopyWith<$Res> {
  __$$_RoomConfigCopyWithImpl(
      _$_RoomConfig _value, $Res Function(_$_RoomConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultPhaseLength = null,
    Object? waitingTimePatient = null,
    Object? expiringTimePatient = null,
  }) {
    return _then(_$_RoomConfig(
      defaultPhaseLength: null == defaultPhaseLength
          ? _value.defaultPhaseLength
          : defaultPhaseLength // ignore: cast_nullable_to_non_nullable
              as int,
      waitingTimePatient: null == waitingTimePatient
          ? _value.waitingTimePatient
          : waitingTimePatient // ignore: cast_nullable_to_non_nullable
              as int,
      expiringTimePatient: null == expiringTimePatient
          ? _value.expiringTimePatient
          : expiringTimePatient // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomConfig implements _RoomConfig {
  const _$_RoomConfig(
      {@JsonKey(name: 'default_phase_length')
          required this.defaultPhaseLength,
      @JsonKey(name: 'waiting_time_patient')
          required this.waitingTimePatient,
      @JsonKey(name: 'expiring_time_patient')
          required this.expiringTimePatient});

  factory _$_RoomConfig.fromJson(Map<String, dynamic> json) =>
      _$$_RoomConfigFromJson(json);

  @override
  @JsonKey(name: 'default_phase_length')
  final int defaultPhaseLength;
  @override
  @JsonKey(name: 'waiting_time_patient')
  final int waitingTimePatient;
  @override
  @JsonKey(name: 'expiring_time_patient')
  final int expiringTimePatient;

  @override
  String toString() {
    return 'RoomConfig(defaultPhaseLength: $defaultPhaseLength, waitingTimePatient: $waitingTimePatient, expiringTimePatient: $expiringTimePatient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomConfig &&
            (identical(other.defaultPhaseLength, defaultPhaseLength) ||
                other.defaultPhaseLength == defaultPhaseLength) &&
            (identical(other.waitingTimePatient, waitingTimePatient) ||
                other.waitingTimePatient == waitingTimePatient) &&
            (identical(other.expiringTimePatient, expiringTimePatient) ||
                other.expiringTimePatient == expiringTimePatient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, defaultPhaseLength, waitingTimePatient, expiringTimePatient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomConfigCopyWith<_$_RoomConfig> get copyWith =>
      __$$_RoomConfigCopyWithImpl<_$_RoomConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomConfigToJson(
      this,
    );
  }
}

abstract class _RoomConfig implements RoomConfig {
  const factory _RoomConfig(
      {@JsonKey(name: 'default_phase_length')
          required final int defaultPhaseLength,
      @JsonKey(name: 'waiting_time_patient')
          required final int waitingTimePatient,
      @JsonKey(name: 'expiring_time_patient')
          required final int expiringTimePatient}) = _$_RoomConfig;

  factory _RoomConfig.fromJson(Map<String, dynamic> json) =
      _$_RoomConfig.fromJson;

  @override
  @JsonKey(name: 'default_phase_length')
  int get defaultPhaseLength;
  @override
  @JsonKey(name: 'waiting_time_patient')
  int get waitingTimePatient;
  @override
  @JsonKey(name: 'expiring_time_patient')
  int get expiringTimePatient;
  @override
  @JsonKey(ignore: true)
  _$$_RoomConfigCopyWith<_$_RoomConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
