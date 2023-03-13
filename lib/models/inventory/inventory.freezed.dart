// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$InventoryCopyWithImpl<$Res, Inventory>;
  @useResult
  $Res call(
      {String entityType,
      String entityName,
      List<DPSMaterialCategory> categories});
}

/// @nodoc
class _$InventoryCopyWithImpl<$Res, $Val extends Inventory>
    implements $InventoryCopyWith<$Res> {
  _$InventoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityType = null,
    Object? entityName = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityName: null == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<DPSMaterialCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InventoryCopyWith<$Res> implements $InventoryCopyWith<$Res> {
  factory _$$_InventoryCopyWith(
          _$_Inventory value, $Res Function(_$_Inventory) then) =
      __$$_InventoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String entityType,
      String entityName,
      List<DPSMaterialCategory> categories});
}

/// @nodoc
class __$$_InventoryCopyWithImpl<$Res>
    extends _$InventoryCopyWithImpl<$Res, _$_Inventory>
    implements _$$_InventoryCopyWith<$Res> {
  __$$_InventoryCopyWithImpl(
      _$_Inventory _value, $Res Function(_$_Inventory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityType = null,
    Object? entityName = null,
    Object? categories = null,
  }) {
    return _then(_$_Inventory(
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityName: null == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
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
      required final List<DPSMaterialCategory> categories})
      : _categories = categories,
        super._();

  @override
  final String entityType;
  @override
  final String entityName;
  final List<DPSMaterialCategory> _categories;
  @override
  List<DPSMaterialCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'Inventory(entityType: $entityType, entityName: $entityName, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Inventory &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityName, entityName) ||
                other.entityName == entityName) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entityType, entityName,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryCopyWith<_$_Inventory> get copyWith =>
      __$$_InventoryCopyWithImpl<_$_Inventory>(this, _$identity);
}

abstract class _Inventory extends Inventory {
  const factory _Inventory(
      {required final String entityType,
      required final String entityName,
      required final List<DPSMaterialCategory> categories}) = _$_Inventory;
  const _Inventory._() : super._();

  @override
  String get entityType;
  @override
  String get entityName;
  @override
  List<DPSMaterialCategory> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryCopyWith<_$_Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$DPSMaterialCategoryCopyWithImpl<$Res, DPSMaterialCategory>;
  @useResult
  $Res call({String name, List<DPSMaterial> items});
}

/// @nodoc
class _$DPSMaterialCategoryCopyWithImpl<$Res, $Val extends DPSMaterialCategory>
    implements $DPSMaterialCategoryCopyWith<$Res> {
  _$DPSMaterialCategoryCopyWithImpl(this._value, this._then);

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
              as List<DPSMaterial>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DPSMaterialCategoryCopyWith<$Res>
    implements $DPSMaterialCategoryCopyWith<$Res> {
  factory _$$_DPSMaterialCategoryCopyWith(_$_DPSMaterialCategory value,
          $Res Function(_$_DPSMaterialCategory) then) =
      __$$_DPSMaterialCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<DPSMaterial> items});
}

/// @nodoc
class __$$_DPSMaterialCategoryCopyWithImpl<$Res>
    extends _$DPSMaterialCategoryCopyWithImpl<$Res, _$_DPSMaterialCategory>
    implements _$$_DPSMaterialCategoryCopyWith<$Res> {
  __$$_DPSMaterialCategoryCopyWithImpl(_$_DPSMaterialCategory _value,
      $Res Function(_$_DPSMaterialCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_$_DPSMaterialCategory(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DPSMaterial>,
    ));
  }
}

/// @nodoc

class _$_DPSMaterialCategory extends _DPSMaterialCategory {
  const _$_DPSMaterialCategory(
      {required this.name, required final List<DPSMaterial> items})
      : _items = items,
        super._();

  @override
  final String name;
  final List<DPSMaterial> _items;
  @override
  List<DPSMaterial> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'DPSMaterialCategory(name: $name, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DPSMaterialCategory &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DPSMaterialCategoryCopyWith<_$_DPSMaterialCategory> get copyWith =>
      __$$_DPSMaterialCategoryCopyWithImpl<_$_DPSMaterialCategory>(
          this, _$identity);
}

abstract class _DPSMaterialCategory extends DPSMaterialCategory {
  const factory _DPSMaterialCategory(
      {required final String name,
      required final List<DPSMaterial> items}) = _$_DPSMaterialCategory;
  const _DPSMaterialCategory._() : super._();

  @override
  String get name;
  @override
  List<DPSMaterial> get items;
  @override
  @JsonKey(ignore: true)
  _$$_DPSMaterialCategoryCopyWith<_$_DPSMaterialCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DPSMaterial {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uri get image_small => throw _privateConstructorUsedError;
  Uri get image_original => throw _privateConstructorUsedError;
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
      _$DPSMaterialCopyWithImpl<$Res, DPSMaterial>;
  @useResult
  $Res call(
      {String id,
      String name,
      Uri image_small,
      Uri image_original,
      int amount,
      int duration});
}

/// @nodoc
class _$DPSMaterialCopyWithImpl<$Res, $Val extends DPSMaterial>
    implements $DPSMaterialCopyWith<$Res> {
  _$DPSMaterialCopyWithImpl(this._value, this._then);

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
    Object? amount = null,
    Object? duration = null,
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
              as Uri,
      image_original: null == image_original
          ? _value.image_original
          : image_original // ignore: cast_nullable_to_non_nullable
              as Uri,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DPSMaterialCopyWith<$Res>
    implements $DPSMaterialCopyWith<$Res> {
  factory _$$_DPSMaterialCopyWith(
          _$_DPSMaterial value, $Res Function(_$_DPSMaterial) then) =
      __$$_DPSMaterialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Uri image_small,
      Uri image_original,
      int amount,
      int duration});
}

/// @nodoc
class __$$_DPSMaterialCopyWithImpl<$Res>
    extends _$DPSMaterialCopyWithImpl<$Res, _$_DPSMaterial>
    implements _$$_DPSMaterialCopyWith<$Res> {
  __$$_DPSMaterialCopyWithImpl(
      _$_DPSMaterial _value, $Res Function(_$_DPSMaterial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image_small = null,
    Object? image_original = null,
    Object? amount = null,
    Object? duration = null,
  }) {
    return _then(_$_DPSMaterial(
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
              as Uri,
      image_original: null == image_original
          ? _value.image_original
          : image_original // ignore: cast_nullable_to_non_nullable
              as Uri,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
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
  final Uri image_small;
  @override
  final Uri image_original;
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
        (other.runtimeType == runtimeType &&
            other is _$_DPSMaterial &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image_small, image_small) ||
                other.image_small == image_small) &&
            (identical(other.image_original, image_original) ||
                other.image_original == image_original) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, image_small, image_original, amount, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DPSMaterialCopyWith<_$_DPSMaterial> get copyWith =>
      __$$_DPSMaterialCopyWithImpl<_$_DPSMaterial>(this, _$identity);
}

abstract class _DPSMaterial extends DPSMaterial {
  const factory _DPSMaterial(
      {required final String id,
      required final String name,
      required final Uri image_small,
      required final Uri image_original,
      required final int amount,
      required final int duration}) = _$_DPSMaterial;
  const _DPSMaterial._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  Uri get image_small;
  @override
  Uri get image_original;
  @override
  int get amount;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$_DPSMaterialCopyWith<_$_DPSMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}
