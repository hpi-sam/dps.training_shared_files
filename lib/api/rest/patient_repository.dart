// Project imports:
import 'package:dps.training_shared_files/api/core/urls.dart';
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';
import 'package:dps.training_shared_files/models/running_measure/running_measure.dart';

class PatientRepository {
  final DpsHttpClient client;

  PatientRepository({required this.client});

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<RunningMeasure> uncoverPatientRoute({
    required String dpsCode,
    required int helperNr,
  }) async {
    final Uri uri = uncoverPatientUrl(
      dpsCode: dpsCode,
      helperNr: helperNr,
    );

    final DpsResponse response = await client.get(uri: uri);
    return RunningMeasure.fromJson(json: response.data!);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> updateTriageRoute({
    required String dpsCode,
    required int helperNr,
    required String triageCategory,
  }) async {
    final Uri uri = triageUrl(
      dpsCode: dpsCode,
      helperNr: helperNr,
    );
    final Map<String, dynamic> json = {
      'category': triageCategory,
    };

    await client.post(
      uri: uri,
      data: json,
    );
  }
}
