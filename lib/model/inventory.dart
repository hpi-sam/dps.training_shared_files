// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/api_service/urls.dart';

part 'inventory.freezed.dart';

///  Defines the inventory data model.
///  The package freezed is used to auto-generate the code for the immutable data classes annotated
/// via @freezed.
///
///  If you change anything on the data models, make sure to run the following command:
/// flutter pub run build_runner build --delete-conflicting-outputs

/// If you want to rebuild every time you save this file (recommended), run the following command:
/// flutter pub run build_runner watch --delete-conflicting-outputs

/// For more information on the freezed package see the official documentation:
/// https://pub.dev/packages/freezed
@freezed
class Inventory with _$Inventory {
  const Inventory._();
  const factory Inventory({required List<DPSMaterialCategory> categories}) =
      _Inventory;

  factory Inventory.fromJson(Map<String, dynamic> json) {
    return Inventory(categories: parseCategories(json));
  }
}

/// Parses multiple categories of materials in the given [json]
/// into a list of [DPSMaterialCategory].
List<DPSMaterialCategory> parseCategories(Map<String, dynamic> json) {
  final parsed = json["categories"].cast<Map<String, dynamic>>();
  return parsed
      .map<DPSMaterialCategory>((json) => DPSMaterialCategory.fromJson(json))
      .toList();
}

/// Model of a category of materials containing a category name and a List of
/// [DPSMaterial] belonging to this category.
@freezed
class DPSMaterialCategory with _$DPSMaterialCategory {
  const DPSMaterialCategory._();
  const factory DPSMaterialCategory(
      {required String name,
      required List<DPSMaterial> items}) = _DPSMaterialCategory;

  factory DPSMaterialCategory.fromJson(Map<String, dynamic> json) {
    return DPSMaterialCategory(
        name: json["name"], items: parseDPSMaterialForCategory(json));
  }
}

/// Parses multiple materials in the given [json] into a list of [DPSMaterial].
List<DPSMaterial> parseDPSMaterialForCategory(Map<String, dynamic> json) {
  final parsed = json["materials"].cast<Map<String, dynamic>>();

  return parsed.map<DPSMaterial>((json) => DPSMaterial.fromJson(json)).toList();
}

/// Model that contains all relevant information of a single [DPSMaterial].
@freezed
class DPSMaterial with _$DPSMaterial {
  const DPSMaterial._();
  const factory DPSMaterial({
    required String name,
    required String image_small,
    required String image_original,
    required int amount,
    required int duration,
  }) = _DPSMaterial;

  factory DPSMaterial.fromJson(Map<String, dynamic> json) {
    return DPSMaterial(
      name: json["name"],
      image_small: serverURL + json["image"]["small"],
      image_original: serverURL + json["image"]["original"],
      amount: json["amount"],
      duration: json["duration"],
    );
  }
}
