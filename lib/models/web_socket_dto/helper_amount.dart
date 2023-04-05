import 'package:freezed_annotation/freezed_annotation.dart';

part 'helper_amount.freezed.dart';

@freezed
class HelperAmount with _$HelperAmount {
  const factory HelperAmount({
    required int amount,
    required List<int> ids,
  }) = _HelperAmount;

  factory HelperAmount.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> jsonContentPart = json['content'];

    return HelperAmount(
      amount: jsonContentPart['amount'],
      ids: List<int>.from(jsonContentPart['ids']),
    );
  }
}