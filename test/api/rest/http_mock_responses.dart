import 'package:dps.training_shared_files/api/core/uris.dart';
import 'package:dps.training_shared_files/models/players/players.dart';

const int roomIdMock = 1;

final Uri trainerPlayerListMockUri = getPlayerListUri(roomId: roomIdMock);
const String trainerPlayerListMockJson = '''
{
  "players": [
    {
      "name": "MichelMagSchoki123",
      "helper_count": 2
    },
    {
      "name": "GW-San-89-03-01",
      "helper_count": 6
    }
  ]
}
''';
const PlayerList trainerPlayerListMockResult = PlayerList(
  players: [
    Player(
      name: 'MichelMagSchoki123',
      helper_count: 2,
    ),
    Player(
      name: 'GW-San-89-03-01',
      helper_count: 6,
    ),
  ],
);