part of 'websocket.dart';

/// Manages access to websocket

class WebsocketService {
  /// tries connecting websocket to server. If no [invitationCode] is provided, it tries restoring the previous session to allow the user to rejoin a room.
  static Future<bool> initializeWebsocket({String? invitationCode}) async {
    if (invitationCode != null) {
      return _sockets.initCommunication(invitationCode: invitationCode);
    }
    invitationCode = Session.getInvitationCode();
    if (invitationCode != null) {
      return _sockets.initCommunication(invitationCode: invitationCode);
    } else
      throw Exception("Cannot fetch saved invitationCode");
  }

  static void addListener(Function callback) {
    return _sockets._addListener(callback);
  }

  static bool removeListener(Function callback) {
    return _sockets._removeListener(callback);
  }

  static bool joinRoom({required int helperAmount}) {
    return _sockets._send(
        jsonEncode({"type": "room.join", "amount_of_helpers": helperAmount}));
  }

  static bool subscribeToPatient(
      {required int helperNr, required String dpsCode}) {
    return _sockets._send(jsonEncode({
      "type": "patient.subscribe",
      "helper_nr": helperNr,
      "dps_code": dpsCode
    }));
  }
}
