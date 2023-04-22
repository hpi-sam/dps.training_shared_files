import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';

import 'package:mockito/mockito.dart';

import 'http_mock_responses.dart';

class FakeDpsHttpClient extends Fake implements DpsHttpClient {
  @override
  Future<DpsResponse> get({required Uri uri}) {
    if (uri == trainerPlayerListMockUri) {
      return Future.value(
        DpsResponse(
          data: jsonDecode(trainerPlayerListMockJson),
          requestOptions: RequestOptions(),
        ),
      );
    } else {
      throw UnimplementedError();
    }
  }

  @override
  Future<DpsResponse> post({required Uri uri, Object? data}) {
    if (false) {
    } else {
      throw UnimplementedError();
    }
  }
}
