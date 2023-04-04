// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'invitation_code')
  String get invitationCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_phase_length')
  int? get defaultPhaseLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'waiting_time_patient')
  int? get waitingTimePatient => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiring_time_patient')
  int? get expiringTimePatient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'invitation_code') String invitationCode,
      @JsonKey(name: 'default_phase_length') int? defaultPhaseLength,
      @JsonKey(name: 'waiting_time_patient') int? waitingTimePatient,
      @JsonKey(name: 'expiring_time_patient') int? expiringTimePatient});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invitationCode = null,
    Object? defaultPhaseLength = freezed,
    Object? waitingTimePatient = freezed,
    Object? expiringTimePatient = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      invitationCode: null == invitationCode
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPhaseLength: freezed == defaultPhaseLength
          ? _value.defaultPhaseLength
          : defaultPhaseLength // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingTimePatient: freezed == waitingTimePatient
          ? _value.waitingTimePatient
          : waitingTimePatient // ignore: cast_nullable_to_non_nullable
              as int?,
      expiringTimePatient: freezed == expiringTimePatient
          ? _value.expiringTimePatient
          : expiringTimePatient // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$_RoomCopyWith(_$_Room value, $Res Function(_$_Room) then) =
      __$$_RoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'invitation_code') String invitationCode,
      @JsonKey(name: 'default_phase_length') int? defaultPhaseLength,
      @JsonKey(name: 'waiting_time_patient') int? waitingTimePatient,
      @JsonKey(name: 'expiring_time_patient') int? expiringTimePatient});
}

/// @nodoc
class __$$_RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res, _$_Room>
    implements _$$_RoomCopyWith<$Res> {
  __$$_RoomCopyWithImpl(_$_Room _value, $Res Function(_$_Room) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invitationCode = null,
    Object? defaultPhaseLength = freezed,
    Object? waitingTimePatient = freezed,
    Object? expiringTimePatient = freezed,
  }) {
    return _then(_$_Room(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      invitationCode: null == invitationCode
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPhaseLength: freezed == defaultPhaseLength
          ? _value.defaultPhaseLength
          : defaultPhaseLength // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingTimePatient: freezed == waitingTimePatient
          ? _value.waitingTimePatient
          : waitingTimePatient // ignore: cast_nullable_to_non_nullable
              as int?,
      expiringTimePatient: freezed == expiringTimePatient
          ? _value.expiringTimePatient
          : expiringTimePatient // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room implements _Room {
  const _$_Room(
      {required this.id,
      @JsonKey(name: 'invitation_code') required this.invitationCode,
      @JsonKey(name: 'default_phase_length') this.defaultPhaseLength,
      @JsonKey(name: 'waiting_time_patient') this.waitingTimePatient,
      @JsonKey(name: 'expiring_time_patient') this.expiringTimePatient});

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'invitation_code')
  final String invitationCode;
  @override
  @JsonKey(name: 'default_phase_length')
  final int? defaultPhaseLength;
  @override
  @JsonKey(name: 'waiting_time_patient')
  final int? waitingTimePatient;
  @override
  @JsonKey(name: 'expiring_time_patient')
  final int? expiringTimePatient;

  @override
  String toString() {
    return 'Room(id: $id, invitationCode: $invitationCode, defaultPhaseLength: $defaultPhaseLength, waitingTimePatient: $waitingTimePatient, expiringTimePatient: $expiringTimePatient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Room &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invitationCode, invitationCode) ||
                other.invitationCode == invitationCode) &&
            (identical(other.defaultPhaseLength, defaultPhaseLength) ||
                other.defaultPhaseLength == defaultPhaseLength) &&
            (identical(other.waitingTimePatient, waitingTimePatient) ||
                other.waitingTimePatient == waitingTimePatient) &&
            (identical(other.expiringTimePatient, expiringTimePatient) ||
                other.expiringTimePatient == expiringTimePatient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, invitationCode,
      defaultPhaseLength, waitingTimePatient, expiringTimePatient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomCopyWith<_$_Room> get copyWith =>
      __$$_RoomCopyWithImpl<_$_Room>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomToJson(
      this,
    );
  }
}

abstract class _Room implements Room {
  const factory _Room(
      {required final int id,
      @JsonKey(name: 'invitation_code')
          required final String invitationCode,
      @JsonKey(name: 'default_phase_length')
          final int? defaultPhaseLength,
      @JsonKey(name: 'waiting_time_patient')
          final int? waitingTimePatient,
      @JsonKey(name: 'expiring_time_patient')
          final int? expiringTimePatient}) = _$_Room;

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'invitation_code')
  String get invitationCode;
  @override
  @JsonKey(name: 'default_phase_length')
  int? get defaultPhaseLength;
  @override
  @JsonKey(name: 'waiting_time_patient')
  int? get waitingTimePatient;
  @override
  @JsonKey(name: 'expiring_time_patient')
  int? get expiringTimePatient;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCopyWith<_$_Room> get copyWith => throw _privateConstructorUsedError;
}
