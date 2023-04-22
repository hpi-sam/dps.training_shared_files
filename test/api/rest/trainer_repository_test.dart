import 'package:dps.training_shared_files/api/rest/trainer_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'fake_dps_http_client.dart';
import 'http_mock_responses.dart';

void main() {
  late final FakeDpsHttpClient fakeDpsHttpClient;
  late final TrainerRepository trainerRepository;

  setUp(() {
    fakeDpsHttpClient = FakeDpsHttpClient();
    trainerRepository = TrainerRepository(client: fakeDpsHttpClient);
  });

  group('Testing the trainer_repository', () {
    test('Testing the getPlayerList function', () {
      
    });
   });
}