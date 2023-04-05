import 'dart:async';
import 'dart:convert';

import 'package:dps.training_shared_files/models/available_measures/available_measures.dart';
import 'package:dps.training_shared_files/models/inventory/inventory.dart';
import 'package:dps.training_shared_files/models/patient/patient.dart';
import 'package:dps.training_shared_files/models/running_measure/running_measure.dart';
import 'package:dps.training_shared_files/models/web_socket_dto/helper_amount.dart';
import 'package:dps.training_shared_files/models/web_socket_dto/inventory_update.dart';
import 'package:dps.training_shared_files/models/web_socket_dto/measure_applied_canceled.dart';
import 'package:dps.training_shared_files/models/web_socket_dto/measure_applied_update.dart';
import 'package:dps.training_shared_files/models/web_socket_dto/patient_triage_update.dart';
import 'package:dps.training_shared_files/models/web_socket_dto/simulation_time.dart';
import 'package:meta/meta.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:dps.training_shared_files/api/websocket/player_web_socket_methods.dart';
import 'package:dps.training_shared_files/api/websocket/dps_web_socket.dart';

/// A WebSocket which is used by the player to communicate with the server
class PlayerWebSocket extends DpsWebSocket with PlayerWebSocketMethods {
  /// The player token which identifies and authenticates the player
  final String playerToken;

  /// The amount of helpers the server returned when WebSocket was started
  final int initializedHelperAmount;

  // helper amount
  final StreamController<HelperAmount> _helperAmountController =
      StreamController.broadcast();

  Stream<HelperAmount> get helperAmountStream => _helperAmountController.stream;

  // helper and inventory
  final StreamController<Inventory> _ownInventoryAllController =
      StreamController.broadcast();
  final StreamController<InventoryUpdate> _ownInventoryUpdateController =
      StreamController.broadcast();
  final StreamController<Inventory> _otherInventoryAllController =
      StreamController.broadcast();
  final StreamController<InventoryUpdate> _otherInventoryUpdateController =
      StreamController.broadcast();

  Stream<Inventory> get ownInventoryAllStream =>
      _ownInventoryAllController.stream;
  Stream<InventoryUpdate> get ownInventoryUpdateStream =>
      _ownInventoryUpdateController.stream;
  Stream<Inventory> get otherInventoryAllStream =>
      _otherInventoryAllController.stream;
  Stream<InventoryUpdate> get otherInventoryUpdateStream =>
      _otherInventoryUpdateController.stream;

  // patient
  final StreamController<Patient> _patientController =
      StreamController.broadcast();
  final StreamController<PatientTriageUpdate> _patientTriageUpdateController =
      StreamController.broadcast();

  Stream<Patient> get patientStream => _patientController.stream;
  Stream<PatientTriageUpdate> get patientTriageUpdateStream =>
      _patientTriageUpdateController.stream;

  //measures
  final StreamController<RunningMeasure> _runningMeasureController =
      StreamController.broadcast();
  final StreamController<RunningMeasure> _measureFinishedController =
      StreamController.broadcast();
  final StreamController<AvailableMeasures> _availableMeasuresController =
      StreamController.broadcast();
  final StreamController<MeasureAppliedUpdate> _measureAppliedUpdateController =
      StreamController.broadcast();
  final StreamController<MeasureAppliedCanceled>
      _measureAppliedCanceledController = StreamController.broadcast();
  final StreamController<RunningMeasure> _currentMeasureCanceledController =
      StreamController.broadcast();

  Stream<RunningMeasure> get runningMeasureStream =>
      _runningMeasureController.stream;
  Stream<RunningMeasure> get measureFinishedStream =>
      _measureFinishedController.stream;
  Stream<AvailableMeasures> get availableMeasuresStream =>
      _availableMeasuresController.stream;
  Stream<MeasureAppliedUpdate> get measureAppliedUpdateStream =>
      _measureAppliedUpdateController.stream;
  Stream<MeasureAppliedCanceled> get measureAppliedCanceledStream =>
      _measureAppliedCanceledController.stream;
  Stream<RunningMeasure> get currentMeasureCanceledStream =>
      _currentMeasureCanceledController.stream;

  // room state
  final StreamController<SimulationTime> _simulationTimeController =
      StreamController.broadcast();

  Stream<SimulationTime> get simulationTimeStream =>
      _simulationTimeController.stream;

  @protected
  PlayerWebSocket.internal({
    required WebSocketChannel channel,
    required StreamSubscription<String> streamSubscription,
    required String invitationCode,
    required this.playerToken,
    required this.initializedHelperAmount,
  }) : super.internal(
          channel: channel,
          streamSubscription: streamSubscription,
          invitationCode: invitationCode,
        );

  @override
  void jsonReceived(String encodedJson) {
    final Map<String, dynamic> json = jsonDecode(encodedJson);

    switch (json['type']) {
      // helper amount
      case 'helper.own':
        _processOwnHelper(json);
        break;

      // helper and inventory
      case 'helper.inventory':
        _processHelperInventory(json);
        break;
      case 'own.inventory.update':
        _processInventoryOwnUpdate(json);
        break;
      case 'other.inventory.all':
        _processInventoryOtherAll(json);
        break;
      case 'other.inventory.update':
        _processInventoryOtherUpdate(json);
        break;

      // patient
      case 'patient.information':
        _processPatientInformation(json);
        break;
      case 'patient.triage.update':
        _processPatientTriageUpdate(json);
        break;

      // measures
      // TODO change to 'patient.measure.current' once the server is updated
      case 'current.measure':
        _processMeasureCurrent(json);
        break;
      case 'measure.finished':
        _processMeasureFinished(json);
        break;
      case 'available.measures':
        _processMeasureAvailable(json);
        break;
      case 'applied.measures.update':
        _processMeasureAppliedUpdate(json);
        break;
      case 'applied.measures.canceled':
        _processMeasureAppliedCanceled(json);
        break;
      case 'success':
        _processMeasureCurrentCanceled(json);
        break;

      // room
      case 'room.state':
        _processRoomState(json);
        break;

      default:
        throw UnsupportedError('Unknown message type: ${json['type']}\n\nMessage: $encodedJson');
    }
  }

  void _processOwnHelper(Map<String, dynamic> json) {
    final HelperAmount helperAmount = HelperAmount.fromJson(json);
    _helperAmountController.add(helperAmount);
  }

  void _processHelperInventory(Map<String, dynamic> json) {
    final Inventory inventory = Inventory.fromJson(json);
    _ownInventoryAllController.add(inventory);
  }

  void _processInventoryOwnUpdate(Map<String, dynamic> json) {
    final InventoryUpdate inventoryUpdate = InventoryUpdate.fromJson(json);
    _ownInventoryUpdateController.add(inventoryUpdate);
  }

  void _processInventoryOtherAll(Map<String, dynamic> json) {
    final Inventory otherInventory = Inventory.fromJson(json);
    _otherInventoryAllController.add(otherInventory);
  }

  void _processInventoryOtherUpdate(Map<String, dynamic> json) {
    final InventoryUpdate inventoryUpdate = InventoryUpdate.fromJson(json);
    _otherInventoryUpdateController.add(inventoryUpdate);
  }

  void _processPatientInformation(Map<String, dynamic> json) {
    final Patient patient = Patient.fromJson(json);
    _patientController.add(patient);
  }

  void _processPatientTriageUpdate(Map<String, dynamic> json) {
    final PatientTriageUpdate patientTriageUpdate =
        PatientTriageUpdate.fromJson(json);
    _patientTriageUpdateController.add(patientTriageUpdate);
  }

  void _processMeasureCurrent(Map<String, dynamic> json) {
    final RunningMeasure runningMeasure = RunningMeasure.fromJson(json);
    _runningMeasureController.add(runningMeasure);
  }

  void _processMeasureFinished(Map<String, dynamic> json) {
    final int helperNr = json['helper'];
    final RunningMeasure runningMeasure =
        RunningMeasure.none(helperNr: helperNr);

    _measureFinishedController.add(runningMeasure);
  }

  void _processMeasureAvailable(Map<String, dynamic> json) {
    final AvailableMeasures availableMeasures =
        AvailableMeasures.fromJson(json);
    _availableMeasuresController.add(availableMeasures);
  }

  void _processMeasureAppliedUpdate(Map<String, dynamic> json) {
    final MeasureAppliedUpdate measureAppliedUpdate =
        MeasureAppliedUpdate.fromJson(json);
    _measureAppliedUpdateController.add(measureAppliedUpdate);
  }

  void _processMeasureAppliedCanceled(Map<String, dynamic> json) {
    final MeasureAppliedCanceled measureAppliedCanceled =
        MeasureAppliedCanceled.fromJson(json);
    _measureAppliedCanceledController.add(measureAppliedCanceled);
  }

  void _processMeasureCurrentCanceled(Map<String, dynamic> json) {
    // TODO make the type more specific - backend question
    if (json['request'] != 'cancel.measure') return;

    final int helperNumber = json['helper'];
    final RunningMeasure runningMeasure =
        RunningMeasure.none(helperNr: helperNumber);

    _currentMeasureCanceledController.add(runningMeasure);
  }

  void _processRoomState(Map<String, dynamic> json) {
    final SimulationTime simulationTime = SimulationTime.fromJson(json);
    _simulationTimeController.add(simulationTime);
  }
}
