import 'package:dps.training_shared_files/api/websocket/dps_web_socket.dart';

mixin PlayerWebSocketMethods on DpsWebSocket {
  void createHelpers({required int amount}) {
    final Map<String, dynamic> json = {
      "type": "helper.create",
      "amount": amount,
    };

    send(json);
  }

  void subscribeToPatient({
    required int helperNr,
    required String dpsCode,
  }) {
    final Map<String, dynamic> json = {
      "type": "patient.subscribe",
      "helper_nr": helperNr,
      "dps_code": dpsCode
    };

    send(json);
  }

  void applyTriage({
    required int helperNr,
    required String triageCategory,
  }) {
    final Map<String, dynamic> json = {
      "type": "patient.triage",
      "helper_nr": helperNr,
      "triage_color": triageCategory
    };

    send(json);
  }

  void getAvailableMeasures({required int helperNr}) {
    final Map<String, dynamic> json = {
      "type": "available.measures",
      "helper_nr": helperNr
    };

    send(json);
  }

  void applyMeasure({
    required int helperNr,
    required String measureID,
  }) {
    final Map<String, dynamic> json = {
      "type": "patient.apply",
      "helper_nr": helperNr,
      "measure_id": measureID
    };

    send(json);
  }

  void cancelMeasure({required int helperNr}) {
    final Map<String, dynamic> json = {
      "type": "cancel.measure",
      "helper_nr": helperNr
    };

    send(json);
  }

  void removeMeasure({
    required int helperNr,
    required int measureID,
  }) {
    final Map<String, dynamic> json = {
      "type": "remove.material",
      "helper_nr": helperNr,
      "measure_id": measureID
    };

    send(json);
  }

  void openInventory({
    required int helperNr,
    required String inventoryID,
  }) {
    final Map<String, dynamic> json = {
      "type": "inventory.open",
      "helper_nr": helperNr,
      "other_entity_key": inventoryID
    };

    send(json);
  }

  void exchangeMaterial({
    required int helperNr,
    required String materialID,
    required int amount,
  }) {
    final Map<String, dynamic> json = {
      "type": "inventory.exchange",
      "helper_nr": helperNr,
      "material_id": materialID,
      "amount": amount
    };

    send(json);
  }

  void resendOwnInventory({required int helperNr}) {
    final Map<String, dynamic> json = {
      "type": "resend.inventory",
      "helper_nr": helperNr
    };

    send(json);
  }
}
