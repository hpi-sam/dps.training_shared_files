// Keep in mind that all the state that is defined here is global state!

/// Defines a map of predefined urls of the backend servers
const Map<String, String> servers = {
  "production-server": "http://www.dps.training/",
  "local-server": "http://localhost:8000/",
};
String selectedServerKey = "local-server";
Uri baseUri = Uri.parse(servers[selectedServerKey]!);

// Following configure all possible routes
// according to backend specifications

Uri uncoverPatientUrl({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(path: '/patients/$dpsCode/uncover/helper/$helperNr/');

Uri patientDataUrl({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(path: '/patients/$dpsCode/helper/$helperNr/');

Uri foreignInventoryDataUrl({required String entityID}) =>
    Uri(path: '/entities/$entityID/inventory/');

Uri ownInventoryDataUrl({required int helperNr}) =>
    Uri(path: '/own/inventory/helper/$helperNr/');

Uri inventoryExchangeUrl({
  required String entityID,
  required int helperNr,
}) =>
    Uri(
        path: '/entities/$entityID/inventory/exchange/helper/$helperNr/');

Uri availableMeasuresUrl({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(
        path: '/patients/$dpsCode/measures/available/helper/$helperNr/');

Uri startNewMeasureUrl({
  required String dpsCode,
  required int helperNr,
}) =>
    Uri(
        path: '/patients/$dpsCode/measures/start/helper/$helperNr/');

Uri cancelCurrentMeasureUrl({required int helperNr}) =>
    Uri(path: '/own/currentmeasure/cancel/helper/$helperNr/');

Uri appliedMeasuresUrl({required String dpsCode}) =>
    Uri(path: '/patients/$dpsCode/measures/applied/');

Uri removeAppliedMeasureUrl({
  required String dpsCode,
  required int helperNr,
  required int measureID,
}) =>
    Uri(
        path:
            '/patients/$dpsCode/measures/$measureID/remove/helper/$helperNr/');

Uri triageUrl({required String dpsCode, required int helperNr,}) =>
    Uri(path: '/patients/$dpsCode/triage/helper/$helperNr/');

Uri playersSignUpUrl() => Uri(path: '/players/signup/');

Uri trainerSignUpUrl() => Uri(path: '/trainers/signup/');

Uri trainerLogInUrl() => Uri(path: '/trainers/login/');

Uri joinRoomUrl({
  required String invitationCode,
  required int helperAmount,
}) =>
    Uri(
        path: '/rooms/$invitationCode/join/helpercount_$helperAmount/');

Uri leaveRoomUrl() => Uri(path: '/rooms/leave/');

Uri simulationTimeUrl() => Uri(path: '/rooms/time/');

Uri helperIDUrl({required int helperNr}) =>
    Uri(path: '/own/id/helper/$helperNr/');

Uri checkHelperBusyUrl({required int helperNr}) =>
    Uri(path: '/own/busy/helper/$helperNr/');

Uri helperCountUrl() => Uri(path: '/own/helpercount/');

Uri getRoomUrl({required int roomID}) =>
    Uri(path: '/rooms/$roomID/');

Uri getPatientListUrl({required int roomID}) =>
    Uri(path: '/rooms/$roomID/patients/');

Uri getPlayerListUrl({required int roomID}) =>
    Uri(path: '/rooms/$roomID/players/');

Uri pauseRoomUrl() => Uri(path: '/rooms/pause/');

Uri resumeRoomUrl() => Uri(path: '/rooms/resume/');

Uri startRoomUrl({required int roomID}) =>
    Uri(path: '/rooms/$roomID/start/');

Uri finishRoomUrl() => Uri(path: '/rooms/finish/');

Uri changePhaseUrl() => Uri(path: '/rooms/changephase/');

Uri changeRoomConfigUrl({required int roomID}) =>
    Uri(path: '/rooms/$roomID/change_configuration/');

Uri createRoomUrl() => Uri(path: '/rooms/create/');

Uri nextPhaseChangeUrl() => Uri(path: '/rooms/phasechange/');

Uri modifyPhaseChangeUrl() =>
    Uri(path: '/rooms/phasechange/modify/');

Uri roomStateUrl({required int roomID}) =>
    Uri(path: '/rooms/$roomID/state/');

Uri patientDataTrainerUrl({required String dpsCode}) =>
    Uri(path: '/patients/$dpsCode/');

Uri addPatientTrainerUrl({
  required String dpsCode,
  required int roomID,
}) =>
    Uri(path: '/qrcodes/rooms/$roomID/add/$dpsCode/');

Uri checkoutPatientUrl({required String dpsCode}) =>
    Uri(path: '/patients/$dpsCode/checkout/');

Uri addEventUrl() => Uri(path: '/rooms/events/add/');

Uri getTriageAccuracyUrl({required int roomID}) =>
    Uri(path: '/evaluation/rooms/$roomID/triage/accuracy/');

Uri getExerciseLogUrl({required int roomID}) =>
    Uri(path: '/evaluation/rooms/$roomID/logs/');

Uri getActiveRoomUrl() => Uri(path: '/rooms/active/');

Uri getQrCodeUrl() => Uri(path: '/static/patients.pdf');

Uri webSocketUrl({required String invitationCode}) => baseUri.replace(
      scheme: 'ws',
      path: '/rooms/$invitationCode/player/',
    );
