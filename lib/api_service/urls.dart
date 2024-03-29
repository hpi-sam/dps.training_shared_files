/// Defines a map of predefined urls of the backend server, solely for development
/// purposes.
const Map<String, String> PREDEFINED_URLS = {
  "Deployment-Server": "http://www.dps.training/",
  "Lehrstuhl-Server": "http://fb14srv8.hpi.uni-potsdam.de:8000",
  "Localhost": "http://127.0.0.1:8000",
};

String selectedServer = "Deployment-Server";
String serverURL = PREDEFINED_URLS[selectedServer]!;

/// Sets the severURL to the server with name [serverName]. The [serverName] must
/// be defined in [PREDEFINED_URLS]. Otherwise the Lehrstuhl-Server is chosen as a
/// default.
void selectServer({required String serverName}) {
  selectedServer = serverName;
  serverURL =
      PREDEFINED_URLS[serverName] ?? PREDEFINED_URLS["Lehrstuhl-Server"]!;
}

// configuration of routes to use for server requests. API specification can be found
// here: https://github.com/hpi-sam/BPMANV-Server/blob/dev/api_spezification.md
String uncoverPatientUrl({required String dpsCode, required int helperNr}) =>
    serverURL + '/patients/$dpsCode/uncover/helper/$helperNr/';
String patientDataUrl({required String dpsCode, required int helperNr}) =>
    serverURL + '/patients/$dpsCode/helper/$helperNr/';
String foreignInventoryDataUrl({required String entityID}) =>
    serverURL + '/entities/$entityID/inventory/';
String ownInventoryDataUrl({required int helperNr}) =>
    serverURL + '/own/inventory/helper/$helperNr/';
String inventoryExchangeUrl(
        {required String entityID, required int helperNr}) =>
    serverURL + '/entities/$entityID/inventory/exchange/helper/$helperNr/';
String availableMeasuresUrl({required String dpsCode, required int helperNr}) =>
    serverURL + '/patients/$dpsCode/measures/available/helper/$helperNr/';
String startNewMeasureUrl({required String dpsCode, required int helperNr}) =>
    serverURL + '/patients/$dpsCode/measures/start/helper/$helperNr/';
String cancelCurrentMeasureUrl({required int helperNr}) =>
    serverURL + '/own/currentmeasure/cancel/helper/$helperNr/';
String appliedMeasuresUrl({required String dpsCode}) =>
    serverURL + '/patients/$dpsCode/measures/applied/';
String removeAppliedMeasureUrl(
        {required String dpsCode,
        required int helperNr,
        required int measureID}) =>
    serverURL +
    '/patients/$dpsCode/measures/$measureID/remove/helper/$helperNr/';
String triageUrl({required String dpsCode, required int helperNr}) =>
    serverURL + '/patients/$dpsCode/triage/helper/$helperNr/';
String playersSignUpUrl() => serverURL + '/players/signup/';
String trainerSignUpUrl() => serverURL + '/trainers/signup/';
String trainerLogInUrl() => serverURL + '/trainers/login/';
String joinRoomUrl(
        {required String invitationCode, required int helperAmount}) =>
    serverURL + '/rooms/$invitationCode/join/helpercount_$helperAmount/';
String leaveRoomUrl() => serverURL + '/rooms/leave/';
String simulationTimeUrl() => serverURL + '/rooms/time/';
String helperIDUrl({required int helperNr}) =>
    serverURL + '/own/id/helper/$helperNr/';
String checkHelperBusyUrl({required int helperNr}) =>
    serverURL + '/own/busy/helper/$helperNr/';
String helperCountUrl() => serverURL + '/own/helpercount/';
String getRoomUrl({required int roomID}) => serverURL + '/rooms/$roomID/';
String getPatientListUrl({required int roomID}) =>
    serverURL + '/rooms/$roomID/patients/';
String getPlayerListUrl({required int roomID}) =>
    serverURL + '/rooms/$roomID/players/';
String pauseRoomUrl() => serverURL + '/rooms/pause/';
String resumeRoomUrl() => serverURL + '/rooms/resume/';
String startRoomUrl({required int roomID}) =>
    serverURL + '/rooms/$roomID/start/';
String finishRoomUrl() => serverURL + '/rooms/finish/';
String changePhaseUrl() => serverURL + '/rooms/changephase/';
String changeRoomConfigUrl({required int roomID}) =>
    serverURL + '/rooms/$roomID/change_configuration/';
String createRoomUrl() => serverURL + '/rooms/create/';
String nextPhaseChangeUrl() => serverURL + '/rooms/phasechange/';
String modifyPhaseChangeUrl() => serverURL + '/rooms/phasechange/modify/';
String roomStateUrl({required int roomID}) =>
    serverURL + '/rooms/$roomID/state/';
String patientDataTrainerUrl({required String dpsCode}) =>
    serverURL + '/patients/$dpsCode/';
String addPatientTrainerUrl({required String dpsCode, required int roomID}) =>
    serverURL + '/qrcodes/rooms/$roomID/add/$dpsCode/';
String checkoutPatientUrl({required String dpsCode}) =>
    serverURL + '/patients/$dpsCode/checkout/';
String addEventUrl() => serverURL + '/rooms/events/add/';
String getTriageAccuracyUrl({required int roomID}) =>
    serverURL + '/evaluation/rooms/$roomID/triage/accuracy/';
String getExerciseLogUrl({required int roomID}) =>
    serverURL + '/evaluation/rooms/$roomID/logs/';
String getActiveRoomUrl() => serverURL + '/rooms/active/';
String getQrCodeUrl() => serverURL + '/static_images/patients.pdf';
