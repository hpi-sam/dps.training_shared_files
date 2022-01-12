// Dart imports:
import 'dart:collection';

// Project imports:
import 'package:dps.training_shared_files/api_service/urls.dart';
import 'package:dps.training_shared_files/api_service/patient_routes.dart';
import 'package:dps.training_shared_files/api_service/session_routes.dart';
// Package imports:
import 'package:dps.training_shared_files/api_service/trainer_routes.dart';
import 'package:intl/intl.dart';

import 'inventory_routes.dart';
import 'measures_routes.dart';

/// Converts a JSON-Map to a Map where each key is represented as a [Symbol].
/// The converted Map can be used in a [Function.apply] call as the list of named
/// parameters.
Map<Symbol, dynamic> symbolizeKeys(Map<String, dynamic> map) {
  final result = new Map<Symbol, dynamic>();
  map.forEach((String k, v) {
    result[new Symbol(k)] = v;
  });
  return result;
}

/// A [BackendRoute] wraps a single [Route] implemented by the backend. It consists
/// of a [name], a [_function] that can be called and a [Map] of [_params] with
/// which the function is called.
///
/// Inside the function, the interaction with the backend API should be placed.
/// Each existing API-route is represented by a factory for this class. The function
/// must always return a Future.
class BackendRoute {
  String name;
  Function? _function;
  Map<Symbol, dynamic> _params = {};
  late final DateTime _dateTime;
  late final String _formattedTime;

  BackendRoute(this.name, this._function, this._params) {
    this._dateTime = DateTime.now();
    this._formattedTime = DateFormat('hh:mm:ss').format(_dateTime);
  }

  /// Calls the [_function] of this [BackendRoute] with the named parameters [_params].
  ///
  /// Returns the return value of [function] or [Future.value(null)] if
  /// [function] is null.
  Future<dynamic> call() {
    if (_function != null) {
      return Function.apply(_function!, [], _params);
    } else {
      return Future.value(null);
    }
  }

  @override
  String toString() {
    return "[$_formattedTime] $name";
  }

  /// Returns the [name] and the [_params] of this [BackendRoute]
  String toStringWithParams() {
    return "[$_formattedTime] $name $_params";
  }

  factory BackendRoute.fetchOwnInventory({required int helperNr}) {
    Function f = fetchOwnInventoryRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"helperNr": helperNr});
    return BackendRoute(ownInventoryDataUrl(helperNr: helperNr), f, p);
  }

  factory BackendRoute.fetchForeignInventory(
      {required String entityID, bool useMockData = false}) {
    Function f =
        useMockData ? fetchForeignInventoryMock : fetchForeignInventoryRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"entityID": entityID});
    return BackendRoute(foreignInventoryDataUrl(entityID: entityID), f, p);
  }

  factory BackendRoute.saveInventoryChanges(
      {required String entityID,
      required int helperNr,
      required String materialID,
      required int amount}) {
    Function f = saveInventoryChangesRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({
      "entityID": entityID,
      "helperNr": helperNr,
      "materialID": materialID,
      "amount": amount
    });
    return BackendRoute(
        inventoryExchangeUrl(entityID: entityID, helperNr: helperNr), f, p);
  }

  factory BackendRoute.fetchPatient(
      {required String dpsCode, required int helperNr}) {
    Function f = fetchPatientRoute;
    Map<Symbol, dynamic> p =
        symbolizeKeys({"dpsCode": dpsCode, "helperNr": helperNr});
    return BackendRoute(
        patientDataUrl(dpsCode: dpsCode, helperNr: helperNr), f, p);
  }

  factory BackendRoute.uncoverPatient(
      {required String dpsCode, required int helperNr}) {
    Function f = uncoverPatientRoute;
    Map<Symbol, dynamic> p =
        symbolizeKeys({"dpsCode": dpsCode, "helperNr": helperNr});
    return BackendRoute(
        uncoverPatientUrl(dpsCode: dpsCode, helperNr: helperNr), f, p);
  }

  factory BackendRoute.updateTriage(
      {required String dpsCode,
      required int helperNr,
      required String triageCategory}) {
    Function f = updateTriageRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({
      "dpsCode": dpsCode,
      "helperNr": helperNr,
      "triageCategory": triageCategory
    });
    return BackendRoute(triageUrl(dpsCode: dpsCode, helperNr: helperNr), f, p);
  }

  factory BackendRoute.fetchAvailableMeasures(
      {required String dpsCode, required int helperNr}) {
    Function f = fetchAvailableMeasuresRoute;
    Map<Symbol, dynamic> p =
        symbolizeKeys({"dpsCode": dpsCode, "helperNr": helperNr});
    return BackendRoute(
        availableMeasuresUrl(dpsCode: dpsCode, helperNr: helperNr), f, p);
  }

  factory BackendRoute.startNewMeasure(
      {required String dpsCode,
      required int helperNr,
      required String measureTypeID}) {
    Function f = startNewMeasureRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({
      "dpsCode": dpsCode,
      "helperNr": helperNr,
      "measureTypeID": measureTypeID
    });
    return BackendRoute(
        startNewMeasureUrl(dpsCode: dpsCode, helperNr: helperNr), f, p);
  }

  factory BackendRoute.cancelCurrentMeasure({required int helperNr}) {
    Function f = cancelCurrentMeasureRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"helperNr": helperNr});
    return BackendRoute(cancelCurrentMeasureUrl(helperNr: helperNr), f, p);
  }

  factory BackendRoute.checkIfHelperBusy(
      {required int helperNr, String? dpsCode}) {
    Function f = checkHelperBusyRoute;
    Map<Symbol, dynamic> p =
        symbolizeKeys({"helperNr": helperNr, "dpsCode": dpsCode});
    return BackendRoute(checkHelperBusyUrl(helperNr: helperNr), f, p);
  }

  factory BackendRoute.fetchAppliedMeasures({required String dpsCode}) {
    Function f = fetchAppliedMeasuresRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"dpsCode": dpsCode});
    return BackendRoute(appliedMeasuresUrl(dpsCode: dpsCode), f, p);
  }

  factory BackendRoute.removeAppliedMeasure(
      {required String dpsCode,
      required int helperNr,
      required int measureID}) {
    Function f = removeAppliedMeasureRoute;
    Map<Symbol, dynamic> p = symbolizeKeys(
        {"dpsCode": dpsCode, "helperNr": helperNr, "measureID": measureID});
    return BackendRoute(
        removeAppliedMeasureUrl(
            dpsCode: dpsCode, helperNr: helperNr, measureID: measureID),
        f,
        p);
  }

  factory BackendRoute.fetchOwnEntityID({required int helperNr}) {
    Function f = fetchOwnEntityIDRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"helperNr": helperNr});
    return BackendRoute(helperIDUrl(helperNr: helperNr), f, p);
  }

  factory BackendRoute.joinRoom(
      {required String invitationCode, required int helperAmount}) {
    Function f = joinRoomRoute;
    Map<Symbol, dynamic> p = symbolizeKeys(
        {"invitationCode": invitationCode, "helperAmount": helperAmount});
    return BackendRoute(
        joinRoomUrl(invitationCode: invitationCode, helperAmount: helperAmount),
        f,
        p);
  }

  factory BackendRoute.leaveRoom() {
    Function f = leaveRoomRoute;
    Map<Symbol, dynamic> p = {};
    return BackendRoute(leaveRoomUrl(), f, p);
  }

  factory BackendRoute.playersSignUp({String name = ""}) {
    Function f = playerSignUpRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"name": name});
    return BackendRoute(playersSignUpUrl(), f, p);
  }

  factory BackendRoute.trainersSignUp(
      {required String username,
      required String password1,
      required String password2,
      required String email}) {
    Function f = trainerSignUpRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({
      "username": username,
      "password1": password1,
      "password2": password2,
      "email": email
    });
    return BackendRoute(playersSignUpUrl(), f, p);
  }

  factory BackendRoute.trainersLogIn(
      {required String username, required String password}) {
    Function f = trainerLogInRoute;
    Map<Symbol, dynamic> p =
        symbolizeKeys({"username": username, "password": password});
    return BackendRoute(playersSignUpUrl(), f, p);
  }

  factory BackendRoute.simulationTime() {
    Function f = simulationTimeRoute;
    Map<Symbol, dynamic> p = {};
    return BackendRoute(simulationTimeUrl(), f, p);
  }

  factory BackendRoute.roomState({required int roomID}) {
    Function f = roomStateRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"roomID": roomID});
    return BackendRoute(roomStateUrl(roomID: roomID), f, p);
  }

  factory BackendRoute.getHelperCount() {
    Function f = getHelperCountRoute;
    Map<Symbol, dynamic> p = {};
    return BackendRoute(helperCountUrl(), f, p);
  }

  factory BackendRoute.doesRoomExist({required int roomID}) {
    Function f = doesRoomExistRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"roomID": roomID});
    return BackendRoute(getRoomUrl(roomID: roomID), f, p);
  }

  factory BackendRoute.getPlayerList({required int roomID}) {
    Function f = getPlayerListRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"roomID": roomID});
    return BackendRoute(getPlayerListUrl(roomID: roomID), f, p);
  }

  factory BackendRoute.getPatientList({required int roomID}) {
    Function f = getPatientListRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"roomID": roomID});
    return BackendRoute(getPatientListUrl(roomID: roomID), f, p);
  }

  factory BackendRoute.pauseRoom() {
    Function f = pauseRoomRoute;
    Map<Symbol, dynamic> p = {};
    return BackendRoute(pauseRoomUrl(), f, p);
  }

  factory BackendRoute.resumeRoom() {
    Function f = resumeRoomRoute;
    Map<Symbol, dynamic> p = {};
    return BackendRoute(resumeRoomUrl(), f, p);
  }

  factory BackendRoute.startRoom({required int roomID}) {
    Function f = startRoomRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"roomID": roomID});
    return BackendRoute(startRoomUrl(roomID: roomID), f, p);
  }

  factory BackendRoute.finishRoom() {
    Function f = finishRoomRoute;
    Map<Symbol, dynamic> p = {};
    return BackendRoute(finishRoomUrl(), f, p);
  }

  factory BackendRoute.changePhase() {
    Function f = changePhaseRoute;
    Map<Symbol, dynamic> p = {};
    return BackendRoute(changePhaseUrl(), f, p);
  }

  factory BackendRoute.createRoom() {
    Function f = createRoomRoute;
    Map<Symbol, dynamic> p = {};
    return BackendRoute(createRoomUrl(), f, p);
  }

  factory BackendRoute.nextPhaseChange() {
    Function f = nextPhaseChangeRoute;
    Map<Symbol, dynamic> p = {};
    return BackendRoute(nextPhaseChangeUrl(), f, p);
  }

  factory BackendRoute.modifyPhaseChange({required int seconds}) {
    Function f = modifyPhaseChangeRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"seconds": seconds});
    return BackendRoute(modifyPhaseChangeUrl(), f, p);
  }

  factory BackendRoute.changeRoomConfig(
      {required int roomID,
      required int phaseChangeTime,
      required int waitingTimePatient,
      required int expiringTimePatient}) {
    Function f = changeRoomConfigRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({
      "roomID": roomID,
      "phaseChangeTime": phaseChangeTime,
      "waitingTimePatient": waitingTimePatient,
      "expiringTimePatient": expiringTimePatient,
    });
    return BackendRoute(changeRoomConfigUrl(roomID: roomID), f, p);
  }

  factory BackendRoute.fetchPatientTrainer({required String dpsCode}) {
    Function f = fetchPatientTrainerRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"dpsCode": dpsCode});
    return BackendRoute(patientDataTrainerUrl(dpsCode: dpsCode), f, p);
  }

  factory BackendRoute.addPatientTrainer(
      {required String dpsCode, required int roomID}) {
    Function f = addPatientTrainerRoute;
    Map<Symbol, dynamic> p =
        symbolizeKeys({"dpsCode": dpsCode, "roomID": roomID});
    return BackendRoute(
        addPatientTrainerUrl(dpsCode: dpsCode, roomID: roomID), f, p);
  }

  factory BackendRoute.checkoutPatient({required String dpsCode}) {
    Function f = checkoutPatientRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"dpsCode": dpsCode});
    return BackendRoute(checkoutPatientUrl(dpsCode: dpsCode), f, p);
  }

  factory BackendRoute.fetchExerciseLog({required int roomID}) {
    Function f = fetchExerciseLogRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"roomID": roomID});
    return BackendRoute(getExerciseLogUrl(roomID: roomID), f, p);
  }

  factory BackendRoute.addEvent({required String type, String? details}) {
    Function f = addEventRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({
      "type": type,
      if (details != null) "details": details,
    });
    return BackendRoute(addEventUrl(), f, p);
  }

  factory BackendRoute.fetchTriageAccuracy({required int roomID}) {
    Function f = fetchTriageAccuracyRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"roomID": roomID});
    return BackendRoute(getTriageAccuracyUrl(roomID: roomID), f, p);
  }

  factory BackendRoute.checkIfRoomActive() {
    Function f = getActiveRoomRoute;
    Map<Symbol, dynamic> p = {};
    return BackendRoute(getActiveRoomUrl(), f, p);
  }
}

/// This class contains a [Queue] which stores all [BackendRoute] that are called
/// through this class. It provides functions to call the last [BackendRoute] in the
/// [routeQueue] and to print the queue.
///
/// All API calls to the backend server should be routed through this class, so
/// that we have a complete list of all server interaction for debugging purposes.
///
/// The API is documented here: https://github.com/hpi-sam/BPMANV-Server/blob/dev/api_spezification.md
class APIService {
  /// A Queue containing all [BackendRoute] that have been called.
  static Queue<BackendRoute> routeQueue = Queue<BackendRoute>();

  /// Calls [backendRoute] and adds it to the [routeQueue].
  static Future<dynamic> callRoute(BackendRoute backendRoute) {
    routeQueue.addLast(backendRoute);
    return backendRoute.call();
  }

  /// Calls the last [BackendRoute] in the [routeQueue]. This should be the last route
  /// called beforehand. Does nothing if [routeQueue] is empty.
  static void callLast() {
    if (routeQueue.isNotEmpty) {
      callRoute(routeQueue.last);
    }
  }

  /// Returns the last [BackendRoute] in the [routeQueue]. Returns null if
  /// [routeQueue] is empty.
  static BackendRoute? peekLast() {
    if (routeQueue.isNotEmpty) return routeQueue.last;
  }

  /// Prints all [BackendRoute] in the [routeQueue]. If [detailedPrint] is false
  /// (default) prints only the name of the routes. If [detailedPrint] is true
  /// prints name plus parameters of the route function.
  static void printRouteQueue({bool detailedPrint = false}) {
    for (BackendRoute r in routeQueue) {
      detailedPrint ? print(r.toStringWithParams()) : print(r);
    }
  }
}
