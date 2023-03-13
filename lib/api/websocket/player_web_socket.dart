import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:dps.training_shared_files/api/core/exceptions.dart';
import 'package:dps.training_shared_files/api/rest/urls.dart';
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';

typedef JsonCallback = void Function(String json);

class PlayerWebSocket {
  final WebSocketChannel _channel;
  final StreamSubscription<String> _streamSubscription;

  final String invitationCode;
  final String playerToken;

  /// The amount of helpers the server returned when WebSocket was started
  final int initializedHelperAmount;

  final JsonCallback jsonCallback;

  PlayerWebSocket._internal({
    required this.jsonCallback,
    required WebSocketChannel channel,
    required StreamSubscription<String> streamSubscription,
    required this.invitationCode,
    required this.playerToken,
    required this.initializedHelperAmount,
  })  : _channel = channel,
        _streamSubscription = streamSubscription {
    _setupStream();
  }

  /// Starts the WebSocket communication with the Server.
  ///
  /// This starts the websocket connection with the server. When a [playerToken]
  /// is provided it tries to connect with the given [playerToken] otherwise
  /// it tries to restore an old playerToken from memory to restore the session.
  /// While connecting a [WebSocketException] can be thrown when the room
  /// doesn't exist. Also a [SocketException] can be thrown which mostly
  /// indicates that there is some kind of network error. When something else
  /// goes wrong an [Exception] will be thrown. It's also possible that the
  /// player authentication inside the WebSocket fails. Then an
  /// [AuthenticationException] will be thrown. This exception will also be
  /// thrown if no [playerToken] was provided and no backup [playerToken] could
  /// be loaded from local storage.
  ///
  /// When the connection is established successfully the [WebSocketService]
  /// instance will be returned.
  static Future<PlayerWebSocket> startWebSocket({
    required JsonCallback jsonCallback,
    required String invitationCode,
    String? playerToken,
    int? helperAmount,
  }) async {
    final WebSocketChannel channel = WebSocketChannel.connect(
      webSocketUrl(
        invitationCode: invitationCode,
      ),
    );

    try {
      await channel.ready;
    } on WebSocketException {
      rethrow;
    } on SocketException {
      rethrow;
    } catch (exception) {
      throw Exception("Something went wrong");
    }

    final Completer<int> completer = Completer();
    final StreamSubscription<String> streamSubscription = _authAndJoinRoom(
      channel: channel,
      completer: completer,
    );

    final String joinRoomMessage;
    try {
      joinRoomMessage = _constructJoinRoomMessage(playerToken: playerToken);
    } finally {
      // if there was no playerToken provided and none was stored locally
      // we clean up the WebSocketChannel by closing it using the sink.
      // Since we don't catch the exception it will handed upwards.
      await channel.sink.close();
    }
    channel.sink.add(joinRoomMessage);

    final int initializedHelperAmount = await completer.future;

    return PlayerWebSocket._internal(
      jsonCallback: jsonCallback,
      channel: channel,
      streamSubscription: streamSubscription,
      invitationCode: invitationCode,
      playerToken: playerToken!,
      initializedHelperAmount: initializedHelperAmount,
    );
  }

  static StreamSubscription<String> _authAndJoinRoom({
    required WebSocketChannel channel,
    required Completer completer,
  }) {
    late final StreamSubscription<String> streamSubscription;
    streamSubscription = channel.stream.cast<String>().listen(
      (json) => _processJoinRoomResponse(
        json: json,
        streamSubscription: streamSubscription,
        initializedHelperAmountCompleter: completer,
      ),
      onError: (error) {
        switch (channel.closeCode) {
          case 100:
            throw AuthenticationException('Token invalid');
          default:
            throw Exception(
              'WebSocket closed with Unknown closure code ${channel.closeCode}',
            );
        }
      },
    );

    return streamSubscription;
  }

  /// Construct the first message which must be of type `join.room`.
  ///
  /// The [playerToken] must either be provided or it will be tried to
  /// load it from local storage. If it isn't available an
  /// [AuthenticationException] will be thrown.
  static String _constructJoinRoomMessage({String? playerToken}) {
    String? playerTokenUpdated = playerToken ?? Session.getInvitationCode();

    if (playerTokenUpdated == null) {
      throw AuthenticationException('Token missing');
    }

    final Map<String, dynamic> json = {
      'type': 'room.join',
      'token': playerTokenUpdated,
    };

    return jsonEncode(json);
  }

  /// Process the first message of stream to retrieve the amount of helpers.
  ///
  /// This method takes the first message of the stream (which must be of type
  /// `helper.amount`) and processes it by parsing the `amount`. This `amount`
  /// is used to complete the [initializedHelperAmountCompleter] and the stream
  /// is paused to not accidentally process other important messages.
  static void _processJoinRoomResponse({
    required String json,
    required StreamSubscription streamSubscription,
    required Completer initializedHelperAmountCompleter,
  }) {
    final Map<String, dynamic> decodedJson = jsonDecode(json);
    final int initializedHelperAmount = decodedJson['amount'] as int;
    streamSubscription.pause();
    initializedHelperAmountCompleter.complete(initializedHelperAmount);
  }

  void _setupStream() {
    _streamSubscription.onData((json) => jsonCallback(json));
    _streamSubscription.onError((Object error, StackTrace? stackTrace) {
      throw Exception('The web socket received an error.\n'
          'The error object: $error\n'
          'The StackTrace: ${stackTrace ?? 'null'}');
    });
    _streamSubscription.onDone(() {
      throw Exception('The web socket was closed by the server normally');
    });

    _streamSubscription.resume();
  }

  void send(String json) {
    _channel.sink.add(json);
  }
}
