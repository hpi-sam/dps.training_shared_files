// Dart imports:
import 'dart:convert';

// Project imports:
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';
import 'package:dps.training_shared_files/api/rest/urls.dart';
import 'package:dps.training_shared_files/models/applied_measures/applied_measures.dart';
import 'package:dps.training_shared_files/models/available_measures/available_measures.dart';
import 'package:dps.training_shared_files/models/running_measure/running_measure.dart';

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
    {required String dpsCode,
    required int helperNr,
    required int measureID}) async {
  try {
    final response = await Session.get(removeAppliedMeasureUrl(
        dpsCode: dpsCode, helperNr: helperNr, measureID: measureID));

    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return RunningMeasure.fromJson(json: responseJson);
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
    {required String dpsCode, required int helperNr}) async {
  try {
    final response = await Session.get(
        availableMeasuresUrl(dpsCode: dpsCode, helperNr: helperNr));

    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return AvailableMeasures.fromJson(responseJson);
    } else {
      throw Exception(
          "Error ${response.statusCode} - Could not load available measures of patient ${dpsCode}.");
    }
  } on Exception catch (e) {
    print("ERROR FETCHING AVAILABLE MEASURES: " + e.toString());
    throw (e);
  }
}

Future<AppliedMeasures> fetchAppliedMeasuresMock(
    {required String dpsCode}) async {
  try {
    final responseJson = mock_data_applied;
    return AppliedMeasures.fromJson(responseJson);
  } on Exception catch (e) {
    print("ERROR FETCHING APPLIED MEASURES: " + e.toString());
    throw (e);
  }
}

Future<AppliedMeasures> fetchAppliedMeasuresRoute(
    {required String dpsCode}) async {
  try {
    final response = await Session.get(appliedMeasuresUrl(dpsCode: dpsCode));
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return AppliedMeasures.fromJson(responseJson);
    } else {
      throw Exception(
          "Error ${response.statusCode} - Could not load applied measures of patient ${dpsCode}.");
    }
  } on Exception catch (e) {
    print("ERROR FETCHING APPLIED MEASURES: " + e.toString());
    throw (e);
  }
}

Future<RunningMeasure> startNewMeasureMock(
    {required String dpsCode,
    required int helperNr,
    required AvailableMeasure measure}) async {
  return RunningMeasure(
      name: "Test Maßnahme",
      start_time: 0,
      finish_time: 60,
      image_small: baseUri.replace(path: '/static/01.jpg/'),
      image_original: baseUri.replace(path: '/static/01.jpg/'),
      requires_two_helpers: false);
}

Future<RunningMeasure> startNewMeasureRoute(
    {required String dpsCode,
    required int helperNr,
    required String measureTypeID}) async {
  try {
    final response = await Session.post(
      startNewMeasureUrl(dpsCode: dpsCode, helperNr: helperNr),
      jsonEncode({"id": measureTypeID}),
    );

    final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    if (response.statusCode != 200) {
      throw Exception("Error ${response.statusCode}");
    } else {
      return RunningMeasure.fromJson(json: responseJson);
    }
  } on Exception catch (e) {
    print("Couldn't start new Measure of patient $dpsCode : " + e.toString());
    throw (e);
  }
}

Future<bool> cancelCurrentMeasureMock(
    {required String dpsCode, required int helperNr}) async {
  return true;
}

Future<bool> cancelCurrentMeasureRoute({required int helperNr}) async {
  try {
    final response =
        await Session.get(cancelCurrentMeasureUrl(helperNr: helperNr));
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception(
          "Error ${response.statusCode} - Could not cancel running measure.");
    }
  } on Exception catch (e) {
    print("ERROR CANCELING RUNNING MEASURE: " + e.toString());
    throw (e);
  }
}

Future<int> checkCurrentMeasureMock(
    {required String dpsCode, required int helperNr}) async {
  return 0;
}
