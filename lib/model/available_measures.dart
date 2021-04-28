import 'package:bpmanv_app_sharedFiles/api_service/urls.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_measures.freezed.dart';

///  Defines the measures data model.
///   The package freezed is used to auto-generate the code for the immutable data classes annotated
/// via @freezed.
///
///  If you change anything on the data models, make sure to run the following command:
/// flutter pub run build_runner build --delete-conflicting-outputs

/// If you want to rebuild every time you save this file (recommended), run the following command:
/// flutter pub run build_runner watch --delete-conflicting-outputs

/// For more information on the freezed package see the official documentation:
/// https://pub.dev/packages/freezed
///
@freezed
class AvailableMeasures with _$AvailableMeasures {
  const AvailableMeasures._();
  const factory AvailableMeasures(
          {required List<AvailableMeasuresCategory> categories}) =
      _AvailableMeasures;

  factory AvailableMeasures.fromJson(Map<String, dynamic> json) {
    return AvailableMeasures(categories: parseCategories(json));
  }
}

/// Parses multiple categories of available measures in the given [json] into a
/// list of [AvailableMeasuresCategory].
List<AvailableMeasuresCategory> parseCategories(Map<String, dynamic> json) {
  final parsed = json["categories"].cast<Map<String, dynamic>>();
  return parsed
      .map<AvailableMeasuresCategory>(
          (json) => AvailableMeasuresCategory.fromJson(json))
      .toList();
}

/// Model for a category of available measures containing a category name and a
/// List of [AvailableMeasure] belonging to this category.
@freezed
class AvailableMeasuresCategory with _$AvailableMeasuresCategory {
  const AvailableMeasuresCategory._();
  const factory AvailableMeasuresCategory({
    required String name,
    required List<AvailableMeasure> measures,
  }) = _AvailableMeasuresCategory;

  factory AvailableMeasuresCategory.fromJson(Map<String, dynamic> json) {
    return AvailableMeasuresCategory(
        name: json["name"], measures: parseAvailableMeasuresForCategory(json));
  }
}

/// Parses multiple available measures in the given [json] into a
/// list of [AvailableMeasure].
List<AvailableMeasure> parseAvailableMeasuresForCategory(
    Map<String, dynamic> json) {
  final parsed = json["measures"].cast<Map<String, dynamic>>();
  return parsed
      .map<AvailableMeasure>((json) => AvailableMeasure.fromJson(json))
      .toList();
}

/// Model that contains all relevant information of a single [AvailableMeasure].
@freezed
class AvailableMeasure with _$AvailableMeasure {
  const AvailableMeasure._();

  const factory AvailableMeasure({
    required String name,
    required String id,
    required String image,
    required int available_amount,
    required int duration,
    required bool is_applicable,
    required List<AvailableMeasurePrerequisite> prerequisites,
  }) = _AvailableMeasure;

  factory AvailableMeasure.fromJson(Map<String, dynamic> json) {
    return AvailableMeasure(
        name: json["name"],
        id: json["id"],
        image: serverURL + json["image"]["small"],
        available_amount: json["available_amount"],
        duration: json["running_duration"],
        is_applicable: json["is_applicable"],
        prerequisites: parseAvailableMeasuresPrerequisites(
            json) //parseAvailableMeasuresPrerequisites(json),
        );
  }
}

/// Parses multiple prerequisites of an [AvailableMeasure] in the given [json]
/// into a list of [AvailableMeasurePrerequisite].
List<AvailableMeasurePrerequisite> parseAvailableMeasuresPrerequisites(
    Map<String, dynamic> json) {
  final parsed = json["required_measures"].cast<Map<String, dynamic>>();
  return parsed
      .map<AvailableMeasurePrerequisite>(
          (json) => AvailableMeasurePrerequisite.fromJson(json))
      .toList();
}

/// Model that contains all relevant information about a prerequisite of an
/// [AvailableMeasure].
@freezed
class AvailableMeasurePrerequisite with _$AvailableMeasurePrerequisite {
  const AvailableMeasurePrerequisite._();
  const factory AvailableMeasurePrerequisite({
    required String name,
    required String image,
  }) = _AvailableMeasurePrerequisite;
  factory AvailableMeasurePrerequisite.fromJson(Map<String, dynamic> json) {
    return AvailableMeasurePrerequisite(
        name: json["name"], image: serverURL + json["image"]["small"]);
  }
}

/// Model that contains all relevant information about a currently running measure.
@freezed
class RunningMeasure with _$RunningMeasure {
  const RunningMeasure._();
  const factory RunningMeasure({
    required String name,
    required String image_small,
    required String image_original,
    required int start_time,
    required int finish_time,
  }) = _RunningMeasure;
  factory RunningMeasure.fromJson(Map<String, dynamic> json) {
    return RunningMeasure(
        name: json["name"],
        image_small: serverURL + json["image"]["small"],
        image_original: serverURL + json["image"]["original"],
        start_time: json["start_time"],
        finish_time: json["finish_time"]);
  }
}
