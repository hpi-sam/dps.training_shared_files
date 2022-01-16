import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';

import '../session.dart';
import '../urls.dart';

///
/// Application-level global variable to access the WebSockets
///
WebSocketsNotifications sockets = WebSocketsNotifications();

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
  /// Initialization the WebSockets connection with the server
  /// ----------------------------------------------------------
  initCommunication({required invitationCode}) async {
    ///
    /// Just in case, close any previous communication
    ///
    reset();

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
    }
  }

  /// ----------------------------------------------------------
  /// Closes the WebSocket communication
  /// ----------------------------------------------------------
  reset() {
    if (_channel != null) {
      _channel!.sink.close();
      _isOn = false;
    }
  }

  /// ---------------------------------------------------------
  /// Sends a message to the server
  /// ---------------------------------------------------------
  send(String message) {
    if (_channel != null) {
      if (_isOn) {
        _channel!.sink.add(message);
      }
    }
  }

  /// ---------------------------------------------------------
  /// Adds a callback to be invoked in case of incoming
  /// notification
  /// ---------------------------------------------------------
  addListener(Function callback) {
    _listeners.add(callback);
  }

  removeListener(Function callback) {
    _listeners.remove(callback);
  }

  /// ----------------------------------------------------------
  /// Callback which is invoked each time that we are receiving
  /// a message from the server
  /// ----------------------------------------------------------
  _onReceptionOfMessageFromServer(message) {
    print(message);
    _isOn = true;
    for (var callback in _listeners) {
      callback(message);
    }
  }
}
