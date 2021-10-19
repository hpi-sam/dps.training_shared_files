// Dart imports:
import 'dart:convert';

// Project imports:
import 'package:bpmanv_app_sharedFiles/api_service/session.dart';
import 'package:bpmanv_app_sharedFiles/api_service/urls.dart';
import 'package:bpmanv_app_sharedFiles/model/inventory/inventory.dart';

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
  "entity_type": "Materialbehältnis",
  "categories": [
    {"name": "Immobilisation", "materials": []},
    {
      "name": "Atmung",
      "materials": [
        {
          "id": "097587ad-e371-4b89-9aa9-94ab52373746",
          "name": "Guedeltubus",
          "image": {
            "original": "/images/initial/guedeltubus.JPG",
            "small": "/images/initial/guedeltubus.JPG.256x256_q85_crop.jpg"
          },
          "amount": 5,
          "duration": 0
        },
        {
          "id": "6187fa2e-40fb-4aba-90f3-5581b887eeed",
          "name": "Beatmung",
          "image": {
            "original": "/images/initial/beatmung.JPG",
            "small": "/images/initial/beatmung.JPG.256x256_q85_crop.jpg"
          },
          "amount": 3,
          "duration": 0
        },
        {
          "id": "82499fe6-af54-4c92-8bb4-6240c827cb7d",
          "name": "Sauerstoff",
          "image": {
            "original": "/static_images/default.png",
            "small": "/static_images/default_small.png"
          },
          "amount": 2,
          "duration": 0
        },
        {
          "id": "bcd073d0-15eb-4121-8a75-f7bbeb009c1a",
          "name": "Laryngoskop",
          "image": {
            "original": "/images/initial/laryngoskop.JPG",
            "small": "/images/initial/laryngoskop.JPG.256x256_q85_crop.jpg"
          },
          "amount": 5,
          "duration": 0
        }
      ]
    },
    {
      "name": "Kreislauf",
      "materials": [
        {
          "id": "d517174f-4261-4fa7-b201-e416c332b49d",
          "name": "Infusion+Besteck -Vollelektrolyt-",
          "image": {
            "original": "/static_images/default.png",
            "small": "/static_images/default_small.png"
          },
          "amount": 3,
          "duration": 0
        },
        {
          "id": "78f7962d-101c-49aa-bbc0-e2e87b58621c",
          "name": "Turniquet",
          "image": {
            "original": "/static_images/default.png",
            "small": "/static_images/default_small.png"
          },
          "amount": 3,
          "duration": 0
        },
        {
          "id": "4d13efbb-703b-4963-83f8-86f3987e8147",
          "name": "i.V. Zugang",
          "image": {
            "original": "/images/initial/iv_zugang.JPG",
            "small": "/images/initial/iv_zugang.JPG.256x256_q85_crop.jpg"
          },
          "amount": 4,
          "duration": 0
        },
        {
          "id": "727253dc-0f88-4374-ad44-24a46a9fb482",
          "name": "EKG / Defi / RR / SpO2 Monitoring",
          "image": {
            "original": "/images/initial/ekg.JPG",
            "small": "/images/initial/ekg.JPG.256x256_q85_crop.jpg"
          },
          "amount": 0,
          "duration": 0
        },
        {
          "id": "be36141a-9f1f-4bee-bc1e-db3b4a51f26f",
          "name": "Druckverband",
          "image": {
            "original": "/images/initial/druckverband.JPG",
            "small": "/images/initial/druckverband.JPG.256x256_q85_crop.jpg"
          },
          "amount": 0,
          "duration": 0
        }
      ]
    },
    {
      "name": "Trauma/Chirurgie",
      "materials": [
        {
          "id": "4218c896-4c1c-42a3-b05a-b92c846cb16b",
          "name": "Wundversorgung klein",
          "image": {
            "original": "/images/initial/wundversorgung_klein.JPG",
            "small":
                "/images/initial/wundversorgung_klein.JPG.256x256_q85_crop.jpg"
          },
          "amount": 3,
          "duration": 0
        },
        {
          "id": "3ac1a7ae-223d-40fd-a83b-6304603c60c1",
          "name": "Wundversorgung groß",
          "image": {
            "original": "/images/initial/wundversorgung_gross.JPG",
            "small":
                "/images/initial/wundversorgung_gross.JPG.256x256_q85_crop.jpg"
          },
          "amount": 4,
          "duration": 0
        }
      ]
    },
    {
      "name": "Medikamente",
      "materials": [
        {
          "id": "0c6ebe8d-5f68-4129-9479-bbf96b7abdbe",
          "name": "Adrenalin & NaCl",
          "image": {
            "original": "/static_images/default.png",
            "small": "/static_images/default_small.png"
          },
          "amount": 3,
          "duration": 100
        }
      ]
    },
    {
      "name": "Sonstiges",
      "materials": [
        {
          "id": "69232710-8495-4b39-86c0-61961c054dc2",
          "name": "Rettungsdecke",
          "image": {
            "original": "/images/initial/rettungsdecke.JPG",
            "small": "/images/initial/rettungsdecke.JPG.256x256_q85_crop.jpg"
          },
          "amount": 9,
          "duration": 0
        }
      ]
    }
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
      print(responseJson.toString());
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

Future<Inventory> fetchForeignInventoryRoute({required String entityID}) async {
  try {
    final response =
        await Session.get(foreignInventoryDataUrl(entityID: entityID));
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      if (responseJson != null)
        return Inventory.fromJson(responseJson);
      else
        throw Exception(
            "Error ${response.statusCode} - Das Inventar der Entität ${entityID} kann nicht geladen werden. "
            "Womöglich ist diese Entität nicht in der Datenbank vorhanden. Bitte"
            " stelle sicher, dass der gescannte QR-Code korrekt ist.");
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
Future<bool> saveInventoryChangesRoute(
    {required String entityID,
    required int helperNr,
    required String materialID,
    required int amount}) async {
  try {
    var json = {
      "id": materialID,
      "amount": amount,
    };
    final response = await Session.post(
        inventoryExchangeUrl(entityID: entityID, helperNr: helperNr),
        jsonEncode(json));

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
