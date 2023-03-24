// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'helper_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HelperAmount {
  int get amount => throw _privateConstructorUsedError;
  List<int> get ids => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HelperAmountCopyWith<HelperAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelperAmountCopyWith<$Res> {
  factory $HelperAmountCopyWith(
          HelperAmount value, $Res Function(HelperAmount) then) =
      _$HelperAmountCopyWithImpl<$Res, HelperAmount>;
  @useResult
  $Res call({int amount, List<int> ids});
}

/// @nodoc
class _$HelperAmountCopyWithImpl<$Res, $Val extends HelperAmount>
    implements $HelperAmountCopyWith<$Res> {
  _$HelperAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? ids = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HelperAmountCopyWith<$Res>
    implements $HelperAmountCopyWith<$Res> {
  factory _$$_HelperAmountCopyWith(
          _$_HelperAmount value, $Res Function(_$_HelperAmount) then) =
      __$$_HelperAmountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, List<int> ids});
}

/// @nodoc
class __$$_HelperAmountCopyWithImpl<$Res>
    extends _$HelperAmountCopyWithImpl<$Res, _$_HelperAmount>
    implements _$$_HelperAmountCopyWith<$Res> {
  __$$_HelperAmountCopyWithImpl(
      _$_HelperAmount _value, $Res Function(_$_HelperAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? ids = null,
  }) {
    return _then(_$_HelperAmount(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_HelperAmount implements _HelperAmount {
  const _$_HelperAmount({required this.amount, required final List<int> ids})
      : _ids = ids;

  @override
  final int amount;
  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'HelperAmount(amount: $amount, ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelperAmount &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, amount, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HelperAmountCopyWith<_$_HelperAmount> get copyWith =>
      __$$_HelperAmountCopyWithImpl<_$_HelperAmount>(this, _$identity);
}

abstract class _HelperAmount implements HelperAmount {
  const factory _HelperAmount(
      {required final int amount,
      required final List<int> ids}) = _$_HelperAmount;

  @override
  int get amount;
  @override
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$$_HelperAmountCopyWith<_$_HelperAmount> get copyWith =>
      throw _privateConstructorUsedError;
}
