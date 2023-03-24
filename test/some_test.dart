// Package imports:
import 'dart:convert';

import 'package:dps.training_shared_files/api/websocket/player_web_socket.dart';
import 'package:dps.training_shared_files/models/inventory/inventory.dart';
import 'package:dps.training_shared_files/models/web_socket_dto/helper_amount.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';
import 'package:dps.training_shared_files/api/websocket/dps_web_socket.dart';

void main() {
  Map<String, dynamic> json = {
    'amount': 1,
    'ids': [1, 1, 1,]
  };

  String encodedJson = """{"type": "helper.inventory", "content": {"entity_type": "Helfer", "entity_name": "Player81 #0", "categories": []}, "helper": 75}""";
  Map<String, dynamic> decodedJson = jsonDecode(encodedJson);

  Inventory inventory = Inventory.fromJson(decodedJson);

  print(inventory);
}
