// Dart imports:
import 'dart:async';
import 'dart:convert';
import 'dart:io';

// Package imports:
import 'package:web_socket_channel/web_socket_channel.dart';

// Project imports:
import 'package:dps.training_shared_files/api/core/exceptions.dart';
import 'package:dps.training_shared_files/api/core/urls.dart';

/// typedef for a callback that is called when JSON data is received
typedef JsonCallback = void Function(String json);

/// Manages WebSocket communication
class PlayerWebSocket {
  final WebSocketChannel _channel;
  final StreamSubscription<String> _streamSubscription;

  /// The invitation code of the room
  final String invitationCode;

  /// The player token which identifies and authenticates the player
  final String playerToken;

  /// The amount of helpers the server returned when WebSocket was started
  final int initializedHelperAmount;

  /// Callback for when JSON data is received from the WebSocket
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
    required String playerToken,
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

    return PlayerWebSocket._internal(
      jsonCallback: jsonCallback,
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

  /// Encodes the [json] as [String] and adds it to the WebSocket sink.
  void _send(Map<String, dynamic> json) {
    final String encodedJson = jsonEncode(json);
    _channel.sink.add(encodedJson);
  }

  // The following methods:
  // just wrap the different types of messages that can be sent

  void createHelpers({required int amount}) {
    final Map<String, dynamic> json = {
      "type": "helper.create",
      "amount": amount,
    };

    _send(json);
  }

  void subscribeToPatient({
    required int helperNr,
    required String dpsCode,
  }) {
    final Map<String, dynamic> json = {
      "type": "patient.subscribe",
      "helper_nr": helperNr,
      "dps_code": dpsCode
    };

    _send(json);
  }

  void applyTriage({
    required int helperNr,
    required String triageCategory,
  }) {
    final Map<String, dynamic> json = {
      "type": "patient.triage",
      "helper_nr": helperNr,
      "triage_color": triageCategory
    };

    _send(json);
  }

  void getAvailableMeasures({required int helperNr}) {
    final Map<String, dynamic> json = {
      "type": "available.measures",
      "helper_nr": helperNr
    };

    _send(json);
  }

  void applyMeasure({
    required int helperNr,
    required String measureID,
  }) {
    final Map<String, dynamic> json = {
      "type": "patient.apply",
      "helper_nr": helperNr,
      "measure_id": measureID
    };

    _send(json);
  }

  void cancelMeasure({required int helperNr}) {
    final Map<String, dynamic> json = {
      "type": "cancel.measure",
      "helper_nr": helperNr
    };

    _send(json);
  }

  void removeMeasure({
    required int helperNr,
    required int measureID,
  }) {
    final Map<String, dynamic> json = {
      "type": "remove.material",
      "helper_nr": helperNr,
      "measure_id": measureID
    };

    _send(json);
  }

  void openInventory({
    required int helperNr,
    required String inventoryID,
  }) {
    final Map<String, dynamic> json = {
      "type": "inventory.open",
      "helper_nr": helperNr,
      "other_entity_key": inventoryID
    };

    _send(json);
  }

  void exchangeMaterial({
    required int helperNr,
    required String materialID,
    required int amount,
  }) {
    final Map<String, dynamic> json = {
      "type": "inventory.exchange",
      "helper_nr": helperNr,
      "material_id": materialID,
      "amount": amount
    };

    _send(json);
  }

  void resendOwnInventory({required int helperNr}) {
    final Map<String, dynamic> json = {
      "type": "resend.inventory",
      "helper_nr": helperNr
    };

    _send(json);
  }
}
