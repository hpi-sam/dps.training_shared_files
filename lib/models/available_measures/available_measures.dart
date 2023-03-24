// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:dps.training_shared_files/api/core/uris.dart';

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
  const factory AvailableMeasures({
    required int helperNr,
    required String patientDpsCode,
    required List<AvailableMeasuresCategory> categories,
  }) = _AvailableMeasures;

  factory AvailableMeasures.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> jsonContentPart = json['content'];
    
    return AvailableMeasures(
      helperNr: json['helper_nr'],
      patientDpsCode: json['patient_dps_code'],
      categories: parseCategories(jsonContentPart),
    );
  }

  /// Parses multiple categories of available measures in the given [json] into a
  /// list of [AvailableMeasuresCategory].
  static List<AvailableMeasuresCategory> parseCategories(
      Map<String, dynamic> json) {
    final parsed = json["categories"].cast<Map<String, dynamic>>();
    return parsed
        .map<AvailableMeasuresCategory>(
            (json) => AvailableMeasuresCategory.fromJson(json))
        .toList();
  }
}

/// Model for a category of available measures containing a category name and a
/// List of [AvailableMeasure] belonging to this category.
@freezed
class AvailableMeasuresCategory with _$AvailableMeasuresCategory {
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
  final List parsedjson = json["measures"].cast<Map<String, dynamic>>();
  List<AvailableMeasure> parsed = parsedjson
      .map<AvailableMeasure>((json) => AvailableMeasure.fromJson(json))
      .toList();
  parsed.sort((AvailableMeasure a, AvailableMeasure b) {
    return a.name.toLowerCase().compareTo(b.name.toLowerCase());
  });
  return parsed;
}

/// Model that contains all relevant information of a single [AvailableMeasure].
@freezed
class AvailableMeasure with _$AvailableMeasure {
  const factory AvailableMeasure({
    required String name,
    required String id,
    required Uri image,
    required int duration,
    required bool requires_two_helpers,
  }) = _AvailableMeasure;

  factory AvailableMeasure.fromJson(Map<String, dynamic> json) {
    return AvailableMeasure(
      name: json["name"],
      id: json["id"],
      image: baseUri.replace(path: '${json["image"]["small"]}'),
      duration: json["running_duration"],
      requires_two_helpers: json["requires_two_helpers"],
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
    required Uri image,
  }) = _AvailableMeasurePrerequisite;

  factory AvailableMeasurePrerequisite.fromJson(Map<String, dynamic> json) {
    return AvailableMeasurePrerequisite(
      name: json["name"],
      image: baseUri.replace(path: '${json["image"]["small"]}'),
    );
  }
}
