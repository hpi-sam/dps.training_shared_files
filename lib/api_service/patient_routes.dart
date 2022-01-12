// Dart imports:
import 'dart:convert';

// Project imports:
import 'package:dps.training_shared_files/api_service/session.dart';
import 'package:dps.training_shared_files/api_service/urls.dart';
import 'package:dps.training_shared_files/model/patient/patient.dart';
import 'package:dps.training_shared_files/model/running_measure/running_measure.dart';

Future<Patient> fetchPatientMock({required String dpsCode}) async {
  Map<String, dynamic> patientJson = {
    "static_data": {
      "injuries": [
        {"type": "BLEEDING", "location": "HEAD"},
        {"type": "FRACTURE", "location": "RIGHT_ARM"},
        {"type": "FRACTURE", "location": "LEFT_ARM"},
        {"type": "CRITICAL_BLEEDING", "location": "RIGHT_LEG"},
        {"type": "FRACTURE", "location": "RIGHT_LEG"}
      ],
      "personal_data": {
        "name": "Friederike Maiborn",
        "address": "Bahnhofsplatz 15 28195 Bremen",
        "age": 25,
        "birth_date": "23.06.",
        "gender": "W",
        "biometrics": "1,72 m, braune Augen, blonde Haare"
      },
      "dps_code": {
        "dps_code": "5AZA",
        "dps_id": 5,
        "set": "A",
        "suggested_triage_color": "Z",
        "disease_process": "A"
      },
      "first_impression": {
        "cannot_walk": true,
        "is_bleeding": false,
        "is_bleeding_critically": true,
        "is_motionless": true,
        "has_cyanosis": false
      },
      "injury_description":
          "offene Fraktur rechter Unterschenkel, spritzende Blutung, schon großer Blutverlust; Wunde linke Schläfe",
      "body_check_information":
          "schulternahe Oberarmfehlstellung rechts; linke Hand mit Fehlstellung im Handgelenk, Thorax, Abdomen, Becken stabil",
      "situation_of_discovery": "liegt auf dem Rücken"
    },
    "current_phase": {
      "standard_diagnostic": {
        "breathing": {
          "frequency": "20/min",
          "pattern": "flache Atmung",
          "has_cyanosis": true
        },
        "circulation": {
          "pulse": "140/min",
          "rhythm": "kaum tastbar",
          "pulse_place": "zentral",
          "recap": "> 2 sec."
        },
        "disability": {
          "pupils": "isocor",
          "gcs_eyes": 2,
          "gcs_language": 2,
          "gcs_motoric_behaviour": 4
        },
        "exposure": {"pain": "8/10", "skin": "grau marmoriert"},
        "airway": "frei",
        "exsang_hemorrhage": "nein",
        "psyche": "teilnahmslos"
      },
      "phase_number": 2,
      "status": "A",
      "ekg": "hidden",
      "pulmonary_auscultation": "hidden",
      "blood_pressure": "hidden",
      "spo2": "-1",
      "spco": "-2"
    }
  };
  return Patient.fromJson(patientJson, dpsCode);
}

Future<Patient> fetchPatientRoute(
    {required String dpsCode, required int helperNr}) async {
  try {
    final response =
        await Session.get(patientDataUrl(dpsCode: dpsCode, helperNr: helperNr));
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

Future<RunningMeasure> uncoverPatientRoute(
    {required String dpsCode, required int helperNr}) async {
  try {
    final response = await Session.get(
        uncoverPatientUrl(dpsCode: dpsCode, helperNr: helperNr));
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return RunningMeasure.fromJson(json: responseJson);
    } else {
      throw Exception(
          "Error ${response.statusCode} - Could not uncover patient $dpsCode.");
    }
  } on Exception catch (e) {
    print("ERROR UNCOVERING PATIENT: $e");
    throw (e);
  }
}

Future<int> fetchOwnEntityIdMock() async {
  return 1;
}

Future<void> updateTriageRoute(
    {required String dpsCode,
    required int helperNr,
    required String triageCategory}) async {
  try {
    final response = await Session.post(
        triageUrl(dpsCode: dpsCode, helperNr: helperNr),
        jsonEncode({"category": triageCategory}));
    if (response.statusCode != 200) {}
  } on Exception catch (e) {
    print("ERROR FETCHING PATIENT: " + e.toString());
    throw (e);
  }
}
