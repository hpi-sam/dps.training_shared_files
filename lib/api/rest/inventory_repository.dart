// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:dps.training_shared_files/api/core/exceptions.dart';
import 'package:dps.training_shared_files/api/core/uris.dart';
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';
import 'package:dps.training_shared_files/models/inventory/inventory.dart';

class InventoryRepository {
  final DpsHttpClient client;

  InventoryRepository({required this.client});

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<Inventory> fetchOwnInventory({required int helperNr}) async {
    final Uri uri = ownInventoryDataUri(helperNr: helperNr);
    final DpsResponse response = await client.get(uri: uri);
    return Inventory.fromJson(response.data!);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails. Also it's
  /// possible that the function throws a [EntityException] when the body
  /// of the response is empty.
  Future<Inventory> fetchForeignInventory({
    required String entityID,
  }) async {
    final Uri uri = foreignInventoryDataUri(entityId: entityID);
    final DpsResponse response = await client.get(uri: uri);

    // TODO check if that is actually the case. The API specification is
    // not clear about this.
    if (response.data == null) {
      throw EntityException('The QR code maybe invalid.');
    }

    return Inventory.fromJson(response.data!);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<bool> saveInventoryChanges({
    required String entityID,
    required int helperNr,
    required String materialID,
    required int amount,
  }) async {
    final Uri uri = inventoryExchangeUri(
      entityId: entityID,
      helperNr: helperNr,
    );
    final Map<String, dynamic> json = {
      'id': materialID,
      'amount': amount,
    };

    // TODO talk to backend team about this. A 406 means something different!
    try {
      await client.post(
        uri: uri,
        data: json,
      );
    } on DioError catch (dioError) {
      if (dioError.response?.statusCode == 406) {
        return false;
      } else {
        rethrow;
      }
    }

    return true;
  }
}
