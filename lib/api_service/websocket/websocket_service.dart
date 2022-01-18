part of 'websocket.dart';

class WebsocketService {
  static initializeWebsocket({required String invitationCode}) async {
    await _sockets.initCommunication(invitationCode: invitationCode);
  }

  static void joinRoom({required int helperAmount}) {
    _sockets._send(
        jsonEncode({"type": "room.join", "amount_of_helpers": helperAmount}));
  }
}
