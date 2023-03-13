// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../inventory/inventory.dart';

part 'inventory_exchange.freezed.dart';

///  Defines the inventory exchange data model.
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
class InventoryExchange with _$InventoryExchange {
  const InventoryExchange._();
  const factory InventoryExchange({
    required String foreignEntityType,
    required String foreignEntityName,
    required List<InventoryExchangeCategory> categories,
  }) = _InventoryExchange;

  /// Creates a new [InventoryExchange] by copying the categories and its materials and
  /// the amount of both inventories. If an [oldExchange] is given, it copies
  /// the changedAmount of this [oldExchange] in the new [InventoryExchange].
  factory InventoryExchange.fromInventories(
      {required Inventory ownInventory,
      required Inventory foreignInventory,
      InventoryExchange? oldExchange}) {
    List<InventoryExchangeCategory> categoryList = [];
    assert(ownInventory.categories.length == foreignInventory.categories.length,
        "Categories of inventories are not identical!");
    for (int i = 0; i < ownInventory.categories.length; i++) {
      List<InventoryExchangeMaterial> exchangeMaterialList = [];

      // Get all materialIDs that are in either ownInventory or foreignInventory.
      Set<String> materialIDSet = Set();
      ownInventory.categories[i].items.forEach((material) {
        materialIDSet.add(material.id);
      });
      foreignInventory.categories[i].items.forEach((material) {
        materialIDSet.add(material.id);
      });

      // Add each found materialID to the exchangeMaterialList with the respective
      // own and foreign amounts.
      materialIDSet.forEach((String materialID) {
        DPSMaterial? ownMaterial =
            ownInventory.categories[i].getMaterial(materialID: materialID);
        DPSMaterial? foreignMaterial =
            foreignInventory.categories[i].getMaterial(materialID: materialID);

        if (ownMaterial != null) {
          exchangeMaterialList.add(InventoryExchangeMaterial(
            id: materialID,
            name: ownMaterial.name,
            image_small: ownMaterial.image_small,
            image_original: ownMaterial.image_original,
            ownAmount: ownMaterial.amount,
            foreignAmount: (foreignMaterial?.amount) ?? 0,
          ));
        } else {
          // we know that if ownMaterial is null, foreignMaterial has to be non-null,
          // because otherwise the materialID would not be in the materialIDSet.
          exchangeMaterialList.add(InventoryExchangeMaterial(
            id: materialID,
            name: foreignMaterial!.name,
            image_small: foreignMaterial.image_small,
            image_original: foreignMaterial.image_original,
            ownAmount: (ownMaterial?.amount) ?? 0,
            foreignAmount: foreignMaterial.amount,
          ));
        }
      });
      exchangeMaterialList
          .sort((InventoryExchangeMaterial a, InventoryExchangeMaterial b) {
        return a.name.toLowerCase().compareTo(b.name.toLowerCase());
      });
      categoryList.add(InventoryExchangeCategory(
          name: ownInventory.categories[i].name, items: exchangeMaterialList));
    }
    return InventoryExchange(
        categories: categoryList,
        foreignEntityName: foreignInventory.entityName,
        foreignEntityType: foreignInventory.entityType);
  }

  /// Returns the item with [materialID] in this InventoryExchange.
  ///
  /// Returns null if no item with this [materialID] exists.
  InventoryExchangeMaterial? getItem({required String materialID}) {
    for (InventoryExchangeCategory category in categories) {
      for (InventoryExchangeMaterial item in category.items) {
        if (item.id == materialID) return item;
      }
    }
    return null;
  }

  /// Returns true if this [InventoryExchange] has all the items that [inventory]
  /// has. Returns false if [inventory] has an item, that this [InventoryExchange]
  /// doesn't have.
  bool hasAllItemsOf({required Inventory inventory}) {
    for (DPSMaterialCategory category in inventory.categories) {
      for (DPSMaterial item in category.items) {
        if (getItem(materialID: item.id) == null) return false;
      }
    }
    return true;
  }

  /// Returns true if the own or the foreign amount of at least one item is greater
  /// than 0.
  bool isNotEmpty() {
    for (int i = 0; i < categories.length; i++) {
      for (int j = 0; j < categories[i].items.length; j++) {
        final material = categories[i].items[j];
        if (material.ownAmount > 0) return true;
        if (material.foreignAmount > 0) return true;
      }
    }
    return false;
  }
}

/// Model that represents a single category of materials in the context of an [InventoryExchange].
/// Contains a category name and a List of [InventoryExchangeMaterial]
@freezed
class InventoryExchangeCategory with _$InventoryExchangeCategory {
  const InventoryExchangeCategory._();
  const factory InventoryExchangeCategory({
    required String name,
    required List<InventoryExchangeMaterial> items,
  }) = _InventoryExchangeCategory;
}

/// Model that contains all relevant information of a single [DPSMaterial] in the
/// context of an [InventoryExchange].

@freezed
class InventoryExchangeMaterial with _$InventoryExchangeMaterial {
  const InventoryExchangeMaterial._();

  const factory InventoryExchangeMaterial({
    required String id,
    required String name,
    required Uri image_small,
    required Uri image_original,
    required int ownAmount,
    required int foreignAmount,
  }) = _InventoryExchangeMaterial;
}
