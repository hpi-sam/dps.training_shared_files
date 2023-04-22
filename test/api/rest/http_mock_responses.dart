import 'package:dps.training_shared_files/api/core/uris.dart';

final Uri trainerPlayerListMockUri = getPlayerListUri(roomId: 1);
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
