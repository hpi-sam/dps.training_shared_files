import 'package:dps.training_shared_files/api/rest/trainer_repository.dart';
import 'package:dps.training_shared_files/models/players/players.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fake_dps_http_client.dart';
import 'http_mock_responses.dart';

void main() {
  late final FakeDpsHttpClient fakeDpsHttpClient = FakeDpsHttpClient();
  late final TrainerRepository trainerRepository =
      TrainerRepository(client: fakeDpsHttpClient);

  group('Testing the trainer_repository', () {
    test('testing the getPlayerList function', () async {
      PlayerList playerList =
          await trainerRepository.getPlayerList(roomId: roomIdMock);
      expect(playerList, trainerPlayerListMockResult);
    });
  });
}
