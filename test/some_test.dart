// Dart imports:
import 'dart:convert';
import 'dart:io';

// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';
import 'package:dps.training_shared_files/api/websocket/player_web_socket.dart';
import 'package:dps.training_shared_files/models/room/room.dart';

void main() {
  test('HTTP client single password test', () async {
    final DpsHttpClient client = await DpsHttpClient.trainerSignUp(
      email: "asdf",
      password: "test",
      username: "Hello",
    );

    final String token = client.token;

    print(token);
  });

  test('websocket initial test', () async {
    print("Start the test");

    final DpsHttpClient client = await DpsHttpClient.playerSignUp();
    final String token = client.token;

    print("Token: $token");

    final PlayerWebSocket playerWebSocket =
        await PlayerWebSocket.startWebSocket(
      jsonCallback: (json) {
        print("Received JSON: ");
        print(json);
      },
      invitationCode: 'VPHDYT',
      playerToken: token,
    );

    playerWebSocket.createHelpers(amount: 3);

    // use this to not finish the test and keep the websocket connection alive
    await Future.doWhile(() async {
      // this line is important since otherwise the event loop will be blocked
      // with the doWhile loop and the websocket doesn't get execution time
      await Future.delayed(const Duration(seconds: 10));
      return true;
    });
  });

  test('some more data test', () {
    Room room = Room(
      id: 123,
      invitationCode: "adsf",
    );

    //room = Room.noneActive();

    room.map((room) => print(room.runtimeType), noneActive: (room) => print('hello'));
  });
}
