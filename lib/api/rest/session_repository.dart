// Dart imports:

// Project imports:
import 'package:dps.training_shared_files/api/core/urls.dart';
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';
import 'package:dps.training_shared_files/models/room/room_state.dart';
import 'package:dps.training_shared_files/models/running_measure/running_measure.dart';
import 'package:dps.training_shared_files/models/simulation_time/simulation_time.dart';

class SessionRepository {
  final DpsHttpClient client;

  SessionRepository({required this.client});

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> doesRoomExistRoute({required int roomID}) async {
    final Uri uri = getRoomUrl(roomId: roomID);

    // TODO this route was declared to be accessible to all users (no auth required) but why???
    final DpsResponse response = await client.get(uri: uri);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> joinRoomRoute({
    required String invitationCode,
    required int helperAmount,
  }) async {
    final Uri uri = joinRoomUrl(
      invitationCode: invitationCode,
      helperAmount: helperAmount,
    );

    await client.get(uri: uri);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<SimulationTime> simulationTimeRoute() async {
    final Uri uri = simulationTimeUrl();

    final DpsResponse response = await client.get(uri: uri);
    return SimulationTime.fromJson(response.data!);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<RoomState> roomStateRoute({required int roomID}) async {
    final Uri uri = roomStateUrl(roomId: roomID);

    final DpsResponse response = await client.get(uri: uri);
    final String state = response.data!['state'];

    return RoomState.values.byName(state);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<int> fetchOwnEntityIdRoute({required int helperNr}) async {
    final Uri uri = helperIdUrl(helperNr: helperNr);

    final DpsResponse response = await client.get(uri: uri);
    final int id = response.data!['id'];

    return id;
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> leaveRoomRoute() async {
    final Uri uri = leaveRoomUrl();

    await client.get(uri: uri);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<RunningMeasure> checkHelperBusyRoute({
    required int helperNr,
    String? dpsCode,
  }) async {
    final Uri uri = checkHelperBusyUrl(helperNr: helperNr);

    final DpsResponse response = await client.get(uri: uri);
    final bool isBusy = response.data!['is_busy'];

    if (isBusy) {
      final Map<String, dynamic> measureJson =
          response.data!['current_measure'];
      return RunningMeasure.fromJson(json: measureJson);
    } else {
      return const RunningMeasure.none();
    }
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<int> getHelperCountRoute() async {
    final Uri uri = helperCountUrl();

    final DpsResponse response = await client.get(uri: uri);
    final int helperCount = response.data!['helper_count'];

    return helperCount;
  }
}
