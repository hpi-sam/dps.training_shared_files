/// Defines a map of predefined urls of the backend server, solely for development
/// purposes.
const Map<String, String> PREDEFINED_URLS = {
  "Deployment-Server": "http://www.dps.training/",
  "Localhost": "localhost:8000",
};

String selectedServer = "Localhost";
String serverURL = PREDEFINED_URLS[selectedServer]!;

/// Sets the severURL to the server with name [serverName]. The [serverName] must
/// be defined in [PREDEFINED_URLS]. Otherwise the Lehrstuhl-Server is chosen as a
/// default.
void selectServer({required String serverName}) {
  selectedServer = serverName;
  serverURL =
      PREDEFINED_URLS[serverName] ?? PREDEFINED_URLS["Lehrstuhl-Server"]!;
}

String getServerUrlHttp() => 'http://' + serverURL;
String getServerUrlWebsocket() => 'ws://' + serverURL;

// configuration of routes to use for server requests. API specification can be found
// here: https://github.com/hpi-sam/BPMANV-Server/blob/dev/api_spezification.md
String uncoverPatientUrl({required String dpsCode, required int helperNr}) =>
    getServerUrlHttp() + '/patients/$dpsCode/uncover/helper/$helperNr/';
String patientDataUrl({required String dpsCode, required int helperNr}) =>
    getServerUrlHttp() + '/patients/$dpsCode/helper/$helperNr/';
String foreignInventoryDataUrl({required String entityID}) =>
    getServerUrlHttp() + '/entities/$entityID/inventory/';
String ownInventoryDataUrl({required int helperNr}) =>
    getServerUrlHttp() + '/own/inventory/helper/$helperNr/';
String inventoryExchangeUrl(
        {required String entityID, required int helperNr}) =>
    getServerUrlHttp() +
    '/entities/$entityID/inventory/exchange/helper/$helperNr/';
String availableMeasuresUrl({required String dpsCode, required int helperNr}) =>
    getServerUrlHttp() +
    '/patients/$dpsCode/measures/available/helper/$helperNr/';
String startNewMeasureUrl({required String dpsCode, required int helperNr}) =>
    getServerUrlHttp() + '/patients/$dpsCode/measures/start/helper/$helperNr/';
String cancelCurrentMeasureUrl({required int helperNr}) =>
    getServerUrlHttp() + '/own/currentmeasure/cancel/helper/$helperNr/';
String appliedMeasuresUrl({required String dpsCode}) =>
    getServerUrlHttp() + '/patients/$dpsCode/measures/applied/';
String removeAppliedMeasureUrl(
        {required String dpsCode,
        required int helperNr,
        required int measureID}) =>
    getServerUrlHttp() +
    '/patients/$dpsCode/measures/$measureID/remove/helper/$helperNr/';
String triageUrl({required String dpsCode, required int helperNr}) =>
    getServerUrlHttp() + '/patients/$dpsCode/triage/helper/$helperNr/';
String playersSignUpUrl() => getServerUrlHttp() + '/players/signup/';
String trainerSignUpUrl() => getServerUrlHttp() + '/trainers/signup/';
String trainerLogInUrl() => getServerUrlHttp() + '/trainers/login/';
String joinRoomUrl(
        {required String invitationCode, required int helperAmount}) =>
    getServerUrlHttp() +
    '/rooms/$invitationCode/join/helpercount_$helperAmount/';
String leaveRoomUrl() => getServerUrlHttp() + '/rooms/leave/';
String simulationTimeUrl() => getServerUrlHttp() + '/rooms/time/';
String helperIDUrl({required int helperNr}) =>
    getServerUrlHttp() + '/own/id/helper/$helperNr/';
String checkHelperBusyUrl({required int helperNr}) =>
    getServerUrlHttp() + '/own/busy/helper/$helperNr/';
String helperCountUrl() => getServerUrlHttp() + '/own/helpercount/';
String getRoomUrl({required int roomID}) =>
    getServerUrlHttp() + '/rooms/$roomID/';
String getPatientListUrl({required int roomID}) =>
    getServerUrlHttp() + '/rooms/$roomID/patients/';
String getPlayerListUrl({required int roomID}) =>
    getServerUrlHttp() + '/rooms/$roomID/players/';
String pauseRoomUrl() => getServerUrlHttp() + '/rooms/pause/';
String resumeRoomUrl() => getServerUrlHttp() + '/rooms/resume/';
String startRoomUrl({required int roomID}) =>
    getServerUrlHttp() + '/rooms/$roomID/start/';
String finishRoomUrl() => getServerUrlHttp() + '/rooms/finish/';
String changePhaseUrl() => getServerUrlHttp() + '/rooms/changephase/';
String changeRoomConfigUrl({required int roomID}) =>
    getServerUrlHttp() + '/rooms/$roomID/change_configuration/';
String createRoomUrl() => getServerUrlHttp() + '/rooms/create/';
String nextPhaseChangeUrl() => getServerUrlHttp() + '/rooms/phasechange/';
String modifyPhaseChangeUrl() =>
    getServerUrlHttp() + '/rooms/phasechange/modify/';
String roomStateUrl({required int roomID}) =>
    getServerUrlHttp() + '/rooms/$roomID/state/';
String patientDataTrainerUrl({required String dpsCode}) =>
    getServerUrlHttp() + '/patients/$dpsCode/';
String addPatientTrainerUrl({required String dpsCode, required int roomID}) =>
    getServerUrlHttp() + '/qrcodes/rooms/$roomID/add/$dpsCode/';
String checkoutPatientUrl({required String dpsCode}) =>
    getServerUrlHttp() + '/patients/$dpsCode/checkout/';
String addEventUrl() => getServerUrlHttp() + '/rooms/events/add/';
String getTriageAccuracyUrl({required int roomID}) =>
    getServerUrlHttp() + '/evaluation/rooms/$roomID/triage/accuracy/';
String getExerciseLogUrl({required int roomID}) =>
    getServerUrlHttp() + '/evaluation/rooms/$roomID/logs/';
String getActiveRoomUrl() => getServerUrlHttp() + '/rooms/active/';
String getQrCodeUrl() => getServerUrlHttp() + '/static/patients.pdf';

String connectWebsocketUrl({required String invitationCode}) =>
    getServerUrlWebsocket() + '/rooms/$invitationCode/player/';
