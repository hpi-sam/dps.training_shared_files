import 'package:freezed_annotation/freezed_annotation.dart';

part 'scenario.freezed.dart';

/// Defines the scenario data model.
/// The package freezed is used to auto-generate the code for the immutable data classes annotated
/// via @freezed.
///
/// If you change anything on the data models, make sure to run the following command:
/// flutter pub run build_runner build --delete-conflicting-outputs
///
/// If you want to rebuild every time you save this file (recommended), run the following command:
/// flutter pub run build_runner watch --delete-conflicting-outputs
///
/// For more information on the freezed package see the official documentation:
/// https://pub.dev/packages/freezed
///
/// **Note:** Scenario is a very simplified model for testing purposes only and needs a
/// major refactor when scenario settings are actually implemented in the backend.
/// For now this only saves a list of possible triage categories.
@freezed
class Scenario with _$Scenario {
  const factory Scenario({
    required List<String> triageCategories,
  }) = _Scenario;
}
