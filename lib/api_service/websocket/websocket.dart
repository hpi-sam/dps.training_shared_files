import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';

import '../session.dart';
import '../urls.dart';

part 'websocket_service.dart';

///
/// Application-level global variable to access the WebSockets
///
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

    ///
    /// Open a new WebSocket communication
    ///

    try {
      final socket = await WebSocket.connect(
          connectWebsocketUrl(invitationCode: invitationCode),
          headers: Session.buildHeaders());
      _channel = IOWebSocketChannel(socket);
      print("websocket connected");
    } catch (e) {
      print("channel not connected");
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
      _channel!.stream.listen(_onReceptionOfMessageFromServer);
      return Future<bool>.value(true);
    } else
      return Future<bool>.value(false);
  }

  /// ----------------------------------------------------------
  /// Closes the WebSocket communication
  /// ----------------------------------------------------------
  _reset() {
    if (_channel != null) {
      _channel!.sink.close();
      _isOn = false;
    }
  }

  /// ---------------------------------------------------------
  /// Sends a message to the server
  /// ---------------------------------------------------------
  bool _send(String message) {
    print("send Message: " + message);
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
    print("add callback:" + callback.toString());
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
    print(jsonDecode(message));
    _isOn = true;
    for (var callback in _listeners) {
      callback(message);
    }
  }
}
