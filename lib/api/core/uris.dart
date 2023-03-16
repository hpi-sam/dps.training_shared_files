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

Uri uncoverPatientUri({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(path: '/patients/$dpsCode/uncover/helper/$helperNr/');

Uri patientDataUri({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(path: '/patients/$dpsCode/helper/$helperNr/');

Uri foreignInventoryDataUri({required String entityId}) =>
    Uri(path: '/entities/$entityId/inventory/');

Uri ownInventoryDataUri({required int helperNr}) =>
    Uri(path: '/own/inventory/helper/$helperNr/');

Uri inventoryExchangeUri({
  required String entityId,
  required int helperNr,
}) =>
    Uri(
      path: '/entities/$entityId/inventory/exchange/helper/$helperNr/',
    );

Uri availableMeasuresUri({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(
      path: '/patients/$dpsCode/measures/available/helper/$helperNr/',
    );

Uri startNewMeasureUri({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(
      path: '/patients/$dpsCode/measures/start/helper/$helperNr/',
    );

Uri cancelCurrentMeasureUri({required int helperNr}) =>
    Uri(path: '/own/currentmeasure/cancel/helper/$helperNr/');

Uri appliedMeasuresUri({required String dpsCode}) =>
    Uri(path: '/patients/$dpsCode/measures/applied/');

Uri removeAppliedMeasureUri({
  required String dpsCode,
  required int helperNr,
  required int measureId,
}) =>
    Uri(
      path: '/patients/$dpsCode/measures/$measureId/remove/helper/$helperNr/',
    );

Uri triageUri({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(path: '/patients/$dpsCode/triage/helper/$helperNr/');

Uri playersSignUpUri() => Uri(path: '/players/signup/');

Uri trainerSignUpUri() => Uri(path: '/trainers/signup/');

Uri trainerLogInUri() => Uri(path: '/trainers/login/');

Uri joinRoomUri({
  required String invitationCode,
  required int helperAmount,
}) =>
    Uri(
      path: '/rooms/$invitationCode/join/helpercount_$helperAmount/',
    );

Uri leaveRoomUri() => Uri(path: '/rooms/leave/');

Uri simulationTimeUri() => Uri(path: '/rooms/time/');

Uri helperIdUri({required int helperNr}) =>
    Uri(path: '/own/id/helper/$helperNr/');

Uri checkHelperBusyUri({required int helperNr}) =>
    Uri(path: '/own/busy/helper/$helperNr/');

Uri helperCountUri() => Uri(path: '/own/helpercount/');

Uri getRoomUri({required int roomId}) => Uri(path: '/rooms/$roomId/');

Uri getPatientListUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/patients/');

Uri getPlayerListUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/players/');

Uri pauseRoomUri() => Uri(path: '/rooms/pause/');

Uri resumeRoomUri() => Uri(path: '/rooms/resume/');

Uri startRoomUri({required int roomId}) => Uri(path: '/rooms/$roomId/start/');

Uri finishRoomUri() => Uri(path: '/rooms/finish/');

Uri changePhaseUri() => Uri(path: '/rooms/changephase/');

Uri changeRoomConfigUri({required int roomId}) =>
    Uri(path: '/rooms/$roomId/change_configuration/');

Uri createRoomUri() => Uri(path: '/rooms/create/');

Uri nextPhaseChangeUri() => Uri(path: '/rooms/phasechange/');

Uri modifyPhaseChangeUri() => Uri(path: '/rooms/phasechange/modify/');

Uri roomStateUri({required int roomId}) => Uri(path: '/rooms/$roomId/state/');

Uri patientDataTrainerUri({required String dpsCode}) =>
    Uri(path: '/patients/$dpsCode/');

Uri addPatientTrainerUri({
  required String dpsCode,
  required int roomId,
}) =>
    Uri(path: '/qrcodes/rooms/$roomId/add/$dpsCode/');

Uri checkoutPatientUri({required String dpsCode}) =>
    Uri(path: '/patients/$dpsCode/checkout/');

Uri addEventUri() => Uri(path: '/rooms/events/add/');

Uri getTriageAccuracyUri({required int roomId}) =>
    Uri(path: '/evaluation/rooms/$roomId/triage/accuracy/');

Uri getExerciseLogUri({required int roomId}) =>
    Uri(path: '/evaluation/rooms/$roomId/logs/');

Uri getActiveRoomUri() => Uri(path: '/rooms/active/');

Uri getQrCodeUri() => Uri(path: '/static/patients.pdf');

Uri webSocketUri({required String invitationCode}) => baseUri.replace(
      scheme: 'ws',
      path: '/rooms/$invitationCode/player/',
    );
