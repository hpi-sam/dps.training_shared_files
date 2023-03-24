// Dart imports:
import 'dart:async';
import 'dart:convert';
import 'dart:io';

// Package imports:
import 'package:meta/meta.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

// Project imports:
import 'package:dps.training_shared_files/api/core/exceptions.dart';
import 'package:dps.training_shared_files/api/core/uris.dart';
import 'package:dps.training_shared_files/api/websocket/player_web_socket.dart';

/// Manages WebSocket initialization
class DpsWebSocket {
  final WebSocketChannel _channel;
  final StreamSubscription<String> _streamSubscription;

  /// The invitation code of the room
  final String invitationCode;

  @protected
  DpsWebSocket.internal({
    required WebSocketChannel channel,
    required StreamSubscription<String> streamSubscription,
    required this.invitationCode,
  })  : _streamSubscription = streamSubscription,
        _channel = channel {
    _setupStream();
  }


  /// Starts the WebSocket communication with the Server.
  ///
  /// This starts the websocket connection with the server. When a [playerToken]
  /// is provided it tries to connect with the given [playerToken] otherwise
  /// it tries to restore an old playerToken from memory to restore the session.
  /// While connecting a [WebSocketException] or [WebSocketChannelException] 
  /// can be thrown when the room doesn't exist (mostly wrong [invitationCode]).
  /// Also a [SocketException] can be thrown which mostly
  /// indicates that there is some kind of network error. When something else
  /// goes wrong an [Exception] will be thrown. It's also possible that the
  /// player authentication inside the WebSocket fails. Then an
  /// [AuthenticationException] will be thrown. This exception will also be
  /// thrown if no [playerToken] was provided and no backup [playerToken] could
  /// be loaded from local storage.
  ///
  /// When the connection is established successfully the [PlayerWebSocket]
  /// instance will be returned.
  @factory
  static Future<PlayerWebSocket> startPlayerWebSocket({
    required String invitationCode,
    required String playerToken,
  }) async {
    final WebSocketChannel channel = WebSocketChannel.connect(
      webSocketUri(
        invitationCode: invitationCode,
      ),
    );

    try {
      await channel.ready;
    } on WebSocketException {
      // most likely the room doesn't exist (wrong invitation code)
      rethrow;
    } on WebSocketChannelException {
      // most likely the room doesn't exist (wrong invitation code)
      rethrow;
    } on SocketException {
      // most likely a network error
      rethrow;
    } catch (exception) {
      throw Exception("Something went wrong while initializing the WebSocket");
    }

    // using a Completer to retrieve the amount of helpers from the server
    // as a Future that will be completed inside [_processJoinRoomResponse]
    final Completer<int> completer = Completer();
    final StreamSubscription<String> streamSubscription =
        _setupStreamForJoinRoom(
      channel: channel,
      completer: completer,
    );

    final String joinRoomMessage =
        _constructJoinRoomMessage(playerToken: playerToken);
    channel.sink.add(joinRoomMessage);

    final int initializedHelperAmount = await completer.future;

    return PlayerWebSocket.internal(
      channel: channel,
      streamSubscription: streamSubscription,
      invitationCode: invitationCode,
      playerToken: playerToken,
      initializedHelperAmount: initializedHelperAmount,
    );
  }

  /// Setup the stream callbacks to handle the first message of type `join.room`
  static StreamSubscription<String> _setupStreamForJoinRoom({
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
  static String _constructJoinRoomMessage({required String playerToken}) {
    final Map<String, dynamic> json = {
      'type': 'room.join',
      'token': playerToken,
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

  /// Setting up the stream callbacks to handle the different types of messages
  ///
  /// The onData callback is set to call the [jsonCallback] which is provided.
  /// Also a default onError callback is set to throw an [Exception] some goes
  /// for the onDone callback.
  /// After that the stream is resumed to start processing the messages.
  void _setupStream() {
    _streamSubscription.onData((json) => jsonReceived(json));
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

  /// Template method pattern to handle the different types of messages.
  ///
  /// This method must be overridden by the subclasses to handle the different
  /// types of messages. The [encodedJson] is the json encoded [String] that
  /// was received from the WebSocket.
  // TODO: add `@mustBeOverridden` when it's available in Flutter 3.0
  @protected
  void jsonReceived(String encodedJson) {
    throw UnimplementedError();
  }

  /// Encodes the [json] as [String] and adds it to the WebSocket sink.
  @protected
  void send(Map<String, dynamic> json) {
    final String encodedJson = jsonEncode(json);
    _channel.sink.add(encodedJson);
  }
}
