// Dart imports:
import 'dart:convert';
import 'dart:io';

// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

// Project imports:
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';

void main() {
  test('testing stuff out', () async {
    
    // 6e1564897b7df1e494a78152bad796220d3d12c3
    DpsHttpClient client = await DpsHttpClient.trainerLogIn(username: 'SomeTestUser', password: 'SomeTestPassword');

    final response1 = await client.post<Map<String, dynamic>>(uri: Uri(path: '/rooms/create/'));
    
    
    final response2 = await client.get<Map<String, dynamic>>(uri: Uri(path: '/rooms/active/'));



    print(client.token);
  });
}
