import 'package:freezed_annotation/freezed_annotation.dart';

part 'helper_amount.freezed.dart';

@freezed
class HelperAmount with _$HelperAmount {
  const factory HelperAmount({
    required int amount,
    required List<int> ids,
  }) = _HelperAmount;

  factory HelperAmount.fromJson(Map<String, dynamic> json) {
    return HelperAmount(
      amount: json['amount'],
      ids: List<int>.from(json['ids']),
    );
  }
}