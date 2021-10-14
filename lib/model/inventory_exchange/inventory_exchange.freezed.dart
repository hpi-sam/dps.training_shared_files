// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'inventory_exchange.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InventoryExchangeTearOff {
  const _$InventoryExchangeTearOff();

  _InventoryExchange call(
      {required String foreignEntityType,
      required String foreignEntityName,
      required List<InventoryExchangeCategory> categories}) {
    return _InventoryExchange(
      foreignEntityType: foreignEntityType,
      foreignEntityName: foreignEntityName,
      categories: categories,
    );
  }
}

/// @nodoc
const $InventoryExchange = _$InventoryExchangeTearOff();

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
      _$InventoryExchangeCopyWithImpl<$Res>;
  $Res call(
      {String foreignEntityType,
      String foreignEntityName,
      List<InventoryExchangeCategory> categories});
}

/// @nodoc
class _$InventoryExchangeCopyWithImpl<$Res>
    implements $InventoryExchangeCopyWith<$Res> {
  _$InventoryExchangeCopyWithImpl(this._value, this._then);

  final InventoryExchange _value;
  // ignore: unused_field
  final $Res Function(InventoryExchange) _then;

  @override
  $Res call({
    Object? foreignEntityType = freezed,
    Object? foreignEntityName = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      foreignEntityType: foreignEntityType == freezed
          ? _value.foreignEntityType
          : foreignEntityType // ignore: cast_nullable_to_non_nullable
              as String,
      foreignEntityName: foreignEntityName == freezed
          ? _value.foreignEntityName
          : foreignEntityName // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<InventoryExchangeCategory>,
    ));
  }
}

/// @nodoc
abstract class _$InventoryExchangeCopyWith<$Res>
    implements $InventoryExchangeCopyWith<$Res> {
  factory _$InventoryExchangeCopyWith(
          _InventoryExchange value, $Res Function(_InventoryExchange) then) =
      __$InventoryExchangeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String foreignEntityType,
      String foreignEntityName,
      List<InventoryExchangeCategory> categories});
}

/// @nodoc
class __$InventoryExchangeCopyWithImpl<$Res>
    extends _$InventoryExchangeCopyWithImpl<$Res>
    implements _$InventoryExchangeCopyWith<$Res> {
  __$InventoryExchangeCopyWithImpl(
      _InventoryExchange _value, $Res Function(_InventoryExchange) _then)
      : super(_value, (v) => _then(v as _InventoryExchange));

  @override
  _InventoryExchange get _value => super._value as _InventoryExchange;

  @override
  $Res call({
    Object? foreignEntityType = freezed,
    Object? foreignEntityName = freezed,
    Object? categories = freezed,
  }) {
    return _then(_InventoryExchange(
      foreignEntityType: foreignEntityType == freezed
          ? _value.foreignEntityType
          : foreignEntityType // ignore: cast_nullable_to_non_nullable
              as String,
      foreignEntityName: foreignEntityName == freezed
          ? _value.foreignEntityName
          : foreignEntityName // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
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
      required this.categories})
      : super._();

  @override
  final String foreignEntityType;
  @override
  final String foreignEntityName;
  @override
  final List<InventoryExchangeCategory> categories;

  @override
  String toString() {
    return 'InventoryExchange(foreignEntityType: $foreignEntityType, foreignEntityName: $foreignEntityName, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InventoryExchange &&
            (identical(other.foreignEntityType, foreignEntityType) ||
                const DeepCollectionEquality()
                    .equals(other.foreignEntityType, foreignEntityType)) &&
            (identical(other.foreignEntityName, foreignEntityName) ||
                const DeepCollectionEquality()
                    .equals(other.foreignEntityName, foreignEntityName)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foreignEntityType) ^
      const DeepCollectionEquality().hash(foreignEntityName) ^
      const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$InventoryExchangeCopyWith<_InventoryExchange> get copyWith =>
      __$InventoryExchangeCopyWithImpl<_InventoryExchange>(this, _$identity);
}

abstract class _InventoryExchange extends InventoryExchange {
  const factory _InventoryExchange(
          {required String foreignEntityType,
          required String foreignEntityName,
          required List<InventoryExchangeCategory> categories}) =
      _$_InventoryExchange;
  const _InventoryExchange._() : super._();

  @override
  String get foreignEntityType => throw _privateConstructorUsedError;
  @override
  String get foreignEntityName => throw _privateConstructorUsedError;
  @override
  List<InventoryExchangeCategory> get categories =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InventoryExchangeCopyWith<_InventoryExchange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InventoryExchangeCategoryTearOff {
  const _$InventoryExchangeCategoryTearOff();

  _InventoryExchangeCategory call(
      {required String name, required List<InventoryExchangeMaterial> items}) {
    return _InventoryExchangeCategory(
      name: name,
      items: items,
    );
  }
}

/// @nodoc
const $InventoryExchangeCategory = _$InventoryExchangeCategoryTearOff();

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
      _$InventoryExchangeCategoryCopyWithImpl<$Res>;
  $Res call({String name, List<InventoryExchangeMaterial> items});
}

/// @nodoc
class _$InventoryExchangeCategoryCopyWithImpl<$Res>
    implements $InventoryExchangeCategoryCopyWith<$Res> {
  _$InventoryExchangeCategoryCopyWithImpl(this._value, this._then);

  final InventoryExchangeCategory _value;
  // ignore: unused_field
  final $Res Function(InventoryExchangeCategory) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InventoryExchangeMaterial>,
    ));
  }
}

/// @nodoc
abstract class _$InventoryExchangeCategoryCopyWith<$Res>
    implements $InventoryExchangeCategoryCopyWith<$Res> {
  factory _$InventoryExchangeCategoryCopyWith(_InventoryExchangeCategory value,
          $Res Function(_InventoryExchangeCategory) then) =
      __$InventoryExchangeCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<InventoryExchangeMaterial> items});
}

/// @nodoc
class __$InventoryExchangeCategoryCopyWithImpl<$Res>
    extends _$InventoryExchangeCategoryCopyWithImpl<$Res>
    implements _$InventoryExchangeCategoryCopyWith<$Res> {
  __$InventoryExchangeCategoryCopyWithImpl(_InventoryExchangeCategory _value,
      $Res Function(_InventoryExchangeCategory) _then)
      : super(_value, (v) => _then(v as _InventoryExchangeCategory));

  @override
  _InventoryExchangeCategory get _value =>
      super._value as _InventoryExchangeCategory;

  @override
  $Res call({
    Object? name = freezed,
    Object? items = freezed,
  }) {
    return _then(_InventoryExchangeCategory(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InventoryExchangeMaterial>,
    ));
  }
}

/// @nodoc
class _$_InventoryExchangeCategory extends _InventoryExchangeCategory {
  const _$_InventoryExchangeCategory({required this.name, required this.items})
      : super._();

  @override
  final String name;
  @override
  final List<InventoryExchangeMaterial> items;

  @override
  String toString() {
    return 'InventoryExchangeCategory(name: $name, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InventoryExchangeCategory &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$InventoryExchangeCategoryCopyWith<_InventoryExchangeCategory>
      get copyWith =>
          __$InventoryExchangeCategoryCopyWithImpl<_InventoryExchangeCategory>(
              this, _$identity);
}

abstract class _InventoryExchangeCategory extends InventoryExchangeCategory {
  const factory _InventoryExchangeCategory(
          {required String name,
          required List<InventoryExchangeMaterial> items}) =
      _$_InventoryExchangeCategory;
  const _InventoryExchangeCategory._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<InventoryExchangeMaterial> get items =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InventoryExchangeCategoryCopyWith<_InventoryExchangeCategory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$InventoryExchangeMaterialTearOff {
  const _$InventoryExchangeMaterialTearOff();

  _InventoryExchangeMaterial call(
      {required String id,
      required String name,
      required String image_small,
      required String image_original,
      required int ownAmount,
      required int foreignAmount,
      int changedAmount = 0}) {
    return _InventoryExchangeMaterial(
      id: id,
      name: name,
      image_small: image_small,
      image_original: image_original,
      ownAmount: ownAmount,
      foreignAmount: foreignAmount,
      changedAmount: changedAmount,
    );
  }
}

/// @nodoc
const $InventoryExchangeMaterial = _$InventoryExchangeMaterialTearOff();

/// @nodoc
mixin _$InventoryExchangeMaterial {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image_small => throw _privateConstructorUsedError;
  String get image_original => throw _privateConstructorUsedError;
  int get ownAmount => throw _privateConstructorUsedError;
  int get foreignAmount => throw _privateConstructorUsedError;
  int get changedAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryExchangeMaterialCopyWith<InventoryExchangeMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryExchangeMaterialCopyWith<$Res> {
  factory $InventoryExchangeMaterialCopyWith(InventoryExchangeMaterial value,
          $Res Function(InventoryExchangeMaterial) then) =
      _$InventoryExchangeMaterialCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String image_small,
      String image_original,
      int ownAmount,
      int foreignAmount,
      int changedAmount});
}

/// @nodoc
class _$InventoryExchangeMaterialCopyWithImpl<$Res>
    implements $InventoryExchangeMaterialCopyWith<$Res> {
  _$InventoryExchangeMaterialCopyWithImpl(this._value, this._then);

  final InventoryExchangeMaterial _value;
  // ignore: unused_field
  final $Res Function(InventoryExchangeMaterial) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image_small = freezed,
    Object? image_original = freezed,
    Object? ownAmount = freezed,
    Object? foreignAmount = freezed,
    Object? changedAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image_small: image_small == freezed
          ? _value.image_small
          : image_small // ignore: cast_nullable_to_non_nullable
              as String,
      image_original: image_original == freezed
          ? _value.image_original
          : image_original // ignore: cast_nullable_to_non_nullable
              as String,
      ownAmount: ownAmount == freezed
          ? _value.ownAmount
          : ownAmount // ignore: cast_nullable_to_non_nullable
              as int,
      foreignAmount: foreignAmount == freezed
          ? _value.foreignAmount
          : foreignAmount // ignore: cast_nullable_to_non_nullable
              as int,
      changedAmount: changedAmount == freezed
          ? _value.changedAmount
          : changedAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InventoryExchangeMaterialCopyWith<$Res>
    implements $InventoryExchangeMaterialCopyWith<$Res> {
  factory _$InventoryExchangeMaterialCopyWith(_InventoryExchangeMaterial value,
          $Res Function(_InventoryExchangeMaterial) then) =
      __$InventoryExchangeMaterialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String image_small,
      String image_original,
      int ownAmount,
      int foreignAmount,
      int changedAmount});
}

/// @nodoc
class __$InventoryExchangeMaterialCopyWithImpl<$Res>
    extends _$InventoryExchangeMaterialCopyWithImpl<$Res>
    implements _$InventoryExchangeMaterialCopyWith<$Res> {
  __$InventoryExchangeMaterialCopyWithImpl(_InventoryExchangeMaterial _value,
      $Res Function(_InventoryExchangeMaterial) _then)
      : super(_value, (v) => _then(v as _InventoryExchangeMaterial));

  @override
  _InventoryExchangeMaterial get _value =>
      super._value as _InventoryExchangeMaterial;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image_small = freezed,
    Object? image_original = freezed,
    Object? ownAmount = freezed,
    Object? foreignAmount = freezed,
    Object? changedAmount = freezed,
  }) {
    return _then(_InventoryExchangeMaterial(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image_small: image_small == freezed
          ? _value.image_small
          : image_small // ignore: cast_nullable_to_non_nullable
              as String,
      image_original: image_original == freezed
          ? _value.image_original
          : image_original // ignore: cast_nullable_to_non_nullable
              as String,
      ownAmount: ownAmount == freezed
          ? _value.ownAmount
          : ownAmount // ignore: cast_nullable_to_non_nullable
              as int,
      foreignAmount: foreignAmount == freezed
          ? _value.foreignAmount
          : foreignAmount // ignore: cast_nullable_to_non_nullable
              as int,
      changedAmount: changedAmount == freezed
          ? _value.changedAmount
          : changedAmount // ignore: cast_nullable_to_non_nullable
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
      required this.foreignAmount,
      this.changedAmount = 0})
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
  @JsonKey(defaultValue: 0)
  @override
  final int changedAmount;

  @override
  String toString() {
    return 'InventoryExchangeMaterial(id: $id, name: $name, image_small: $image_small, image_original: $image_original, ownAmount: $ownAmount, foreignAmount: $foreignAmount, changedAmount: $changedAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InventoryExchangeMaterial &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image_small, image_small) ||
                const DeepCollectionEquality()
                    .equals(other.image_small, image_small)) &&
            (identical(other.image_original, image_original) ||
                const DeepCollectionEquality()
                    .equals(other.image_original, image_original)) &&
            (identical(other.ownAmount, ownAmount) ||
                const DeepCollectionEquality()
                    .equals(other.ownAmount, ownAmount)) &&
            (identical(other.foreignAmount, foreignAmount) ||
                const DeepCollectionEquality()
                    .equals(other.foreignAmount, foreignAmount)) &&
            (identical(other.changedAmount, changedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.changedAmount, changedAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image_small) ^
      const DeepCollectionEquality().hash(image_original) ^
      const DeepCollectionEquality().hash(ownAmount) ^
      const DeepCollectionEquality().hash(foreignAmount) ^
      const DeepCollectionEquality().hash(changedAmount);

  @JsonKey(ignore: true)
  @override
  _$InventoryExchangeMaterialCopyWith<_InventoryExchangeMaterial>
      get copyWith =>
          __$InventoryExchangeMaterialCopyWithImpl<_InventoryExchangeMaterial>(
              this, _$identity);
}

abstract class _InventoryExchangeMaterial extends InventoryExchangeMaterial {
  const factory _InventoryExchangeMaterial(
      {required String id,
      required String name,
      required String image_small,
      required String image_original,
      required int ownAmount,
      required int foreignAmount,
      int changedAmount}) = _$_InventoryExchangeMaterial;
  const _InventoryExchangeMaterial._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image_small => throw _privateConstructorUsedError;
  @override
  String get image_original => throw _privateConstructorUsedError;
  @override
  int get ownAmount => throw _privateConstructorUsedError;
  @override
  int get foreignAmount => throw _privateConstructorUsedError;
  @override
  int get changedAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InventoryExchangeMaterialCopyWith<_InventoryExchangeMaterial>
      get copyWith => throw _privateConstructorUsedError;
}
