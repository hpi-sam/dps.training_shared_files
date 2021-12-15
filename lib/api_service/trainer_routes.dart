import 'dart:convert';

import 'package:dps_training.shared_files/api_service/session.dart';
import 'package:dps_training.shared_files/api_service/urls.dart';
import 'package:dps_training.shared_files/model/exercise_log/exercise_log.dart';
import 'package:dps_training.shared_files/model/patient/patient.dart';
import 'package:dps_training.shared_files/model/players/players.dart';
import 'package:dps_training.shared_files/model/simplified_patients/simplified_patients.dart';

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

Future<int> modifyPhaseChangeRoute({required int seconds}) async {
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
          "default_phase_length": phaseChangeTime,
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

Future<Patient> fetchPatientTrainerRoute({required String dpsCode}) async {
  try {
    final response = await Session.get(patientDataTrainerUrl(dpsCode: dpsCode));
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return Patient.fromJson(responseJson, dpsCode);
    } else {
      if (response.statusCode == 404) {
        // error is in German because it might be relevant to the player.
        throw Exception(
            "Error ${response.statusCode} - Der Patient ${dpsCode} kann nicht geladen werden. "
            "Womöglich ist dieser Patient nicht in der Datenbank vorhanden. Bitte"
            " stelle sicher, dass der gescannte QR-Code korrekt ist.");
      }
      throw Exception(
          "Error ${response.statusCode} - Could not load patient ${dpsCode}.");
    }
  } on Exception catch (e) {
    print("ERROR FETCHING PATIENT: " + e.toString());
    throw (e);
  }
}

Future<void> addPatientTrainerRoute(
    {required String dpsCode, required int roomID}) async {
  try {
    final response = await Session.get(
        addPatientTrainerUrl(dpsCode: dpsCode, roomID: roomID));
    if (response.statusCode != 200) {
      throw Exception("Error adding patient $dpsCode: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> checkoutPatientRoute({required String dpsCode}) async {
  try {
    final response = await Session.get(checkoutPatientUrl(dpsCode: dpsCode));
    if (response.statusCode != 200) {
      throw Exception(
          "Error checking out patient $dpsCode: ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> addEventRoute({required String type, String? details}) async {
  try {
    final response = await Session.post(
        addEventUrl(),
        jsonEncode({
          "type": type,
          if (details != null) "details": details,
        }));
    if (response.statusCode != 201) {
      throw Exception(
          "Error adding event of type: $type with details: $details - ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

//todo: implement and return triage accuracy data model
Future<Map<String, dynamic>> fetchTriageAccuracyRoute(
    {required int roomID}) async {
  try {
    final response = await Session.get(getTriageAccuracyUrl(roomID: roomID));
    if (response.statusCode != 200) {
      throw Exception(
          "Error fetching triage accuracy for room $roomID: ${response.statusCode}");
    }
    return jsonDecode(utf8.decode(response.bodyBytes));
  } on Exception catch (e) {
    throw (e);
  }
}

Future<ExerciseLog> fetchExerciseLogRoute({required int roomID}) async {
  try {
    final response = await Session.get(getExerciseLogUrl(roomID: roomID));
    if (response.statusCode != 200) {
      throw Exception(
          "Error fetching exercise evaluation log for room $roomID: ${response.statusCode}");
    }
    final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    return ExerciseLog.fromJson(responseJson);
  } on Exception catch (e) {
    throw (e);
  }
}

Future<Map<String, dynamic>> getActiveRoomRoute() async {
  try {
    final response = await Session.get(getActiveRoomUrl());
    if (response.statusCode != 200) {
      throw Exception(
          "Error trying to check if an active room exists for this trainer: ${response.statusCode}");
    }
    return jsonDecode(utf8.decode(response.bodyBytes));
  } on Exception catch (e) {
    throw (e);
  }
}
