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
      await _connectWebsocket();
      print("websocket connected");
    } catch (e) {
      print("channel not connected.. trying again..");
      _connectWebsocket();
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
      print("channel!=null");
      _channel!.stream.listen(
        _onReceptionOfMessageFromServer,
        onDone: () {
          debugPrint(
              'ws channel closed, trying to establish new connection...');
          try {
            _connectWebsocket();
          } on Exception {
            debugPrint(
                'Unable to establish new connection, will try again in 5 seconds...');
            Future.delayed(Duration(seconds: 5));
            _connectWebsocket();
          }
        },
        onError: (error) {
          debugPrint('ws error $error');
        },
      );
      return Future<bool>.value(true);
    } else
      return Future<bool>.value(false);
  }

  _connectWebsocket() async {
    if (this.invitationCode != null) {
      final socket = await WebSocket.connect(
          connectWebsocketUrl(invitationCode: this.invitationCode!),
          headers: Session.buildHeaders());
      _channel = IOWebSocketChannel(socket);
    } else {
      throw Exception("No invitation code was provided");
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
