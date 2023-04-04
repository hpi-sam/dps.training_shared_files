// Keep in mind that all the state that is defined here is global state!

/// Defines a map of predefined Uris of the backend servers
const Map<String, String> servers = {
  "production-server": "http://www.dps.training/",
  "local-server": "http://localhost:8000/",
};
String selectedServerKey = "local-server";
Uri baseUri = Uri.parse(servers[selectedServerKey]!);

// Following configure all possible routes
// according to backend specifications

Uri playersSignUpUri() =>
    Uri(path: '/players/signup/');

Uri trainerSignUpUri() =>
    Uri(path: '/trainers/signup/');

Uri trainerLogInUri() =>
    Uri(path: '/trainers/login/');

Uri getRoomUri({required int roomId}) => Uri(path: '/rooms/$roomId/');

Uri getPatientListUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/patients/');

Uri getPlayerListUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/players/');

Uri pauseRoomUri({required int roomId}) => Uri(path: '/rooms/$roomId/pause/');

Uri resumeRoomUri({required int roomId}) => Uri(path: '/rooms/$roomId/resume/');

Uri startRoomUri({required int roomId}) => Uri(path: '/rooms/$roomId/start/');

Uri finishRoomUri({required int roomId}) => Uri(path: '/rooms/$roomId/finish/');

Uri getRoomConfigUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/configuration/');

Uri changeRoomConfigUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/configuration/modify/');

Uri createRoomUri() => Uri(path: '/rooms/create/');

Uri performPhaseChangeUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/phasechange/perform/');

Uri getPhaseChangeTimeUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/phasechange/');

Uri modifyPhaseChangeTimeUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/phasechange/modify/');

Uri getRoomStateAndTimeUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/state/');

Uri patientDataTrainerUri({required int roomId, required String dpsCode}) =>
    Uri(path: 'rooms/$roomId/patients/$dpsCode/');

Uri addPatientTrainerUri({required int roomId, required String dpsCode}) =>
    Uri(path: 'rooms/$roomId/patients/$dpsCode/add/');

Uri checkoutPatientUri({required int roomId, required String dpsCode}) =>
    Uri(path: 'rooms/$roomId/patients/$dpsCode/checkout/');

Uri addLogEventUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/events/add/');

Uri getTriageAccuracyUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/evaluation/triageaccuracy/');

Uri getExerciseLogUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/events/');

Uri getOwnRoomsUri() =>
    Uri(path: '/rooms/own/');

Uri getPatientQrCodeUri() =>
    Uri(path: '/static/patients_a4.pdf');

Uri webSocketUri({required String invitationCode}) => baseUri.replace(
      scheme: 'ws',
      path: '/rooms/$invitationCode/player/',
    );

// // /////////////////////////////////////////////////////////////// // //
// // //////////          DEPRECATED TRAINER URIs          ////////// // //
// // /////////////////////////////////////////////////////////////// // //

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri uncoverPatientUri({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(path: '/patients/$dpsCode/uncover/helper/$helperNr/');

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri patientDataUri({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(path: '/patients/$dpsCode/helper/$helperNr/');

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri foreignInventoryDataUri({required String entityId}) =>
    Uri(path: '/entities/$entityId/inventory/');

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri ownInventoryDataUri({required int helperNr}) =>
    Uri(path: '/own/inventory/helper/$helperNr/');

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri inventoryExchangeUri({
  required String entityId,
  required int helperNr,
}) =>
    Uri(
      path: '/entities/$entityId/inventory/exchange/helper/$helperNr/',
    );

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri availableMeasuresUri({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(
      path: '/patients/$dpsCode/measures/available/helper/$helperNr/',
    );

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri startNewMeasureUri({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(
      path: '/patients/$dpsCode/measures/start/helper/$helperNr/',
    );

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri cancelCurrentMeasureUri({required int helperNr}) =>
    Uri(path: '/own/currentmeasure/cancel/helper/$helperNr/');

Uri appliedMeasuresUri({required String dpsCode}) =>
    Uri(path: '/patients/$dpsCode/measures/applied/');

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri removeAppliedMeasureUri({
  required String dpsCode,
  required int helperNr,
  required int measureId,
}) =>
    Uri(
      path: '/patients/$dpsCode/measures/$measureId/remove/helper/$helperNr/',
    );

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri triageUri({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(path: '/patients/$dpsCode/triage/helper/$helperNr/');

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri joinRoomUri({
  required String invitationCode,
  required int helperAmount,
}) =>
    Uri(path: '/rooms/$invitationCode/join/helpercount_$helperAmount/');

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri leaveRoomUri() => Uri(path: '/rooms/leave/');

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri simulationTimeUri() => Uri(path: '/rooms/time/');

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri helperIdUri({required int helperNr}) =>
    Uri(path: '/own/id/helper/$helperNr/');

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri checkHelperBusyUri({required int helperNr}) =>
    Uri(path: '/own/busy/helper/$helperNr/');

@Deprecated("Deprecated! URL belongs to unused REST player API.")
Uri helperCountUri() => Uri(path: '/own/helpercount/');