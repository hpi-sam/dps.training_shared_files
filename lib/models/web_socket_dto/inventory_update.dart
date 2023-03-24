import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_update.freezed.dart';

enum InventoryUpdateTypeEnum {
  own,
  other,
}

@freezed
class InventoryUpdate with _$InventoryUpdate {
  const factory InventoryUpdate({
    required InventoryUpdateTypeEnum type,
    required int helperNr,
    required String materialId,
    required int amount,
  }) = _InventoryUpdate;

  factory InventoryUpdate.fromJson(Map<String, dynamic> json) {
    late final InventoryUpdateTypeEnum type;
    if (json['type'] == 'own.inventory.update') {
      type = InventoryUpdateTypeEnum.own;
    } else {
      type = InventoryUpdateTypeEnum.other;
    }

    return InventoryUpdate(
      type: type,
      helperNr: json['helper_nr'],
      materialId: json['material_id'],
      amount: json['amount'],
    );
  }
}
