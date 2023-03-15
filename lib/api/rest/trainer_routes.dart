// Project imports:
import 'package:dps.training_shared_files/api/core/urls.dart';
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';
import 'package:dps.training_shared_files/models/exercise_log/exercise_log.dart';
import 'package:dps.training_shared_files/models/players/players.dart';
import 'package:dps.training_shared_files/models/room/room.dart';
import 'package:dps.training_shared_files/models/simplified_patients/simplified_patients.dart';
import 'package:dps.training_shared_files/models/triage/triage_accuracy.dart';

class TrainerRepository {
  final DpsHttpClient client;

  TrainerRepository({required this.client});

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<PlayerList> getPlayerListRoute({required int roomId}) async {
    final Uri uri = getPlayerListUrl(roomId: roomId);

    final DpsResponse response = await client.get(uri: uri);

    return PlayerList.fromJson(response.data!);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<SimplifiedPatientList> getPatientListRoute({
    required int roomID,
  }) async {
    final Uri uri = getPatientListUrl(roomId: roomID);

    final DpsResponse response = await client.get(uri: uri);

    return SimplifiedPatientList.fromJson(response.data!);
  }

  /// Pauses the current room.
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> pauseRoomRoute() async {
    final Uri uri = pauseRoomUrl();

    await client.get(uri: uri);
  }

  /// Resumes the current room;
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> resumeRoomRoute() async {
    final Uri uri = resumeRoomUrl();

    await client.get(uri: uri);
  }

  /// Start the room with the given [roomId].
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> startRoomRoute({required int roomId}) async {
    // TODO why does this route need the roomId while the resume and pause routes don't?
    final Uri uri = startRoomUrl(roomId: roomId);

    await client.get(uri: uri);
  }

  /// Finish the current room.
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> finishRoomRoute() async {
    final Uri uri = finishRoomUrl();

    await client.get(uri: uri);
  }

  /// Change the phase of the current room.
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> changePhaseRoute() async {
    final Uri uri = changePhaseUrl();

    await client.get(uri: uri);
  }

  /// Creates a new room with the given [room] configuration.
  ///
  /// If [room] is null, the default configuration will be used.
  /// The function can throw an [DioException] if the request fails.
  Future<Room> createRoomRoute({
    int? defaultPhaseLength,
    int? waitingTimePatient,
    int? expiringTimePatient,
  }) async {
    final bool allNull = defaultPhaseLength == null &&
        waitingTimePatient == null &&
        expiringTimePatient == null;
    final bool allNotNull = defaultPhaseLength != null &&
        waitingTimePatient != null &&
        expiringTimePatient != null;
    assert(
      allNull || allNotNull,
      'All parameters must be null or none of them must be null',
    );

    final Uri uri = createRoomUrl();
    Map<String, dynamic> json = {};
    if (allNotNull) {
      json = {
        'default_phase_length': defaultPhaseLength,
        'waiting_time_patient': waitingTimePatient,
        'expiring_time_patient': expiringTimePatient,
      };
    }

    final DpsResponse response = await client.post(
      uri: uri,
      data: json,
    );

    return Room.fromJson(response.data!);
  }

  /// Returns the next phase change in seconds.
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<int> nextPhaseChangeRoute() async {
    final Uri uri = nextPhaseChangeUrl();

    final DpsResponse response = await client.get(uri: uri);

    return response.data!['next_phase_change'];
  }

  /// Modifies when the next phase change will be executed in seconds.
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<int> modifyPhaseChangeRoute({required int seconds}) async {
    final Uri uri = modifyPhaseChangeUrl();
    final Map<String, dynamic> json = {
      'seconds': seconds,
    };

    final DpsResponse response = await client.post(
      uri: uri,
      data: json,
    );

    return response.data!['next_phase_change'];
  }

  /// Changes the room configuration with the given [room] configuration.
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> changeRoomConfigRoute({
    required int roomId,
    required int defaultPhaseLength,
    required int waitingTimePatient,
    required int expiringTimePatient,
  }) async {
    final Uri uri = changeRoomConfigUrl(roomId: roomId);
    Map<String, dynamic> json = {
      'default_phase_length': defaultPhaseLength,
      'waiting_time_patient': waitingTimePatient,
      'expiring_time_patient': expiringTimePatient,
    };

    await client.post(
      uri: uri,
      data: json,
    );
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> addPatientTrainerRoute({
    required String dpsCode,
    required int roomId,
  }) async {
    final Uri uri = addPatientTrainerUrl(
      dpsCode: dpsCode,
      roomId: roomId,
    );

    await client.get(uri: uri);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> checkoutPatientRoute({required String dpsCode}) async {
    final Uri uri = checkoutPatientUrl(dpsCode: dpsCode);

    await client.get(uri: uri);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> addEventRoute({required String type, String? details}) async {
    final Uri uri = addEventUrl();
    final Map<String, dynamic> json = {
      'type': type,
      if (details != null) 'details': details,
    };

    await client.post(
      uri: uri,
      data: json,
    );
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<TriageAccuracy> fetchTriageAccuracyRoute({
    required int roomId,
  }) async {
    final Uri uri = getTriageAccuracyUrl(roomId: roomId);

    final DpsResponse response = await client.get(uri: uri);

    return TriageAccuracy.fromJson(response.data!);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<ExerciseLog> fetchExerciseLogRoute({required int roomId}) async {
    final Uri uri = getExerciseLogUrl(roomId: roomId);

    final DpsResponse response = await client.get(uri: uri);

    return ExerciseLog.fromJson(response.data!);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<Room> getActiveRoomRoute() async {
    final Uri uri = getActiveRoomUrl();

    final DpsResponse response = await client.get(uri: uri);

    return Room.fromJson(response.data!);
  }
}
