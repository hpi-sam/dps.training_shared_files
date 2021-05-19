/// Defines a map of predefined urls of the backend server, solely for development
/// purposes.
const Map<String, String> PREDEFINED_URLS = {
  "Deployment-Server": "http://mcisim.eu.pythonanywhere.com/",
  "Lehrstuhl-Server": "http://fb14srv8.hpi.uni-potsdam.de:8000",
  "Localhost": "http://127.0.0.1:8000",
};

String selectedServer = "Lehrstuhl-Server";
String serverURL = PREDEFINED_URLS[selectedServer]!;

/// Sets the severURL to the server with name [serverName]. The [serverName] must
/// be defined in [PREDEFINED_URLS]. Otherwise the Lehrstuhl-Server is chosen as a
/// default.
void selectServer({required String serverName}) {
  selectedServer = serverName;
  serverURL =
      PREDEFINED_URLS[serverName] ?? PREDEFINED_URLS["Lehrstuhl-Server"]!;
}

// configuration of routes to use for server requests.
String patientDataUrl({required int patientID}) =>
    serverURL + '/patients/$patientID/';
String foreignInventoryDataUrl({required int entityID}) =>
    serverURL + '/entities/$entityID/inventory/';
String ownInventoryDataUrl({required int helperNr}) =>
    serverURL + '/own/inventory/helper/$helperNr/';
String inventoryExchangeUrl({required int entityID, required int helperNr}) =>
    serverURL + '/entities/$entityID/inventory/exchange/helper/$helperNr/';
String availableMeasuresUrl({required int patientID, required int helperNr}) =>
    serverURL + '/patients/$patientID/measures/available/helper/$helperNr/';
String startNewMeasureUrl({required int patientID, required int helperNr}) =>
    serverURL + '/patients/$patientID/measures/start/helper/$helperNr/';
String cancelCurrentMeasureUrl({required int helperNr}) =>
    serverURL + '/own/currentmeasure/cancel/helper/$helperNr/';
String appliedMeasuresUrl({required int patientID}) =>
    serverURL + '/patients/$patientID/measures/applied/';
String removeAppliedMeasureUrl(
        {required int patientID,
        required int helperNr,
        required int measureID}) =>
    serverURL +
    '/patients/$patientID/measures/$measureID/remove/helper/$helperNr/';
String triageUrl({required int patientID, required int helperNr}) =>
    serverURL + '/patients/$patientID/triage/helper/$helperNr/';
String playersSignUpUrl() => serverURL + '/players/signup/';
String trainerSignUpUrl() => serverURL + '/trainers/signup/';
String trainerLogInUrl() => serverURL + '/trainers/login/';
String joinRoomUrl({required String invitationCode, required int helperAmount}) =>
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
