/// Defines a map of predefined urls of the backend server, solely for development
/// purposes.
const Map<String, String> PREDEFINED_URLS = {
        "Deployment-Server": "https://mcisim.eu.pythonanywhere.com/",
        "Lehrstuhl-Server": "http://fb14srv8.hpi.uni-potsdam.de:8000",
        "Localhost": "http://127.0.0.1:8000"
};

String serverURL = PREDEFINED_URLS["Lehrstuhl-Server"]!;

/// Sets the severURL to the server with name [serverName]. The [serverName] must
/// be defined in [PREDEFINED_URLS].
void setActiveServerName({required String serverName}) {
        serverURL = PREDEFINED_URLS[serverName] ?? PREDEFINED_URLS["Localhost"]!;
}

/// Sets the serverURL to [url].
void setActiveServerURL({required String url}) {
        serverURL = url;
}

// configuration of routes to use for server requests.
String patientDataUrl({required int patientID}) =>
    serverURL + '/patients/$patientID/';
String foreignInventoryDataUrl({required int entityID}) =>
    serverURL + '/entities/$entityID/inventory/';
String ownInventoryDataUrl({required int helperNr}) =>
    serverURL + '/own/inventory/helper_$helperNr/';
String inventoryExchangeUrl({required int entityID, required int helperNr}) =>
    serverURL + '/entities/$entityID/inventory/exchange/helper_$helperNr/';
String availableMeasuresUrl({required int patientID, required int helperNr}) =>
    serverURL + '/patients/$patientID/measures/available/helper_$helperNr/';
String startNewMeasureUrl({required int patientID, required int helperNr}) =>
    serverURL + '/patients/$patientID/measures/start/helper_$helperNr/';
String cancelCurrentMeasureUrl(
        {required int patientID, required int helperNr}) =>
    serverURL + '/patients/$patientID/measures/cancel/helper_$helperNr/';
String appliedMeasuresUrl({required int patientID}) =>
    serverURL + '/patients/$patientID/measures/applied/';
String removeAppliedMeasureUrl(
        {required int patientID,
        required int helperNr,
        required int measureID}) =>
    serverURL +
    '/patients/$patientID/measures/$measureID/remove/helper_$helperNr/';
String triageUrl({required int patientID, required int helperNr}) =>
    serverURL + '/patients/$patientID/triage/helper_$helperNr/';
String signUpUrl() => serverURL + '/signup/';
String joinRoomUrl({required int roomID, required int helperAmount}) =>
    serverURL + '/rooms/$roomID/join/helpercount_$helperAmount/';
String leaveRoomUrl() => serverURL + '/rooms/leave/';
String simulationTimeUrl() => serverURL + '/rooms/time/';
String helperIDUrl({required int helperNr}) =>
    serverURL + '/own/id/helper_$helperNr/';
String checkHelperBusyUrl({required int helperNr}) =>
    serverURL + '/own/busy/helper_$helperNr/';
String helperCountUrl() => serverURL + '/own/helpercount/';
