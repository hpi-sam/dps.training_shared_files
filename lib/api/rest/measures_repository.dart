// Project imports:
import 'package:dps.training_shared_files/api/core/uris.dart';
import 'package:dps.training_shared_files/api/rest/dps_http_client.dart';
import 'package:dps.training_shared_files/models/applied_measures/applied_measures.dart';
import 'package:dps.training_shared_files/models/available_measures/available_measures.dart';
import 'package:dps.training_shared_files/models/running_measure/running_measure.dart';

class MeasuresRepository {
  final DpsHttpClient client;

  MeasuresRepository({required this.client});

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<RunningMeasure> removeAppliedMeasure({
    required String dpsCode,
    required int helperNr,
    required int measureID,
  }) async {
    final Uri uri = removeAppliedMeasureUri(
      dpsCode: dpsCode,
      helperNr: helperNr,
      measureId: measureID,
    );

    final DpsResponse response = await client.get(uri: uri);
    return RunningMeasure.fromJson(response.data!);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<AvailableMeasures> fetchAvailableMeasures({
    required String dpsCode,
    required int helperNr,
  }) async {
    final Uri uri = availableMeasuresUri(
      dpsCode: dpsCode,
      helperNr: helperNr,
    );

    final DpsResponse response = await client.get(uri: uri);
    return AvailableMeasures.fromJson(response.data!);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<AppliedMeasures> fetchAppliedMeasures({
    required String dpsCode,
  }) async {
    final Uri uri = appliedMeasuresUri(dpsCode: dpsCode);
    final DpsResponse response = await client.get(uri: uri);
    return AppliedMeasures.fromJson(response.data!);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<RunningMeasure> startNewMeasure({
    required String dpsCode,
    required int helperNr,
    required String measureTypeID,
  }) async {
    final Uri uri = startNewMeasureUri(
      dpsCode: dpsCode,
      helperNr: helperNr,
    );
    final Map<String, dynamic> json = {'id': measureTypeID};

    final DpsResponse response = await client.post(
      uri: uri,
      data: json,
    );

    return RunningMeasure.fromJson(response.data!);
  }

  /// TODO add description
  ///
  /// The function can throw an [DioException] if the request fails.
  Future<void> cancelCurrentMeasure({required int helperNr}) async {
    final Uri uri = cancelCurrentMeasureUri(helperNr: helperNr);

    await client.get(uri: uri);
  }
}
