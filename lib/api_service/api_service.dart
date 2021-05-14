// Dart imports:
import 'dart:collection';

// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/api_service/patient_routes.dart';
import 'package:bpmanv_app_sharedFiles/api_service/session_routes.dart';
import 'package:bpmanv_app_sharedFiles/api_service/urls.dart';
import 'package:bpmanv_app_sharedFiles/model/available_measures.dart';
import 'package:bpmanv_app_sharedFiles/model/inventory_exchange.dart';
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

  factory BackendRoute.fetchForeignInventory({required int entityID}) {
    Function f = fetchForeignInventoryRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"entityID": entityID});
    return BackendRoute(foreignInventoryDataUrl(entityID: entityID), f, p);
  }

  factory BackendRoute.saveExchangeInventory(
      {required int entityID,
      required int helperNr,
      required InventoryExchange inventoryExchange}) {
    Function f = saveExchangeInventoryRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({
      "entityID": entityID,
      "helperNr": helperNr,
      "inventoryExchange": inventoryExchange
    });
    return BackendRoute(
        inventoryExchangeUrl(entityID: entityID, helperNr: helperNr), f, p);
  }

  factory BackendRoute.fetchPatient({required int patientID}) {
    Function f = fetchPatientRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"patientID": patientID});
    return BackendRoute(patientDataUrl(patientID: patientID), f, p);
  }

  factory BackendRoute.updateTriage(
      {required int patientID,
      required int helperNr,
      required String triageCategory}) {
    Function f = updateTriageRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({
      "patientID": patientID,
      "helperNr": helperNr,
      "triageCategory": triageCategory
    });
    return BackendRoute(
        triageUrl(patientID: patientID, helperNr: helperNr), f, p);
  }

  factory BackendRoute.fetchAvailableMeasures(
      {required int patientID, required int helperNr}) {
    Function f = fetchAvailableMeasuresRoute;
    Map<Symbol, dynamic> p =
        symbolizeKeys({"patientID": patientID, "helperNr": helperNr});
    return BackendRoute(
        availableMeasuresUrl(patientID: patientID, helperNr: helperNr), f, p);
  }

  factory BackendRoute.startNewMeasure(
      {required int patientID,
      required int helperNr,
      required AvailableMeasure measure}) {
    Function f = startNewMeasureRoute;
    Map<Symbol, dynamic> p = symbolizeKeys(
        {"patientID": patientID, "helperNr": helperNr, "measure": measure});
    return BackendRoute(
        startNewMeasureUrl(patientID: patientID, helperNr: helperNr), f, p);
  }

  factory BackendRoute.cancelCurrentMeasure(
      {required int patientID, required int helperNr}) {
    Function f = cancelCurrentMeasureRoute;
    Map<Symbol, dynamic> p =
        symbolizeKeys({"patientID": patientID, "helperNr": helperNr});
    return BackendRoute(
        cancelCurrentMeasureUrl(patientID: patientID, helperNr: helperNr),
        f,
        p);
  }

  factory BackendRoute.checkIfHelperBusy({required int helperNr}) {
    Function f = checkHelperBusyRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"helperNr": helperNr});
    return BackendRoute(checkHelperBusyUrl(helperNr: helperNr), f, p);
  }

  factory BackendRoute.fetchAppliedMeasures({required int patientID}) {
    Function f = fetchAppliedMeasuresRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"patientID": patientID});
    return BackendRoute(appliedMeasuresUrl(patientID: patientID), f, p);
  }

  factory BackendRoute.removeAppliedMeasure(
      {required int patientID, required int helperNr, required int measureID}) {
    Function f = removeAppliedMeasureRoute;
    Map<Symbol, dynamic> p = symbolizeKeys(
        {"patientID": patientID, "helperNr": helperNr, "measureID": measureID});
    return BackendRoute(
        removeAppliedMeasureUrl(
            patientID: patientID, helperNr: helperNr, measureID: measureID),
        f,
        p);
  }

  factory BackendRoute.fetchOwnEntityID({required int helperNr}) {
    Function f = fetchOwnEntityIDRoute;
    Map<Symbol, dynamic> p = symbolizeKeys({"helperNr": helperNr});
    return BackendRoute(helperIDUrl(helperNr: helperNr), f, p);
  }

  factory BackendRoute.joinRoom(
      {required int roomID, required int helperAmount}) {
    Function f = joinRoomRoute;
    Map<Symbol, dynamic> p =
        symbolizeKeys({"roomID": roomID, "helperAmount": helperAmount});
    return BackendRoute(
        joinRoomUrl(roomID: roomID, helperAmount: helperAmount), f, p);
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

  factory BackendRoute.simulationTime() {
    Function f = simulationTimeRoute;
    Map<Symbol, dynamic> p = {};
    return BackendRoute(simulationTimeUrl(), f, p);
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
}

/// This class contains a [Queue] which stores all [BackendRoute] that are called
/// through this class. It provides functions to call the last [BackendRoute] in the
/// [routeQueue] and to print the queue.
///
/// All API calls to the backend server should be routed through this class, so
/// that we have a complete list of all server interaction for debugging purposes.
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
  static BackendRoute? peakLast() {
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
