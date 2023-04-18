// Dart imports:

// Project imports:
import 'package:dps.training_shared_files/api/core/uris.dart';
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';
import 'package:dps.training_shared_files/models/room/room.dart';
import 'package:dps.training_shared_files/models/running_measure/running_measure.dart';
import 'package:dps.training_shared_files/models/web_socket_dto/simulation_time.dart';

class SessionRepository {
  final DpsHttpClient client;

  SessionRepository({required this.client});

  /// TODO add description
  ///
  /// The function can throw a [DioException] if the request fails.
  Future<void> doesRoomExist({required int roomId}) async {
    final Uri uri = getRoomUri(roomId: roomId);

    // TODO this route was declared to be accessible to all users (no auth required) but why???
    final DpsResponse response = await client.get(uri: uri);
  }

  /// TODO add description
  ///
  /// The function can throw a [DioException] if the request fails.
  Future<void> joinRoom({
    required String invitationCode,
    required int helperAmount,
  }) async {
    final Uri uri = joinRoomUri(
      invitationCode: invitationCode,
      helperAmount: helperAmount,
    );

    await client.get(uri: uri);
  }

  /// TODO add description
  ///
  /// The function can throw a [DioException] if the request fails.
  Future<SimulationTime> simulationTimeAndState({required int roomId}) async {
    final Uri uri = getRoomStateAndTimeUri(roomId: roomId);

    final DpsResponse response = await client.get(uri: uri);

    return SimulationTime.fromJson({'content': response.data!});
  }

  /// TODO add description
  ///
  /// The function can throw a [DioException] if the request fails.
  Future<int> fetchOwnEntityId({required int helperNr}) async {
    final Uri uri = helperIdUri(helperNr: helperNr);

    final DpsResponse response = await client.get(uri: uri);
    final int id = response.data!['id'];

    return id;
  }

  /// TODO add description
  ///
  /// The function can throw a [DioException] if the request fails.
  Future<void> leaveRoom() async {
    final Uri uri = leaveRoomUri();

    await client.get(uri: uri);
  }

  /// TODO add description
  ///
  /// The function can throw a [DioException] if the request fails.
  Future<RunningMeasure> checkHelperBusy({
    required int helperNr,
    String? dpsCode,
  }) async {
    final Uri uri = checkHelperBusyUri(helperNr: helperNr);

    final DpsResponse response = await client.get(uri: uri);
    final bool isBusy = response.data!['is_busy'];

    if (isBusy) {
      final Map<String, dynamic> measureJson =
          response.data!['current_measure'];
      return RunningMeasure.fromJson(measureJson);
    } else {
      return RunningMeasure.none(helperNr: helperNr);
    }
  }

  /// TODO add description
  ///
  /// The function can throw a [DioException] if the request fails.
  Future<int> getHelperCount() async {
    final Uri uri = helperCountUri();

    final DpsResponse response = await client.get(uri: uri);
    final int helperCount = response.data!['helper_count'];

    return helperCount;
  }
}
