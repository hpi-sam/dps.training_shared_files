import 'dart:convert';

import 'package:bpmanv_app_sharedFiles/api_service/session.dart';
import 'package:bpmanv_app_sharedFiles/api_service/urls.dart';
import 'package:bpmanv_app_sharedFiles/model/applied_measures.dart';
import 'package:bpmanv_app_sharedFiles/model/available_measures.dart';

var mock_data_applied = {
  "applied_measures": [
    {
      "name": "Morphin",
      "image": "/static/01.jpg/",
      "is_reusable": false,
      "start_time": 20,
      "finish_time": 400,
      "state": "active"
    },
    {
      "name": "Maschinelle Beatmung",
      "image": "/static/01.jpg/",
      "is_reusable": false,
      "start_time": 0,
      "finish_time": 90,
      "state": "running"
    },
    {
      "name": "EKG",
      "image": "/static/01.jpg/",
      "is_reusable": true,
      "start_time": -1,
      "finish_time": -1,
      "state": "finished"
    },
  ]
};

var mock_data = {
  "categories": [
    {
      "name": "Zirkulation",
      "measures": [
        {
          "name": "Infusion + Besteck - Vollelektrolyt 500 ml",
          "image": "/static/01.jpg/",
          "available_amount": 3,
          "duration": 0,
          "is_applicable": false,
          "prerequisites": [
            {
              "name": "i.V. Zugang",
              "image": "/static/01.jpg/",
            },
            {
              "name": "i.O. Zugang",
              "image": "/static/01.jpg/",
            },
          ]
        },
        {
          "name": "i.V. Zugang",
          "image": "/static/01.jpg/",
          "available_amount": 5,
          "duration": 120,
          "is_applicable": true,
          "prerequisites": []
        },
        {
          "name": "i.O. Zugang",
          "image": "/static/01.jpg/",
          "available_amount": 1,
          "duration": 180,
          "is_applicable": true,
          "prerequisites": []
        },
      ]
    },
    {
      "name": "Transport",
      "measures": [
        {
          "name": "Fahrtrage",
          "image": "/static/01.jpg/",
          "available_amount": 1,
          "duration": 0,
          "is_applicable": true,
          "prerequisites": []
        },
        {
          "name": "Fahrtrage",
          "image": "/static/01.jpg/",
          "available_amount": 1,
          "duration": 0,
          "is_applicable": true,
          "prerequisites": []
        },
        {
          "name": "Fahrtrage",
          "image": "/static/01.jpg/",
          "available_amount": 1,
          "duration": 0,
          "is_applicable": true,
          "prerequisites": []
        },
        {
          "name": "Fahrtrage",
          "image": "/static/01.jpg/",
          "available_amount": 1,
          "duration": 0,
          "is_applicable": true,
          "prerequisites": []
        },
        {
          "name": "Fahrtrage",
          "image": "/static/01.jpg/",
          "available_amount": 1,
          "duration": 0,
          "is_applicable": true,
          "prerequisites": []
        },
        {
          "name": "Fahrtrage",
          "image": "/static/01.jpg/",
          "available_amount": 1,
          "duration": 0,
          "is_applicable": true,
          "prerequisites": []
        },
      ]
    },
  ]
};

Future<RunningMeasure> removeAppliedMeasureRoute(
    {required int patientID,
    required int helperNr,
    required int measureID}) async {
  try {
    final response = await Session.get(removeAppliedMeasureUrl(
        patientID: patientID, helperNr: helperNr, measureID: measureID));

    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return RunningMeasure.fromJson(responseJson);
    } else {
      throw Exception("Error ${response.statusCode}");
    }
  } on Exception catch (e) {
    print("ERROR REMOVING APPLIED MEASURE: " + e.toString());
    throw (e);
  }
}

Future<AvailableMeasures> fetchAvailableMeasuresMock(
    {required int patientID, required int helperNr}) async {
  try {
    final responseJson = mock_data;
    return AvailableMeasures.fromJson(responseJson);
  } on Exception catch (e) {
    print("ERROR FETCHING AVAILABLE MEASURES: " + e.toString());
    throw (e);
  }
}

Future<AvailableMeasures> fetchAvailableMeasuresRoute(
    {required int patientID, required int helperNr}) async {
  try {
    final response = await Session.get(
        availableMeasuresUrl(patientID: patientID, helperNr: helperNr));

    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return AvailableMeasures.fromJson(responseJson);
    } else {
      throw Exception(
          "Error ${response.statusCode} - Could not load available measures of patient ${patientID}.");
    }
  } on Exception catch (e) {
    print("ERROR FETCHING AVAILABLE MEASURES: " + e.toString());
    throw (e);
  }
}

Future<AppliedMeasures> fetchAppliedMeasuresMock(
    {required int patientID}) async {
  try {
    final responseJson = mock_data_applied;
    return AppliedMeasures.fromJson(responseJson);
  } on Exception catch (e) {
    print("ERROR FETCHING APPLIED MEASURES: " + e.toString());
    throw (e);
  }
}

Future<AppliedMeasures> fetchAppliedMeasuresRoute(
    {required int patientID}) async {
  try {
    final response =
        await Session.get(appliedMeasuresUrl(patientID: patientID));
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return AppliedMeasures.fromJson(responseJson);
    } else {
      throw Exception(
          "Error ${response.statusCode} - Could not load applied measures of patient ${patientID}.");
    }
  } on Exception catch (e) {
    print("ERROR FETCHING APPLIED MEASURES: " + e.toString());
    throw (e);
  }
}

Future<RunningMeasure> startNewMeasureMock(
    {required int patientID,
    required int helperNr,
    required AvailableMeasure measure}) async {
  return RunningMeasure(
      name: "Test Maßnahme",
      start_time: 0,
      finish_time: 60,
      image_small: serverURL + "/static/01.jpg/",
      image_original: serverURL + "/static/01.jpg/");
}

Future<RunningMeasure> startNewMeasureRoute(
    {required int patientID,
    required int helperNr,
    required AvailableMeasure measure}) async {
  try {
    final response = await Session.post(
      startNewMeasureUrl(patientID: patientID, helperNr: helperNr),
      jsonEncode({"id": measure.id}),
    );

    final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    if (response.statusCode != 200) {
      throw Exception("Error ${response.statusCode}");
    } else {
      return RunningMeasure.fromJson(responseJson);
    }
  } on Exception catch (e) {
    print("Couldn't start new Measure of patient $patientID : " + e.toString());
    throw (e);
  }
}

Future<bool> cancelCurrentMeasureMock(
    {required int patientID, required int helperNr}) async {
  return true;
}

Future<bool> cancelCurrentMeasureRoute(
    {required int patientID, required int helperNr}) async {
  try {
    final response = await Session.get(
        cancelCurrentMeasureUrl(patientID: patientID, helperNr: helperNr));
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception(
          "Error ${response.statusCode} - Could not cancel running measure of patient ${patientID}.");
    }
  } on Exception catch (e) {
    print("ERROR CANCELING RUNNING MEASURE: " + e.toString());
    throw (e);
  }
}

Future<int> checkCurrentMeasureMock(
    {required int patientID, required int helperNr}) async {
  return 0;
}
