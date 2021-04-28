import 'dart:convert';

import 'package:bpmanv_app_sharedFiles/api_service/session.dart';
import 'package:bpmanv_app_sharedFiles/api_service/urls.dart';
import 'package:bpmanv_app_sharedFiles/model/inventory.dart';
import 'package:bpmanv_app_sharedFiles/model/inventory_exchange.dart';

final own_inventory_mock = {
  "entitytype": "Helfer",
  "categories": [
    {
      "name": "Kreislauf",
      "materials": [
        {
          "name": "Rettungsdecke",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "-1"
        },
        {
          "name": "maschinelle Beatmung",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "20 min. 0 sek."
        },
      ]
    },
    {
      "name": "Trauma/Chirurgie",
      "materials": [
        {
          "name": "Sauerstoff",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "-1"
        },
        {
          "name": "Fuß-/Hand-Absaugpumpe",
          "image": "/static/01.jpg/",
          "amount": 5,
          "duration": "30 min. 0 sek."
        },
      ]
    },
    {
      "name": "Transport",
      "materials": [
        {
          "name": "Trage",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "-1"
        },
        {
          "name": "Trage 2",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "-1"
        },
        {
          "name": "Trage",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "-1"
        },
        {
          "name": "Trage 2",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "-1"
        },
        {
          "name": "Trage",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "-1"
        },
        {
          "name": "Trage 2",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "5 min. 0 sek.",
        },
      ]
    },
  ]
};

final foreign_inventory_mock = {
  "entitytype": "Helfer",
  "categories": [
    {
      "name": "Kreislauf",
      "materials": [
        {
          "name": "Rettungsdecke",
          "image": "/static/01.jpg/",
          "amount": 6,
          "duration": ""
        },
        {
          "name": "maschinelle Beatmung",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "20 Min"
        },
      ]
    },
    {
      "name": "Trauma/Chirurgie",
      "materials": [
        {
          "name": "Sauerstoff",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": ""
        },
        {
          "name": "Fuß-/Hand-Absaugpumpe",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "30 Min"
        },
      ]
    },
    {
      "name": "Transport",
      "materials": [
        {
          "name": "Trage",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": ""
        },
        {
          "name": "Trage 2",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": ""
        },
        {
          "name": "Trage",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": ""
        },
        {
          "name": "Trage 2",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": ""
        },
        {
          "name": "Trage",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": ""
        },
        {
          "name": "Trage 2",
          "image": "/static/01.jpg/",
          "amount": 0,
          "duration": "5 Minuten"
        },
      ]
    },
  ]
};

Future<Inventory> fetchOwnInventoryMock({required int helperNr}) async {
  return Inventory.fromJson(own_inventory_mock);
}

Future<Inventory> fetchForeignInventoryMock({required int entityID}) async {
  return Inventory.fromJson(foreign_inventory_mock);
}

Future<Inventory> fetchOwnInventoryRoute({required int helperNr}) async {
  try {
    final response = await Session.get(ownInventoryDataUrl(helperNr: helperNr));
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return Inventory.fromJson(responseJson);
    } else {
      throw Exception(
          "Error ${response.statusCode} - Could not load your inventory.");
    }
  } on Exception catch (e) {
    print("ERROR FETCHING INVENTORY: " + e.toString());
    throw (e);
  }
}

Future<Inventory> fetchForeignInventoryRoute({required int entityID}) async {
  try {
    final response =
        await Session.get(foreignInventoryDataUrl(entityID: entityID));
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return Inventory.fromJson(responseJson);
    } else {
      if (response.statusCode == 404) {
        // error is in German because it might be relevant to the player.
        throw Exception(
            "Error ${response.statusCode} - Das Inventar der Entität ${entityID} kann nicht geladen werden. "
            "Womöglich ist diese Entität nicht in der Datenbank vorhanden. Bitte"
            " stelle sicher, dass der gescannte QR-Code korrekt ist.");
      }
      throw Exception(
          "Error ${response.statusCode} - Could not load the inventory of entity ${entityID}.");
    }
  } on Exception catch (e) {
    print("ERROR FETCHING INVENTORY: " + e.toString());
    throw (e);
  }
}

/// sends request for material exchange. Returns true if successful,
/// false if the requested amount exceeds the available amount of corresponding inventory
Future<bool> saveExchangeInventoryRoute(
    {required int entityID,
    required int helperNr,
    required InventoryExchange inventoryExchange}) async {
  try {
    var inventory = inventoryExchange.toJson();
    final response = await Session.post(
        inventoryExchangeUrl(entityID: entityID, helperNr: helperNr),
        jsonEncode(inventory));

    if (response.statusCode == 200)
      return true;
    else if (response.statusCode == 406)
      return false;
    else {
      throw Exception(
          "Error ${response.statusCode} - Could not save inventory changes.");
    }
  } on Exception catch (e) {
    print("ERROR SAVING INVENTORY EXCHANGE: " + e.toString());
    throw (e);
  }
}
