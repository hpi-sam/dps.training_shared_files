// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'players.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerListTearOff {
  const _$PlayerListTearOff();

  _PlayerList call({required List<Player> players}) {
    return _PlayerList(
      players: players,
    );
  }
}

/// @nodoc
const $PlayerList = _$PlayerListTearOff();

/// @nodoc
mixin _$PlayerList {
  List<Player> get players => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerListCopyWith<PlayerList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerListCopyWith<$Res> {
  factory $PlayerListCopyWith(
          PlayerList value, $Res Function(PlayerList) then) =
      _$PlayerListCopyWithImpl<$Res>;
  $Res call({List<Player> players});
}

/// @nodoc
class _$PlayerListCopyWithImpl<$Res> implements $PlayerListCopyWith<$Res> {
  _$PlayerListCopyWithImpl(this._value, this._then);

  final PlayerList _value;
  // ignore: unused_field
  final $Res Function(PlayerList) _then;

  @override
  $Res call({
    Object? players = freezed,
  }) {
    return _then(_value.copyWith(
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ));
  }
}

/// @nodoc
abstract class _$PlayerListCopyWith<$Res> implements $PlayerListCopyWith<$Res> {
  factory _$PlayerListCopyWith(
          _PlayerList value, $Res Function(_PlayerList) then) =
      __$PlayerListCopyWithImpl<$Res>;
  @override
  $Res call({List<Player> players});
}

/// @nodoc
class __$PlayerListCopyWithImpl<$Res> extends _$PlayerListCopyWithImpl<$Res>
    implements _$PlayerListCopyWith<$Res> {
  __$PlayerListCopyWithImpl(
      _PlayerList _value, $Res Function(_PlayerList) _then)
      : super(_value, (v) => _then(v as _PlayerList));

  @override
  _PlayerList get _value => super._value as _PlayerList;

  @override
  $Res call({
    Object? players = freezed,
  }) {
    return _then(_PlayerList(
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ));
  }
}

/// @nodoc
class _$_PlayerList implements _PlayerList {
  const _$_PlayerList({required this.players});

  @override
  final List<Player> players;

  @override
  String toString() {
    return 'PlayerList(players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerList &&
            (identical(other.players, players) ||
                const DeepCollectionEquality().equals(other.players, players)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(players);

  @JsonKey(ignore: true)
  @override
  _$PlayerListCopyWith<_PlayerList> get copyWith =>
      __$PlayerListCopyWithImpl<_PlayerList>(this, _$identity);
}

abstract class _PlayerList implements PlayerList {
  const factory _PlayerList({required List<Player> players}) = _$_PlayerList;

  @override
  List<Player> get players => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerListCopyWith<_PlayerList> get copyWith =>
      throw _privateConstructorUsedError;
}

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
class _$PlayerTearOff {
  const _$PlayerTearOff();

  _Player call({required String name, required int helper_count}) {
    return _Player(
      name: name,
      helper_count: helper_count,
    );
  }

  Player fromJson(Map<String, Object> json) {
    return Player.fromJson(json);
  }
}

/// @nodoc
const $Player = _$PlayerTearOff();

/// @nodoc
mixin _$Player {
  String get name => throw _privateConstructorUsedError;
  int get helper_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
  $Res call({String name, int helper_count});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res> implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  final Player _value;
  // ignore: unused_field
  final $Res Function(Player) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? helper_count = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      helper_count: helper_count == freezed
          ? _value.helper_count
          : helper_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) then) =
      __$PlayerCopyWithImpl<$Res>;
  @override
  $Res call({String name, int helper_count});
}

/// @nodoc
class __$PlayerCopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(_Player _value, $Res Function(_Player) _then)
      : super(_value, (v) => _then(v as _Player));

  @override
  _Player get _value => super._value as _Player;

  @override
  $Res call({
    Object? name = freezed,
    Object? helper_count = freezed,
  }) {
    return _then(_Player(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      helper_count: helper_count == freezed
          ? _value.helper_count
          : helper_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Player implements _Player {
  const _$_Player({required this.name, required this.helper_count});

  factory _$_Player.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerFromJson(json);

  @override
  final String name;
  @override
  final int helper_count;

  @override
  String toString() {
    return 'Player(name: $name, helper_count: $helper_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Player &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.helper_count, helper_count) ||
                const DeepCollectionEquality()
                    .equals(other.helper_count, helper_count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(helper_count);

  @JsonKey(ignore: true)
  @override
  _$PlayerCopyWith<_Player> get copyWith =>
      __$PlayerCopyWithImpl<_Player>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerToJson(this);
  }
}

abstract class _Player implements Player {
  const factory _Player({required String name, required int helper_count}) =
      _$_Player;

  factory _Player.fromJson(Map<String, dynamic> json) = _$_Player.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get helper_count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerCopyWith<_Player> get copyWith => throw _privateConstructorUsedError;
}
