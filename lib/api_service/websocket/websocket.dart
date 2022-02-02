import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';

import '../session.dart';
import '../urls.dart';

part 'websocket_service.dart';

WebSocketsNotifications _sockets = WebSocketsNotifications();

class WebSocketsNotifications {
  static final WebSocketsNotifications _sockets =
      WebSocketsNotifications._internal();

  factory WebSocketsNotifications() {
    return _sockets;
  }

  WebSocketsNotifications._internal();

  ///
  /// The WebSocket "open" channel
  ///
  ///
  IOWebSocketChannel? _channel;

  ///
  /// Is the connection established?
  ///
  bool _isOn = false;

  String? invitationCode;

  ///
  /// Listeners
  /// List of methods to be called when a new message
  /// comes in.
  ///
  final ObserverList<Function> _listeners = ObserverList<Function>();

  /// ----------------------------------------------------------
  /// Initialization the WebSockets connection with the server, return true if connection was established successfully
  /// ----------------------------------------------------------
  Future<bool> initCommunication({required String invitationCode}) async {
    ///
    /// Just in case, close any previous communication
    ///
    _reset();
    this.invitationCode = invitationCode;

    ///
    /// Open a new WebSocket communication
    ///

    try {
      await _connect();
    } catch (e) {
      print("channel not connected.. trying again..");
      _connect();
      print(e.toString());
      return false;

      ///
      /// General error handling
      /// TODO
      ///
    }

    ///
    /// Start listening to new notifications / messages
    ///
    if (_channel != null) {
      _channel!.stream.listen(
        _onReceptionOfMessageFromServer,
        onDone: _reconnect,
        onError: (error) {
          debugPrint('ws error $error');
        },
      );
      // stores new invitation code in Session, to be able to reconnect to room
      Session.updateInvitationCode(invitationCode);

      return Future<bool>.value(true);
    } else {
      Session.deleteSession();
      return Future<bool>.value(false);
    }
  }

  Future<bool> _connect() async {
    if (this.invitationCode != null) {
      try {
        final socket = await WebSocket.connect(
            connectWebsocketUrl(invitationCode: this.invitationCode!),
            headers: Session.buildHeaders());
        _channel = IOWebSocketChannel(socket);
        debugPrint("websocket connected");
        return Future.value(true);
      } on Exception catch (e) {
        print(e.toString());
        return Future.value(false);
      }
    } else {
      throw Exception("No invitation code was provided");
    }
  }

  void _reconnect() async {
    debugPrint(
        "ws channel closed, trying to establish new connection... closecode: " +
            _channel!.closeCode.toString());
    try {
      await _connect();
    } catch (e) {
      try {
        debugPrint(
            'Unable to establish new connection, will try again in 5 seconds...');
        await Future.delayed(Duration(seconds: 5));
        await _connect();
      } catch (e) {
        debugPrint("Wasn't able to establish connection: $e");
      }
    }
  }

  /// ----------------------------------------------------------
  /// Closes the WebSocket communication
  /// ----------------------------------------------------------
  _reset() {
    if (_channel != null) {
      _channel!.sink.close();
      _isOn = false;
    }
    this.invitationCode = null;
  }

  /// ---------------------------------------------------------
  /// Sends a message to the server
  /// ---------------------------------------------------------
  bool _send(String message) {
    debugPrint("send Message: " + message);
    if (_channel != null) {
      if (_isOn) {
        _channel!.sink.add(message);
        return true;
      }
    }
    return false;
  }

  /// ---------------------------------------------------------
  /// Adds a callback to be invoked in case of incoming
  /// notification
  /// ---------------------------------------------------------
  void _addListener(Function callback) {
    _listeners.add(callback);
  }

  bool _removeListener(Function callback) {
    return _listeners.remove(callback);
  }

  /// ----------------------------------------------------------
  /// Callback which is invoked each time that we are receiving
  /// a message from the server
  /// ----------------------------------------------------------
  _onReceptionOfMessageFromServer(message) {
    debugPrint("received Message: " + jsonDecode(message).toString());
    _isOn = true;
    Map serverMessage;
    try {
      serverMessage = json.decode(message);
    } on Exception {
      throw Exception("Cannot decode received message:" + message.toString());
    }
    if (serverMessage["type"] == "failure") {
      _handleErrorCode(serverMessage);
      return;
    }
    for (var callback in _listeners) {
      callback(serverMessage);
    }
  }

  _handleErrorCode(Map serverMessage) {
    throw Exception("Request failure: " + serverMessage.toString());
    // TODO: Improve error handling
  }
}
