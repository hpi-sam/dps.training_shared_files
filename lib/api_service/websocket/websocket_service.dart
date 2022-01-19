part of 'websocket.dart';

class WebsocketService {
  static Future<bool> initializeWebsocket(
      {required String invitationCode}) async {
    return _sockets.initCommunication(invitationCode: invitationCode);
  }

  static void addListener(Function callback) {
    print(callback.toString());
    return _sockets._addListener(callback);
  }

  static bool removeListener(Function callback) {
    return _sockets._removeListener(callback);
  }

  static bool joinRoom({required int helperAmount}) {
    return _sockets._send(
        jsonEncode({"type": "room.join", "amount_of_helpers": helperAmount}));
  }
}
