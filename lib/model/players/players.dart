// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'players.freezed.dart';
part 'players.g.dart';

// The package freezed is used to auto-generate the code for the immutable data classes annotated
// via @freezed.
//
// If you change anything on the data models, make sure to run the following command:
// flutter pub run build_runner build --delete-conflicting-outputs
//
// If you want to rebuild every time you save this file (recommended), run the following command:
// flutter pub run build_runner watch --delete-conflicting-outputs
//
// For more information on the freezed package see the official documentation:
// https://pub.dev/packages/freezed

/// Defines the [PlayerList] data model.
///
/// This class is immutable and can be created from a json which confirms to the
/// response defined in the GET rooms/$roomID/players/ route in the API specification.
@freezed
class PlayerList with _$PlayerList {
  const factory PlayerList({
    required List<Player> players,
  }) = _PlayerList;

  factory PlayerList.fromJson(Map<String, dynamic> json) {
    return PlayerList(players: parsePlayerList(json));
  }
}

/// Parses multiple players in the given [json] into a list of [Player].
List<Player> parsePlayerList(Map<String, dynamic> json) {
  final parsed = json["players"].cast<Map<String, dynamic>>();
  return parsed.map<Player>((json) => Player.fromJson(json)).toList();
}

/// Defines the [Player] data model. A [Player] consists of a [name] and a [helper_count].
///
/// This class is immutable and can be created from a json which confirms to the
/// response defined in the GET rooms/$roomID/players/ route in the API specification.
@freezed
class Player with _$Player {
  const factory Player({
    required String name,
    required int helper_count,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
