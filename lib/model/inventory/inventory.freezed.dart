// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InventoryTearOff {
  const _$InventoryTearOff();

  _Inventory call(
      {required String entityType,
      required String entityName,
      required List<DPSMaterialCategory> categories}) {
    return _Inventory(
      entityType: entityType,
      entityName: entityName,
      categories: categories,
    );
  }
}

/// @nodoc
const $Inventory = _$InventoryTearOff();

/// @nodoc
mixin _$Inventory {
  String get entityType => throw _privateConstructorUsedError;
  String get entityName => throw _privateConstructorUsedError;
  List<DPSMaterialCategory> get categories =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryCopyWith<Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryCopyWith<$Res> {
  factory $InventoryCopyWith(Inventory value, $Res Function(Inventory) then) =
      _$InventoryCopyWithImpl<$Res>;
  $Res call(
      {String entityType,
      String entityName,
      List<DPSMaterialCategory> categories});
}

/// @nodoc
class _$InventoryCopyWithImpl<$Res> implements $InventoryCopyWith<$Res> {
  _$InventoryCopyWithImpl(this._value, this._then);

  final Inventory _value;
  // ignore: unused_field
  final $Res Function(Inventory) _then;

  @override
  $Res call({
    Object? entityType = freezed,
    Object? entityName = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      entityType: entityType == freezed
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityName: entityName == freezed
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<DPSMaterialCategory>,
    ));
  }
}

/// @nodoc
abstract class _$InventoryCopyWith<$Res> implements $InventoryCopyWith<$Res> {
  factory _$InventoryCopyWith(
          _Inventory value, $Res Function(_Inventory) then) =
      __$InventoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String entityType,
      String entityName,
      List<DPSMaterialCategory> categories});
}

/// @nodoc
class __$InventoryCopyWithImpl<$Res> extends _$InventoryCopyWithImpl<$Res>
    implements _$InventoryCopyWith<$Res> {
  __$InventoryCopyWithImpl(_Inventory _value, $Res Function(_Inventory) _then)
      : super(_value, (v) => _then(v as _Inventory));

  @override
  _Inventory get _value => super._value as _Inventory;

  @override
  $Res call({
    Object? entityType = freezed,
    Object? entityName = freezed,
    Object? categories = freezed,
  }) {
    return _then(_Inventory(
      entityType: entityType == freezed
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityName: entityName == freezed
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<DPSMaterialCategory>,
    ));
  }
}

/// @nodoc
class _$_Inventory extends _Inventory {
  const _$_Inventory(
      {required this.entityType,
      required this.entityName,
      required this.categories})
      : super._();

  @override
  final String entityType;
  @override
  final String entityName;
  @override
  final List<DPSMaterialCategory> categories;

  @override
  String toString() {
    return 'Inventory(entityType: $entityType, entityName: $entityName, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Inventory &&
            (identical(other.entityType, entityType) ||
                const DeepCollectionEquality()
                    .equals(other.entityType, entityType)) &&
            (identical(other.entityName, entityName) ||
                const DeepCollectionEquality()
                    .equals(other.entityName, entityName)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entityType) ^
      const DeepCollectionEquality().hash(entityName) ^
      const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$InventoryCopyWith<_Inventory> get copyWith =>
      __$InventoryCopyWithImpl<_Inventory>(this, _$identity);
}

abstract class _Inventory extends Inventory {
  const factory _Inventory(
      {required String entityType,
      required String entityName,
      required List<DPSMaterialCategory> categories}) = _$_Inventory;
  const _Inventory._() : super._();

  @override
  String get entityType => throw _privateConstructorUsedError;
  @override
  String get entityName => throw _privateConstructorUsedError;
  @override
  List<DPSMaterialCategory> get categories =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InventoryCopyWith<_Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DPSMaterialCategoryTearOff {
  const _$DPSMaterialCategoryTearOff();

  _DPSMaterialCategory call(
      {required String name, required List<DPSMaterial> items}) {
    return _DPSMaterialCategory(
      name: name,
      items: items,
    );
  }
}

/// @nodoc
const $DPSMaterialCategory = _$DPSMaterialCategoryTearOff();

/// @nodoc
mixin _$DPSMaterialCategory {
  String get name => throw _privateConstructorUsedError;
  List<DPSMaterial> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DPSMaterialCategoryCopyWith<DPSMaterialCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DPSMaterialCategoryCopyWith<$Res> {
  factory $DPSMaterialCategoryCopyWith(
          DPSMaterialCategory value, $Res Function(DPSMaterialCategory) then) =
      _$DPSMaterialCategoryCopyWithImpl<$Res>;
  $Res call({String name, List<DPSMaterial> items});
}

/// @nodoc
class _$DPSMaterialCategoryCopyWithImpl<$Res>
    implements $DPSMaterialCategoryCopyWith<$Res> {
  _$DPSMaterialCategoryCopyWithImpl(this._value, this._then);

  final DPSMaterialCategory _value;
  // ignore: unused_field
  final $Res Function(DPSMaterialCategory) _then;

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
              as List<DPSMaterial>,
    ));
  }
}

/// @nodoc
abstract class _$DPSMaterialCategoryCopyWith<$Res>
    implements $DPSMaterialCategoryCopyWith<$Res> {
  factory _$DPSMaterialCategoryCopyWith(_DPSMaterialCategory value,
          $Res Function(_DPSMaterialCategory) then) =
      __$DPSMaterialCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<DPSMaterial> items});
}

/// @nodoc
class __$DPSMaterialCategoryCopyWithImpl<$Res>
    extends _$DPSMaterialCategoryCopyWithImpl<$Res>
    implements _$DPSMaterialCategoryCopyWith<$Res> {
  __$DPSMaterialCategoryCopyWithImpl(
      _DPSMaterialCategory _value, $Res Function(_DPSMaterialCategory) _then)
      : super(_value, (v) => _then(v as _DPSMaterialCategory));

  @override
  _DPSMaterialCategory get _value => super._value as _DPSMaterialCategory;

  @override
  $Res call({
    Object? name = freezed,
    Object? items = freezed,
  }) {
    return _then(_DPSMaterialCategory(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DPSMaterial>,
    ));
  }
}

/// @nodoc
class _$_DPSMaterialCategory extends _DPSMaterialCategory {
  const _$_DPSMaterialCategory({required this.name, required this.items})
      : super._();

  @override
  final String name;
  @override
  final List<DPSMaterial> items;

  @override
  String toString() {
    return 'DPSMaterialCategory(name: $name, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DPSMaterialCategory &&
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
  _$DPSMaterialCategoryCopyWith<_DPSMaterialCategory> get copyWith =>
      __$DPSMaterialCategoryCopyWithImpl<_DPSMaterialCategory>(
          this, _$identity);
}

abstract class _DPSMaterialCategory extends DPSMaterialCategory {
  const factory _DPSMaterialCategory(
      {required String name,
      required List<DPSMaterial> items}) = _$_DPSMaterialCategory;
  const _DPSMaterialCategory._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<DPSMaterial> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DPSMaterialCategoryCopyWith<_DPSMaterialCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DPSMaterialTearOff {
  const _$DPSMaterialTearOff();

  _DPSMaterial call(
      {required String id,
      required String name,
      required String image_small,
      required String image_original,
      required int amount,
      required int duration}) {
    return _DPSMaterial(
      id: id,
      name: name,
      image_small: image_small,
      image_original: image_original,
      amount: amount,
      duration: duration,
    );
  }
}

/// @nodoc
const $DPSMaterial = _$DPSMaterialTearOff();

/// @nodoc
mixin _$DPSMaterial {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image_small => throw _privateConstructorUsedError;
  String get image_original => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DPSMaterialCopyWith<DPSMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DPSMaterialCopyWith<$Res> {
  factory $DPSMaterialCopyWith(
          DPSMaterial value, $Res Function(DPSMaterial) then) =
      _$DPSMaterialCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String image_small,
      String image_original,
      int amount,
      int duration});
}

/// @nodoc
class _$DPSMaterialCopyWithImpl<$Res> implements $DPSMaterialCopyWith<$Res> {
  _$DPSMaterialCopyWithImpl(this._value, this._then);

  final DPSMaterial _value;
  // ignore: unused_field
  final $Res Function(DPSMaterial) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image_small = freezed,
    Object? image_original = freezed,
    Object? amount = freezed,
    Object? duration = freezed,
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
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DPSMaterialCopyWith<$Res>
    implements $DPSMaterialCopyWith<$Res> {
  factory _$DPSMaterialCopyWith(
          _DPSMaterial value, $Res Function(_DPSMaterial) then) =
      __$DPSMaterialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String image_small,
      String image_original,
      int amount,
      int duration});
}

/// @nodoc
class __$DPSMaterialCopyWithImpl<$Res> extends _$DPSMaterialCopyWithImpl<$Res>
    implements _$DPSMaterialCopyWith<$Res> {
  __$DPSMaterialCopyWithImpl(
      _DPSMaterial _value, $Res Function(_DPSMaterial) _then)
      : super(_value, (v) => _then(v as _DPSMaterial));

  @override
  _DPSMaterial get _value => super._value as _DPSMaterial;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image_small = freezed,
    Object? image_original = freezed,
    Object? amount = freezed,
    Object? duration = freezed,
  }) {
    return _then(_DPSMaterial(
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
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_DPSMaterial extends _DPSMaterial {
  const _$_DPSMaterial(
      {required this.id,
      required this.name,
      required this.image_small,
      required this.image_original,
      required this.amount,
      required this.duration})
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
  final int amount;
  @override
  final int duration;

  @override
  String toString() {
    return 'DPSMaterial(id: $id, name: $name, image_small: $image_small, image_original: $image_original, amount: $amount, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DPSMaterial &&
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
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image_small) ^
      const DeepCollectionEquality().hash(image_original) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  _$DPSMaterialCopyWith<_DPSMaterial> get copyWith =>
      __$DPSMaterialCopyWithImpl<_DPSMaterial>(this, _$identity);
}

abstract class _DPSMaterial extends DPSMaterial {
  const factory _DPSMaterial(
      {required String id,
      required String name,
      required String image_small,
      required String image_original,
      required int amount,
      required int duration}) = _$_DPSMaterial;
  const _DPSMaterial._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image_small => throw _privateConstructorUsedError;
  @override
  String get image_original => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DPSMaterialCopyWith<_DPSMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}
