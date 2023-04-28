import 'dart:async';

import 'package:dps.training_shared_files/api/websocket/player_web_socket.dart';
import 'package:dps.training_shared_files/models/web_socket_dto/helper_amount.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'player_web_socket_test.mocks.dart';
import 'web_socket_mock_responses.dart';

@GenerateNiceMocks([
  MockSpec<WebSocketChannel>(),
  MockSpec<StreamSubscription>(),
  MockSpec<WebSocketSink>()
])
void main() {
  final WebSocketChannel mockWebSocketChannel = MockWebSocketChannel();

  // since we can't deep mock classes we have to mock every used classes
  // like [WebSocketSink] and return another mock for the sink
  final WebSocketSink mockWebSocketSink = MockWebSocketSink();
  when(mockWebSocketChannel.sink).thenReturn(mockWebSocketSink);

  final StreamSubscription<String> mockStreamSubscription =
      MockStreamSubscription<String>();
  final PlayerWebSocket playerWebSocket = PlayerWebSocket.internal(
    channel: mockWebSocketChannel,
    streamSubscription: mockStreamSubscription,
    invitationCode: 'test',
    playerToken: "1234",
    initializedHelperAmount: 1,
  );

  group('Testing the PlayerWebSocket', () {
    test('verifying createHelpers only sends json once', () {
      playerWebSocket.createHelpers(amount: 5);
      verify(mockWebSocketChannel.sink).called(1);
      verify(mockWebSocketSink.add(any)).called(1);
      verifyNoMoreInteractions(mockWebSocketChannel);
      verifyNoMoreInteractions(mockWebSocketSink);
    });

    test('test the receiving of helper.own message', () async {
      // we need to listen to the stream before we send the message
      // since it is a broadcast stream the message gets discarded if no one
      // is listening
      final Future<HelperAmount> helperAmount =
          playerWebSocket.helperAmountStream.first;
      playerWebSocket.jsonReceived(playerHelperOwnMockJson);

      expect(await helperAmount, playerHelperOwnMockResult);
    });
  });
}
