import 'dart:convert';

import 'package:bpmanv_app_sharedFiles/api_service/session.dart';
import 'package:bpmanv_app_sharedFiles/api_service/urls.dart';
import 'package:bpmanv_app_sharedFiles/model/players/players.dart';
import 'package:bpmanv_app_sharedFiles/model/simplified_patients/simplified_patients.dart';

// TODO: Change getWithoutAuth to get again when the trainer can authenticate.

Future<PlayerList> getPlayerListRoute({required int roomID}) async {
  try {
    final response = await Session.getWithoutAuth(getPlayerListUrl(roomID: roomID));
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return PlayerList.fromJson(responseJson);
    } else {
      throw Exception("Error retrieving the player list of room $roomID: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<SimplifiedPatientList> getPatientListRoute({required int roomID}) async {
  try {
    final response = await Session.getWithoutAuth(getPatientListUrl(roomID: roomID));
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return SimplifiedPatientList.fromJson(responseJson);
    } else {
      throw Exception("Error retrieving the patient list of room $roomID: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> pauseRoomRoute({required int roomID}) async {
  try {
    final response = await Session.getWithoutAuth(pauseRoomUrl(roomID: roomID));
    if (response.statusCode != 200) {
      throw Exception("Error pausing room: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> resumeRoomRoute({required int roomID}) async {
  try {
    final response = await Session.getWithoutAuth(resumeRoomUrl(roomID: roomID));
    if (response.statusCode != 200) {
      throw Exception("Error resuming room: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> startRoomRoute({required int roomID}) async {
  try {
    final response = await Session.getWithoutAuth(startRoomUrl(roomID: roomID));
    if (response.statusCode != 200) {
      throw Exception("Error starting room: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> finishRoomRoute({required int roomID}) async {
  try {
    final response = await Session.getWithoutAuth(finishRoomUrl(roomID: roomID));
    if (response.statusCode != 200) {
      throw Exception("Error finishing room: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> changePhaseRoute({required int roomID}) async {
  try {
    final response = await Session.getWithoutAuth(changePhaseUrl(roomID: roomID));
    if (response.statusCode != 200) {
      throw Exception("Error changing patient phase(s): ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}