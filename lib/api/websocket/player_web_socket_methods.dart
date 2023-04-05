import 'package:dps.training_shared_files/api/websocket/dps_web_socket.dart';

mixin PlayerWebSocketMethods on DpsWebSocket {
  void createHelpers({required int amount}) {
    final Map<String, dynamic> json = {
      'type': 'helper.create',
      'amount': amount,
    };

    send(json);
  }

  void subscribeToPatient({
    required int helperNr,
    required String dpsCode,
  }) {
    final Map<String, dynamic> json = {
      'type': 'patient.subscribe',
      'helper': helperNr,
      'dps_code': dpsCode
    };

    send(json);
  }

  void applyTriage({
    required int helperNr,
    required String triageCategory,
  }) {
    final Map<String, dynamic> json = {
      'type': 'patient.triage.apply',
      'helper': helperNr,
      'triage_color': triageCategory
    };

    send(json);
  }

  void getAvailableMeasures({required int helperNr}) {
    final Map<String, dynamic> json = {
      'type': 'patient.measures.available',
      'helper': helperNr
    };

    send(json);
  }

  void applyMeasure({
    required int helperNr,
    required String measureID,
  }) {
    final Map<String, dynamic> json = {
      'type': 'patient.measure.apply',
      'helper': helperNr,
      'measure_id': measureID
    };

    send(json);
  }

  void cancelMeasure({required int helperNr}) {
    final Map<String, dynamic> json = {
      'type': 'patient.measure.cancel',
      'helper': helperNr
    };

    send(json);
  }

  void removeMeasure({
    required int helperNr,
    required int measureID,
  }) {
    final Map<String, dynamic> json = {
      'type': 'patient.measure.remove',
      'helper': helperNr,
      'measure_id': measureID
    };

    send(json);
  }

  void openHelperInventory({
    required int helperNr,
    required int otherHelperNr,
  }) {
    final Map<String, dynamic> json = {
      'type': 'inventory.helper.open',
      'helper': helperNr,
      'other_helper': otherHelperNr,
    };

    send(json);
  }

  void openContainerInventory({
    required int helperNr,
    required int containerSet,
    required int containerInstance,
  }) {
    final Map<String, dynamic> json = {
      'type': 'container.inventory.open',
      'helper': helperNr,
      'container_set': containerSet,
      'container_instance': containerInstance,
    };

    send(json);
  }

  void exchangeMaterial({
    required int helperNr,
    required String materialID,
    required int amount,
  }) {
    final Map<String, dynamic> json = {
      'type': 'inventory.exchange',
      'helper': helperNr,
      'material_id': materialID,
      'amount': amount
    };

    send(json);
  }

  void resendOwnInventory({required int helperNr}) {
    final Map<String, dynamic> json = {
      'type': 'helper.inventory.resend',
      'helper': helperNr
    };

    send(json);
  }
}
