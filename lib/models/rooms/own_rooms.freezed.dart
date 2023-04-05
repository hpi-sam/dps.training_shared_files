// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'own_rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OwnRoomList {
  List<OwnRoom> get rooms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OwnRoomListCopyWith<OwnRoomList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnRoomListCopyWith<$Res> {
  factory $OwnRoomListCopyWith(
          OwnRoomList value, $Res Function(OwnRoomList) then) =
      _$OwnRoomListCopyWithImpl<$Res, OwnRoomList>;
  @useResult
  $Res call({List<OwnRoom> rooms});
}

/// @nodoc
class _$OwnRoomListCopyWithImpl<$Res, $Val extends OwnRoomList>
    implements $OwnRoomListCopyWith<$Res> {
  _$OwnRoomListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<OwnRoom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnRoomListCopyWith<$Res>
    implements $OwnRoomListCopyWith<$Res> {
  factory _$$_OwnRoomListCopyWith(
          _$_OwnRoomList value, $Res Function(_$_OwnRoomList) then) =
      __$$_OwnRoomListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OwnRoom> rooms});
}

/// @nodoc
class __$$_OwnRoomListCopyWithImpl<$Res>
    extends _$OwnRoomListCopyWithImpl<$Res, _$_OwnRoomList>
    implements _$$_OwnRoomListCopyWith<$Res> {
  __$$_OwnRoomListCopyWithImpl(
      _$_OwnRoomList _value, $Res Function(_$_OwnRoomList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$_OwnRoomList(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<OwnRoom>,
    ));
  }
}

/// @nodoc

class _$_OwnRoomList implements _OwnRoomList {
  const _$_OwnRoomList({required final List<OwnRoom> rooms}) : _rooms = rooms;

  final List<OwnRoom> _rooms;
  @override
  List<OwnRoom> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'OwnRoomList(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnRoomList &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnRoomListCopyWith<_$_OwnRoomList> get copyWith =>
      __$$_OwnRoomListCopyWithImpl<_$_OwnRoomList>(this, _$identity);
}

abstract class _OwnRoomList implements OwnRoomList {
  const factory _OwnRoomList({required final List<OwnRoom> rooms}) =
      _$_OwnRoomList;

  @override
  List<OwnRoom> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_OwnRoomListCopyWith<_$_OwnRoomList> get copyWith =>
      throw _privateConstructorUsedError;
}

OwnRoom _$OwnRoomFromJson(Map<String, dynamic> json) {
  return _OwnRoom.fromJson(json);
}

/// @nodoc
mixin _$OwnRoom {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'invitation_code')
  String get invitationCode => throw _privateConstructorUsedError;
  RoomStateEnum get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_time')
  DateTime get creationTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnRoomCopyWith<OwnRoom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnRoomCopyWith<$Res> {
  factory $OwnRoomCopyWith(OwnRoom value, $Res Function(OwnRoom) then) =
      _$OwnRoomCopyWithImpl<$Res, OwnRoom>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'invitation_code') String invitationCode,
      RoomStateEnum state,
      @JsonKey(name: 'creation_time') DateTime creationTime});
}

/// @nodoc
class _$OwnRoomCopyWithImpl<$Res, $Val extends OwnRoom>
    implements $OwnRoomCopyWith<$Res> {
  _$OwnRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invitationCode = null,
    Object? state = null,
    Object? creationTime = null,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RoomStateEnum,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnRoomCopyWith<$Res> implements $OwnRoomCopyWith<$Res> {
  factory _$$_OwnRoomCopyWith(
          _$_OwnRoom value, $Res Function(_$_OwnRoom) then) =
      __$$_OwnRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'invitation_code') String invitationCode,
      RoomStateEnum state,
      @JsonKey(name: 'creation_time') DateTime creationTime});
}

/// @nodoc
class __$$_OwnRoomCopyWithImpl<$Res>
    extends _$OwnRoomCopyWithImpl<$Res, _$_OwnRoom>
    implements _$$_OwnRoomCopyWith<$Res> {
  __$$_OwnRoomCopyWithImpl(_$_OwnRoom _value, $Res Function(_$_OwnRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invitationCode = null,
    Object? state = null,
    Object? creationTime = null,
  }) {
    return _then(_$_OwnRoom(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      invitationCode: null == invitationCode
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RoomStateEnum,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OwnRoom implements _OwnRoom {
  const _$_OwnRoom(
      {required this.id,
      @JsonKey(name: 'invitation_code') required this.invitationCode,
      required this.state,
      @JsonKey(name: 'creation_time') required this.creationTime});

  factory _$_OwnRoom.fromJson(Map<String, dynamic> json) =>
      _$$_OwnRoomFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'invitation_code')
  final String invitationCode;
  @override
  final RoomStateEnum state;
  @override
  @JsonKey(name: 'creation_time')
  final DateTime creationTime;

  @override
  String toString() {
    return 'OwnRoom(id: $id, invitationCode: $invitationCode, state: $state, creationTime: $creationTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnRoom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invitationCode, invitationCode) ||
                other.invitationCode == invitationCode) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, invitationCode, state, creationTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnRoomCopyWith<_$_OwnRoom> get copyWith =>
      __$$_OwnRoomCopyWithImpl<_$_OwnRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnRoomToJson(
      this,
    );
  }
}

abstract class _OwnRoom implements OwnRoom {
  const factory _OwnRoom(
      {required final int id,
      @JsonKey(name: 'invitation_code')
          required final String invitationCode,
      required final RoomStateEnum state,
      @JsonKey(name: 'creation_time')
          required final DateTime creationTime}) = _$_OwnRoom;

  factory _OwnRoom.fromJson(Map<String, dynamic> json) = _$_OwnRoom.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'invitation_code')
  String get invitationCode;
  @override
  RoomStateEnum get state;
  @override
  @JsonKey(name: 'creation_time')
  DateTime get creationTime;
  @override
  @JsonKey(ignore: true)
  _$$_OwnRoomCopyWith<_$_OwnRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
