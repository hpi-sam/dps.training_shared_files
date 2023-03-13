// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'players.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$PlayerListCopyWithImpl<$Res, PlayerList>;
  @useResult
  $Res call({List<Player> players});
}

/// @nodoc
class _$PlayerListCopyWithImpl<$Res, $Val extends PlayerList>
    implements $PlayerListCopyWith<$Res> {
  _$PlayerListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerListCopyWith<$Res>
    implements $PlayerListCopyWith<$Res> {
  factory _$$_PlayerListCopyWith(
          _$_PlayerList value, $Res Function(_$_PlayerList) then) =
      __$$_PlayerListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Player> players});
}

/// @nodoc
class __$$_PlayerListCopyWithImpl<$Res>
    extends _$PlayerListCopyWithImpl<$Res, _$_PlayerList>
    implements _$$_PlayerListCopyWith<$Res> {
  __$$_PlayerListCopyWithImpl(
      _$_PlayerList _value, $Res Function(_$_PlayerList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
  }) {
    return _then(_$_PlayerList(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ));
  }
}

/// @nodoc

class _$_PlayerList implements _PlayerList {
  const _$_PlayerList({required final List<Player> players})
      : _players = players;

  final List<Player> _players;
  @override
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  String toString() {
    return 'PlayerList(players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerList &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_players));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerListCopyWith<_$_PlayerList> get copyWith =>
      __$$_PlayerListCopyWithImpl<_$_PlayerList>(this, _$identity);
}

abstract class _PlayerList implements PlayerList {
  const factory _PlayerList({required final List<Player> players}) =
      _$_PlayerList;

  @override
  List<Player> get players;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerListCopyWith<_$_PlayerList> get copyWith =>
      throw _privateConstructorUsedError;
}

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

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
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call({String name, int helper_count});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? helper_count = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      helper_count: null == helper_count
          ? _value.helper_count
          : helper_count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$_PlayerCopyWith(_$_Player value, $Res Function(_$_Player) then) =
      __$$_PlayerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int helper_count});
}

/// @nodoc
class __$$_PlayerCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$_Player>
    implements _$$_PlayerCopyWith<$Res> {
  __$$_PlayerCopyWithImpl(_$_Player _value, $Res Function(_$_Player) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? helper_count = null,
  }) {
    return _then(_$_Player(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      helper_count: null == helper_count
          ? _value.helper_count
          : helper_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Player implements _Player {
  const _$_Player({required this.name, required this.helper_count});

  factory _$_Player.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_Player &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.helper_count, helper_count) ||
                other.helper_count == helper_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, helper_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerCopyWith<_$_Player> get copyWith =>
      __$$_PlayerCopyWithImpl<_$_Player>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerToJson(
      this,
    );
  }
}

abstract class _Player implements Player {
  const factory _Player(
      {required final String name,
      required final int helper_count}) = _$_Player;

  factory _Player.fromJson(Map<String, dynamic> json) = _$_Player.fromJson;

  @override
  String get name;
  @override
  int get helper_count;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerCopyWith<_$_Player> get copyWith =>
      throw _privateConstructorUsedError;
}
