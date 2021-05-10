// Dart imports:
import 'dart:convert';

// Project imports:
import 'package:bpmanv_app_sharedFiles/api_service/session.dart';
import 'package:bpmanv_app_sharedFiles/api_service/urls.dart';
import 'package:bpmanv_app_sharedFiles/model/available_measures/available_measures.dart';
import 'package:bpmanv_app_sharedFiles/model/simulation_time/simulation_time.dart';

Future<bool> doesRoomExistRoute({required int roomID}) async{
  try {
    final response = await Session.getWithoutAuth(
        getRoomUrl(roomID: roomID));
    if (response.statusCode == 200) return true;
    return false;
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> joinRoomRoute(
    {required int roomID, required int helperAmount}) async {
  try {
    final response = await Session.get(
        joinRoomUrl(roomID: roomID, helperAmount: helperAmount));
    if (response.statusCode != 201) {
      throw Exception("Error joining room ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<void> signUpRoute({String? name}) async {
  try {
    final response =
        await Session.postLogin(signUpUrl(), jsonEncode({"username": name}));
    if (response.statusCode != 201) {
      throw Exception("Error signing up ${response.statusCode}");
    }
  } on Exception catch (e) {
    throw (e);
  }
}

Future<SimulationTime> simulationTimeRoute() async {
  try {
    final response = await Session.get(simulationTimeUrl());
    final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    if (response.statusCode == 200) {
      return SimulationTime.fromJson(responseJson);
    } else {
      throw Exception(
          "Error ${response.statusCode} - Could not fetch SimulationTime.");
    }
  } on Exception catch (e) {
    print("ERROR FETCHING TIME: " + e.toString());
    throw (e);
  }
}

Future<int> fetchOwnEntityIDRoute({required int helperNr}) async {
  try {
    final response = await Session.get(helperIDUrl(helperNr: helperNr));
    final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    if (response.statusCode == 200) {
      return responseJson["id"];
    } else {
      throw Exception(
          "Error ${response.statusCode} - Could not fetch helperId.");
    }
  } on Exception catch (e) {
    print("ERROR FETCHING HELPER-ID: " + e.toString());
    throw (e);
  }
}

Future<void> leaveRoomRoute() async {
  try {
    final response = await Session.get(leaveRoomUrl());
    if (response.statusCode != 200) {
      throw Exception("Error leaving room: ${response.statusCode}");
    }
    Session.deleteSession();
  } on Exception catch (e) {
    throw (e);
  }
}

Future<RunningMeasure?> checkHelperBusyRoute({required int helperNr}) async {
  try {
    final response = await Session.get(checkHelperBusyUrl(helperNr: helperNr));
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseJson =
          jsonDecode(utf8.decode(response.bodyBytes));
      if (responseJson["is_busy"]) {
        return RunningMeasure.fromJson(responseJson["current_measure"]);
      } else return null;
    } else {
      throw Exception(
          "Error ${response.statusCode} - Could not check if the helper $helperNr is currently busy.");
    }
  } on Exception catch (e) {
    print("ERROR CHECKING IF HELPER IS BUSY: " + e.toString());
    throw (e);
  }
}

Future<int> getHelperCountRoute() async {
  try {
    final response = await Session.get(helperCountUrl());
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseJson =
          jsonDecode(utf8.decode(response.bodyBytes));
      return responseJson["helper_count"]!;
    } else {
      throw Exception(
          "Error ${response.statusCode} - Cannot get the amount of helpers");
    }
  } on Exception catch (e) {
    print("ERROR CHECKING HELPER COUNT: " + e.toString());
    throw (e);
  }
}
