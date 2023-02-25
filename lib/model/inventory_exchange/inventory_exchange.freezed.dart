// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_exchange.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InventoryExchange {
  String get foreignEntityType => throw _privateConstructorUsedError;
  String get foreignEntityName => throw _privateConstructorUsedError;
  List<InventoryExchangeCategory> get categories =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryExchangeCopyWith<InventoryExchange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryExchangeCopyWith<$Res> {
  factory $InventoryExchangeCopyWith(
          InventoryExchange value, $Res Function(InventoryExchange) then) =
      _$InventoryExchangeCopyWithImpl<$Res, InventoryExchange>;
  @useResult
  $Res call(
      {String foreignEntityType,
      String foreignEntityName,
      List<InventoryExchangeCategory> categories});
}

/// @nodoc
class _$InventoryExchangeCopyWithImpl<$Res, $Val extends InventoryExchange>
    implements $InventoryExchangeCopyWith<$Res> {
  _$InventoryExchangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foreignEntityType = null,
    Object? foreignEntityName = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      foreignEntityType: null == foreignEntityType
          ? _value.foreignEntityType
          : foreignEntityType // ignore: cast_nullable_to_non_nullable
              as String,
      foreignEntityName: null == foreignEntityName
          ? _value.foreignEntityName
          : foreignEntityName // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<InventoryExchangeCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InventoryExchangeCopyWith<$Res>
    implements $InventoryExchangeCopyWith<$Res> {
  factory _$$_InventoryExchangeCopyWith(_$_InventoryExchange value,
          $Res Function(_$_InventoryExchange) then) =
      __$$_InventoryExchangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String foreignEntityType,
      String foreignEntityName,
      List<InventoryExchangeCategory> categories});
}

/// @nodoc
class __$$_InventoryExchangeCopyWithImpl<$Res>
    extends _$InventoryExchangeCopyWithImpl<$Res, _$_InventoryExchange>
    implements _$$_InventoryExchangeCopyWith<$Res> {
  __$$_InventoryExchangeCopyWithImpl(
      _$_InventoryExchange _value, $Res Function(_$_InventoryExchange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foreignEntityType = null,
    Object? foreignEntityName = null,
    Object? categories = null,
  }) {
    return _then(_$_InventoryExchange(
      foreignEntityType: null == foreignEntityType
          ? _value.foreignEntityType
          : foreignEntityType // ignore: cast_nullable_to_non_nullable
              as String,
      foreignEntityName: null == foreignEntityName
          ? _value.foreignEntityName
          : foreignEntityName // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<InventoryExchangeCategory>,
    ));
  }
}

/// @nodoc

class _$_InventoryExchange extends _InventoryExchange {
  const _$_InventoryExchange(
      {required this.foreignEntityType,
      required this.foreignEntityName,
      required final List<InventoryExchangeCategory> categories})
      : _categories = categories,
        super._();

  @override
  final String foreignEntityType;
  @override
  final String foreignEntityName;
  final List<InventoryExchangeCategory> _categories;
  @override
  List<InventoryExchangeCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'InventoryExchange(foreignEntityType: $foreignEntityType, foreignEntityName: $foreignEntityName, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InventoryExchange &&
            (identical(other.foreignEntityType, foreignEntityType) ||
                other.foreignEntityType == foreignEntityType) &&
            (identical(other.foreignEntityName, foreignEntityName) ||
                other.foreignEntityName == foreignEntityName) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foreignEntityType,
      foreignEntityName, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryExchangeCopyWith<_$_InventoryExchange> get copyWith =>
      __$$_InventoryExchangeCopyWithImpl<_$_InventoryExchange>(
          this, _$identity);
}

abstract class _InventoryExchange extends InventoryExchange {
  const factory _InventoryExchange(
          {required final String foreignEntityType,
          required final String foreignEntityName,
          required final List<InventoryExchangeCategory> categories}) =
      _$_InventoryExchange;
  const _InventoryExchange._() : super._();

  @override
  String get foreignEntityType;
  @override
  String get foreignEntityName;
  @override
  List<InventoryExchangeCategory> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryExchangeCopyWith<_$_InventoryExchange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InventoryExchangeCategory {
  String get name => throw _privateConstructorUsedError;
  List<InventoryExchangeMaterial> get items =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryExchangeCategoryCopyWith<InventoryExchangeCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryExchangeCategoryCopyWith<$Res> {
  factory $InventoryExchangeCategoryCopyWith(InventoryExchangeCategory value,
          $Res Function(InventoryExchangeCategory) then) =
      _$InventoryExchangeCategoryCopyWithImpl<$Res, InventoryExchangeCategory>;
  @useResult
  $Res call({String name, List<InventoryExchangeMaterial> items});
}

/// @nodoc
class _$InventoryExchangeCategoryCopyWithImpl<$Res,
        $Val extends InventoryExchangeCategory>
    implements $InventoryExchangeCategoryCopyWith<$Res> {
  _$InventoryExchangeCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InventoryExchangeMaterial>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InventoryExchangeCategoryCopyWith<$Res>
    implements $InventoryExchangeCategoryCopyWith<$Res> {
  factory _$$_InventoryExchangeCategoryCopyWith(
          _$_InventoryExchangeCategory value,
          $Res Function(_$_InventoryExchangeCategory) then) =
      __$$_InventoryExchangeCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<InventoryExchangeMaterial> items});
}

/// @nodoc
class __$$_InventoryExchangeCategoryCopyWithImpl<$Res>
    extends _$InventoryExchangeCategoryCopyWithImpl<$Res,
        _$_InventoryExchangeCategory>
    implements _$$_InventoryExchangeCategoryCopyWith<$Res> {
  __$$_InventoryExchangeCategoryCopyWithImpl(
      _$_InventoryExchangeCategory _value,
      $Res Function(_$_InventoryExchangeCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_$_InventoryExchangeCategory(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InventoryExchangeMaterial>,
    ));
  }
}

/// @nodoc

class _$_InventoryExchangeCategory extends _InventoryExchangeCategory {
  const _$_InventoryExchangeCategory(
      {required this.name,
      required final List<InventoryExchangeMaterial> items})
      : _items = items,
        super._();

  @override
  final String name;
  final List<InventoryExchangeMaterial> _items;
  @override
  List<InventoryExchangeMaterial> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'InventoryExchangeCategory(name: $name, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InventoryExchangeCategory &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryExchangeCategoryCopyWith<_$_InventoryExchangeCategory>
      get copyWith => __$$_InventoryExchangeCategoryCopyWithImpl<
          _$_InventoryExchangeCategory>(this, _$identity);
}

abstract class _InventoryExchangeCategory extends InventoryExchangeCategory {
  const factory _InventoryExchangeCategory(
          {required final String name,
          required final List<InventoryExchangeMaterial> items}) =
      _$_InventoryExchangeCategory;
  const _InventoryExchangeCategory._() : super._();

  @override
  String get name;
  @override
  List<InventoryExchangeMaterial> get items;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryExchangeCategoryCopyWith<_$_InventoryExchangeCategory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InventoryExchangeMaterial {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image_small => throw _privateConstructorUsedError;
  String get image_original => throw _privateConstructorUsedError;
  int get ownAmount => throw _privateConstructorUsedError;
  int get foreignAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryExchangeMaterialCopyWith<InventoryExchangeMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryExchangeMaterialCopyWith<$Res> {
  factory $InventoryExchangeMaterialCopyWith(InventoryExchangeMaterial value,
          $Res Function(InventoryExchangeMaterial) then) =
      _$InventoryExchangeMaterialCopyWithImpl<$Res, InventoryExchangeMaterial>;
  @useResult
  $Res call(
      {String id,
      String name,
      String image_small,
      String image_original,
      int ownAmount,
      int foreignAmount});
}

/// @nodoc
class _$InventoryExchangeMaterialCopyWithImpl<$Res,
        $Val extends InventoryExchangeMaterial>
    implements $InventoryExchangeMaterialCopyWith<$Res> {
  _$InventoryExchangeMaterialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image_small = null,
    Object? image_original = null,
    Object? ownAmount = null,
    Object? foreignAmount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image_small: null == image_small
          ? _value.image_small
          : image_small // ignore: cast_nullable_to_non_nullable
              as String,
      image_original: null == image_original
          ? _value.image_original
          : image_original // ignore: cast_nullable_to_non_nullable
              as String,
      ownAmount: null == ownAmount
          ? _value.ownAmount
          : ownAmount // ignore: cast_nullable_to_non_nullable
              as int,
      foreignAmount: null == foreignAmount
          ? _value.foreignAmount
          : foreignAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InventoryExchangeMaterialCopyWith<$Res>
    implements $InventoryExchangeMaterialCopyWith<$Res> {
  factory _$$_InventoryExchangeMaterialCopyWith(
          _$_InventoryExchangeMaterial value,
          $Res Function(_$_InventoryExchangeMaterial) then) =
      __$$_InventoryExchangeMaterialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String image_small,
      String image_original,
      int ownAmount,
      int foreignAmount});
}

/// @nodoc
class __$$_InventoryExchangeMaterialCopyWithImpl<$Res>
    extends _$InventoryExchangeMaterialCopyWithImpl<$Res,
        _$_InventoryExchangeMaterial>
    implements _$$_InventoryExchangeMaterialCopyWith<$Res> {
  __$$_InventoryExchangeMaterialCopyWithImpl(
      _$_InventoryExchangeMaterial _value,
      $Res Function(_$_InventoryExchangeMaterial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image_small = null,
    Object? image_original = null,
    Object? ownAmount = null,
    Object? foreignAmount = null,
  }) {
    return _then(_$_InventoryExchangeMaterial(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image_small: null == image_small
          ? _value.image_small
          : image_small // ignore: cast_nullable_to_non_nullable
              as String,
      image_original: null == image_original
          ? _value.image_original
          : image_original // ignore: cast_nullable_to_non_nullable
              as String,
      ownAmount: null == ownAmount
          ? _value.ownAmount
          : ownAmount // ignore: cast_nullable_to_non_nullable
              as int,
      foreignAmount: null == foreignAmount
          ? _value.foreignAmount
          : foreignAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_InventoryExchangeMaterial extends _InventoryExchangeMaterial {
  const _$_InventoryExchangeMaterial(
      {required this.id,
      required this.name,
      required this.image_small,
      required this.image_original,
      required this.ownAmount,
      required this.foreignAmount})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String image_small;
  @override
  final String image_original;
  @override
  final int ownAmount;
  @override
  final int foreignAmount;

  @override
  String toString() {
    return 'InventoryExchangeMaterial(id: $id, name: $name, image_small: $image_small, image_original: $image_original, ownAmount: $ownAmount, foreignAmount: $foreignAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InventoryExchangeMaterial &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image_small, image_small) ||
                other.image_small == image_small) &&
            (identical(other.image_original, image_original) ||
                other.image_original == image_original) &&
            (identical(other.ownAmount, ownAmount) ||
                other.ownAmount == ownAmount) &&
            (identical(other.foreignAmount, foreignAmount) ||
                other.foreignAmount == foreignAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, image_small,
      image_original, ownAmount, foreignAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryExchangeMaterialCopyWith<_$_InventoryExchangeMaterial>
      get copyWith => __$$_InventoryExchangeMaterialCopyWithImpl<
          _$_InventoryExchangeMaterial>(this, _$identity);
}

abstract class _InventoryExchangeMaterial extends InventoryExchangeMaterial {
  const factory _InventoryExchangeMaterial(
      {required final String id,
      required final String name,
      required final String image_small,
      required final String image_original,
      required final int ownAmount,
      required final int foreignAmount}) = _$_InventoryExchangeMaterial;
  const _InventoryExchangeMaterial._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String get image_small;
  @override
  String get image_original;
  @override
  int get ownAmount;
  @override
  int get foreignAmount;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryExchangeMaterialCopyWith<_$_InventoryExchangeMaterial>
      get copyWith => throw _privateConstructorUsedError;
}
