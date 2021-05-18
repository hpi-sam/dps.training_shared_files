import 'dart:convert';

import 'package:bpmanv_app_sharedFiles/api_service/session.dart';
import 'package:bpmanv_app_sharedFiles/api_service/urls.dart';
import 'package:bpmanv_app_sharedFiles/model/players/players.dart';
import 'package:bpmanv_app_sharedFiles/model/simplified_patients/simplified_patients.dart';


Future<PlayerList> getPlayerListRoute({required int roomID}) async {
  try {
    final response = await Session.get(getPlayerListUrl(roomID: roomID));
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return PlayerList.fromJson(responseJson);
    } else {
      throw Exception(
          "Error retrieving the player list of room $roomID: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<SimplifiedPatientList> getPatientListRoute({required int roomID}) async {
  try {
    final response = await Session.get(getPatientListUrl(roomID: roomID));
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return SimplifiedPatientList.fromJson(responseJson);
    } else {
      throw Exception(
          "Error retrieving the patient list of room $roomID: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> pauseRoomRoute() async {
  try {
    final response = await Session.get(pauseRoomUrl());
    if (response.statusCode != 200) {
      throw Exception("Error pausing room: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> resumeRoomRoute() async {
  try {
    final response = await Session.get(resumeRoomUrl());
    if (response.statusCode != 200) {
      throw Exception("Error resuming room: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> startRoomRoute({required int roomID}) async {
  try {
    final response = await Session.get(startRoomUrl(roomID: roomID));
    if (response.statusCode != 200) {
      throw Exception("Error starting room: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> finishRoomRoute() async {
  try {
    final response = await Session.get(finishRoomUrl());
    if (response.statusCode != 200) {
      throw Exception("Error finishing room: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> changePhaseRoute() async {
  try {
    final response = await Session.get(changePhaseUrl());
    if (response.statusCode != 200) {
      throw Exception(
          "Error changing patient phase(s): ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<Map<String, dynamic>> createRoomRoute() async {
  try {
    final response = await Session.post(createRoomUrl(), jsonEncode({}));
    if (response.statusCode != 200) {
      throw Exception("Error creating new room: ${response.statusCode}");
    }
    return jsonDecode(utf8.decode(response.bodyBytes));
  } on Exception catch (e) {
    throw (e);
  }
}

Future<int> nextPhaseChangeRoute() async {
  try {
    final response = await Session.get(nextPhaseChangeUrl());
    if (response.statusCode != 200) {
      throw Exception(
          "Error fetching next phase change: ${response.statusCode}");
    }
    final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    return responseJson["next_phase_change"];
  } on Exception catch (e) {
    throw (e);
  }
}

Future<int> modifyPhaseChangeRoute(
    {required int seconds}) async {
  try {
    final response = await Session.post(
        modifyPhaseChangeUrl(), jsonEncode({"seconds": seconds}));

    if (response.statusCode != 200) {
      throw Exception(
          "Error modifying time of phase change: ${response.statusCode}");
    }
    final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    return responseJson["next_phase_change"];
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> changeRoomConfigRoute(
    {required int roomID,
    required int phaseChangeTime,
    required int waitingTimePatient,
    required int expiringTimePatient}) async {
  try {
    final response = await Session.post(
        changeRoomConfigUrl(roomID: roomID),
        jsonEncode({
          "phase_change_time": phaseChangeTime,
          "waiting_time_patient": waitingTimePatient,
          "expiring_time_patient": expiringTimePatient,
        }));
    if (response.statusCode != 200) {
      throw Exception(
          "Error changing room configuration: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}
