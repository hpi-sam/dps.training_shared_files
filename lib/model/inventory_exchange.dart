// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'inventory.dart';

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
  const factory InventoryExchange(
          {required List<InventoryExchangeCategory> categories}) =
      _InventoryExchange;

  /// creates an inventory exchange by copying the categories and its materials and
  /// the amount of both inventories
  factory InventoryExchange.fromInventories(
      Inventory ownInventory, Inventory foreignInventory) {
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
        DPSMaterial? foreignMaterial = foreignInventory.categories[i]
            .getMaterial(materialID: materialID);
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
      categoryList.add(InventoryExchangeCategory(
          name: ownInventory.categories[i].name, items: exchangeMaterialList));
    }
    return InventoryExchange(categories: categoryList);
  }

  /// creates an inventory exchange by copying the categories and its materials and
  /// the amount of both inventories. This factory copies the changedAmount of [inventoryExchange]
  /// as well. Used for updating inventory exchange.
  factory InventoryExchange.fromInventoriesKeepingChangedAmount(
      Inventory ownInventory,
      Inventory foreignInventory,
      InventoryExchange inventoryExchange) {
    List<InventoryExchangeCategory> categoryList = [];

    assert(ownInventory.categories.length == foreignInventory.categories.length,
        "Categories of inventories are not identical!");
    for (int i = 0; i < ownInventory.categories.length; i++) {
      List<InventoryExchangeMaterial> materialList = [];
      for (int j = 0; j < ownInventory.categories[i].items.length; j++) {
        DPSMaterial ownMaterial = ownInventory.categories[i].items[j];
        DPSMaterial foreignMaterial = foreignInventory.categories[i].items[j];
        InventoryExchangeMaterial exchangeMaterial =
            inventoryExchange.categories[i].items[j];
        materialList.add(InventoryExchangeMaterial(
            id: ownMaterial.id,
            name: ownMaterial.name,
            image_small: ownMaterial.image_small,
            image_original: ownMaterial.image_original,
            ownAmount: ownMaterial.amount,
            foreignAmount: foreignMaterial.amount,
            changedAmount: exchangeMaterial.changedAmount));
      }
      categoryList.add(InventoryExchangeCategory(
          name: ownInventory.categories[i].name, items: materialList));
    }
    return InventoryExchange(categories: categoryList);
  }

  /// converts to a JSON as specified in API-Specification
  Map<String, dynamic> toJson() {
    List<InventoryExchangeMaterial> changedMaterials = [];
    for (int i = 0; i < categories.length; i++) {
      for (int j = 0; j < categories[i].items.length; j++) {
        if (categories[i].items[j].changedAmount != 0) {
          changedMaterials.add(categories[i].items[j]);
        }
      }
    }
    return {
      "materials": changedMaterials.map((items) => items.toJson()).toList()
    };
  }

  /// Returns the item with [materialID] in this InventoryExchange.
  ///
  /// Returns null if no item with this [materialID] exists.
  InventoryExchangeMaterial? getItem(String materialID) {
    for (InventoryExchangeCategory category in categories) {
      for (InventoryExchangeMaterial item in category.items) {
        if (item.id == materialID) return item;
      }
    }
    return null;
  }

  /// Returns a copy [InventoryExchange] with the amount of material [materialID]
  /// by value given in [amount].
  InventoryExchange copyWithMaterialAmount(String materialID, int amount) {
    List<InventoryExchangeCategory> categories = [];
    for (InventoryExchangeCategory category in this.categories) {
      List<InventoryExchangeMaterial> items = [];
      for (InventoryExchangeMaterial item in category.items) {
        if (item.id == materialID) {
          items.add(item.copyWith(changedAmount: amount));
        } else {
          items.add(item);
        }
      }
      categories.add(category.copyWith(items: items));
    }
    return InventoryExchange(categories: categories);
  }

  /// Returns true if all items in this [InventoryExchange] have a [changedAmount] of 0. Returns
  /// false if at least one item has a [changedAmount] less than or greater than 0.
  bool isUnchanged() {
    for (int i = 0; i < categories.length; i++) {
      for (int j = 0; j < categories[i].items.length; j++) {
        if (categories[i].items[j].changedAmount != 0) return false;
      }
    }
    return true;
  }

  /// Returns true if this [InventoryExchange] is valid. An [InventoryExchange] is
  /// valid when it will not result in a negative amount of items in both inventories.
  bool isValid() {
    for (int i = 0; i < categories.length; i++) {
      for (int j = 0; j < categories[i].items.length; j++) {
        final material = categories[i].items[j];
        if (material.ownAmount + material.changedAmount < 0 ||
            material.foreignAmount - material.changedAmount < 0) return false;
      }
    }
    return true;
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
    required String image_small,
    required String image_original,
    required int ownAmount,
    required int foreignAmount,
    @Default(0) int changedAmount,
  }) = _InventoryExchangeMaterial;

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "amount": this.changedAmount,
    };
  }
}
