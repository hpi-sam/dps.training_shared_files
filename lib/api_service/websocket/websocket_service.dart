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

  static bool applyTriage(
      {required int helperNr, required String triageCategory}) {
    return _sockets._send(jsonEncode({
      "type": "patient.triage",
      "helper_nr": helperNr,
      "triage_color": triageCategory
    }));
  }

  static bool getAvailableMeasures({required int helperNr}) {
    return _sockets._send(
        jsonEncode({"type": "available.measures", "helper_nr": helperNr}));
  }

  static bool applyMeasure({required int helperNr, required String measureID}) {
    return _sockets._send(jsonEncode(({
      "type": "patient.apply",
      "helper_nr": helperNr,
      "measure_id": measureID
    })));
  }

  static bool cancelMeasure({required int helperNr}) {
    return _sockets
        ._send(jsonEncode(({"type": "cancel.measure", "helper_nr": helperNr})));
  }

  static bool removeMeasure({required int helperNr, required int measureID}) {
    return _sockets._send(jsonEncode(({
      "type": "remove.material",
      "helper_nr": helperNr,
      "measure_id": measureID
    })));
  }
}
