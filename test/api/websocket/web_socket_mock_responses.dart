import 'package:dps.training_shared_files/models/web_socket_dto/helper_amount.dart';

const String playerHelperOwnMockJson = '''
{
  "type": "helper.own",
  "content": {
    "amount": 1,
    "ids": [
      123,
      456
    ]
  }
}
''';
const HelperAmount playerHelperOwnMockResult = HelperAmount(
  amount: 1,
  ids: [123, 456],
);