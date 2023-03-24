// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InventoryUpdate {
  InventoryUpdateTypeEnum get type => throw _privateConstructorUsedError;
  int get helperNr => throw _privateConstructorUsedError;
  String get materialId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryUpdateCopyWith<InventoryUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryUpdateCopyWith<$Res> {
  factory $InventoryUpdateCopyWith(
          InventoryUpdate value, $Res Function(InventoryUpdate) then) =
      _$InventoryUpdateCopyWithImpl<$Res, InventoryUpdate>;
  @useResult
  $Res call(
      {InventoryUpdateTypeEnum type,
      int helperNr,
      String materialId,
      int amount});
}

/// @nodoc
class _$InventoryUpdateCopyWithImpl<$Res, $Val extends InventoryUpdate>
    implements $InventoryUpdateCopyWith<$Res> {
  _$InventoryUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? helperNr = null,
    Object? materialId = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InventoryUpdateTypeEnum,
      helperNr: null == helperNr
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      materialId: null == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InventoryUpdateCopyWith<$Res>
    implements $InventoryUpdateCopyWith<$Res> {
  factory _$$_InventoryUpdateCopyWith(
          _$_InventoryUpdate value, $Res Function(_$_InventoryUpdate) then) =
      __$$_InventoryUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InventoryUpdateTypeEnum type,
      int helperNr,
      String materialId,
      int amount});
}

/// @nodoc
class __$$_InventoryUpdateCopyWithImpl<$Res>
    extends _$InventoryUpdateCopyWithImpl<$Res, _$_InventoryUpdate>
    implements _$$_InventoryUpdateCopyWith<$Res> {
  __$$_InventoryUpdateCopyWithImpl(
      _$_InventoryUpdate _value, $Res Function(_$_InventoryUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? helperNr = null,
    Object? materialId = null,
    Object? amount = null,
  }) {
    return _then(_$_InventoryUpdate(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InventoryUpdateTypeEnum,
      helperNr: null == helperNr
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      materialId: null == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_InventoryUpdate implements _InventoryUpdate {
  const _$_InventoryUpdate(
      {required this.type,
      required this.helperNr,
      required this.materialId,
      required this.amount});

  @override
  final InventoryUpdateTypeEnum type;
  @override
  final int helperNr;
  @override
  final String materialId;
  @override
  final int amount;

  @override
  String toString() {
    return 'InventoryUpdate(type: $type, helperNr: $helperNr, materialId: $materialId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InventoryUpdate &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.helperNr, helperNr) ||
                other.helperNr == helperNr) &&
            (identical(other.materialId, materialId) ||
                other.materialId == materialId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, helperNr, materialId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryUpdateCopyWith<_$_InventoryUpdate> get copyWith =>
      __$$_InventoryUpdateCopyWithImpl<_$_InventoryUpdate>(this, _$identity);
}

abstract class _InventoryUpdate implements InventoryUpdate {
  const factory _InventoryUpdate(
      {required final InventoryUpdateTypeEnum type,
      required final int helperNr,
      required final String materialId,
      required final int amount}) = _$_InventoryUpdate;

  @override
  InventoryUpdateTypeEnum get type;
  @override
  int get helperNr;
  @override
  String get materialId;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryUpdateCopyWith<_$_InventoryUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
