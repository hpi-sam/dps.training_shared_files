// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'available_measures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AvailableMeasuresTearOff {
  const _$AvailableMeasuresTearOff();

  _AvailableMeasures call(
      {required List<AvailableMeasuresCategory> categories}) {
    return _AvailableMeasures(
      categories: categories,
    );
  }
}

/// @nodoc
const $AvailableMeasures = _$AvailableMeasuresTearOff();

/// @nodoc
mixin _$AvailableMeasures {
  List<AvailableMeasuresCategory> get categories =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AvailableMeasuresCopyWith<AvailableMeasures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableMeasuresCopyWith<$Res> {
  factory $AvailableMeasuresCopyWith(
          AvailableMeasures value, $Res Function(AvailableMeasures) then) =
      _$AvailableMeasuresCopyWithImpl<$Res>;
  $Res call({List<AvailableMeasuresCategory> categories});
}

/// @nodoc
class _$AvailableMeasuresCopyWithImpl<$Res>
    implements $AvailableMeasuresCopyWith<$Res> {
  _$AvailableMeasuresCopyWithImpl(this._value, this._then);

  final AvailableMeasures _value;
  // ignore: unused_field
  final $Res Function(AvailableMeasures) _then;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AvailableMeasuresCategory>,
    ));
  }
}

/// @nodoc
abstract class _$AvailableMeasuresCopyWith<$Res>
    implements $AvailableMeasuresCopyWith<$Res> {
  factory _$AvailableMeasuresCopyWith(
          _AvailableMeasures value, $Res Function(_AvailableMeasures) then) =
      __$AvailableMeasuresCopyWithImpl<$Res>;
  @override
  $Res call({List<AvailableMeasuresCategory> categories});
}

/// @nodoc
class __$AvailableMeasuresCopyWithImpl<$Res>
    extends _$AvailableMeasuresCopyWithImpl<$Res>
    implements _$AvailableMeasuresCopyWith<$Res> {
  __$AvailableMeasuresCopyWithImpl(
      _AvailableMeasures _value, $Res Function(_AvailableMeasures) _then)
      : super(_value, (v) => _then(v as _AvailableMeasures));

  @override
  _AvailableMeasures get _value => super._value as _AvailableMeasures;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_AvailableMeasures(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AvailableMeasuresCategory>,
    ));
  }
}

/// @nodoc
class _$_AvailableMeasures extends _AvailableMeasures {
  const _$_AvailableMeasures({required this.categories}) : super._();

  @override
  final List<AvailableMeasuresCategory> categories;

  @override
  String toString() {
    return 'AvailableMeasures(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableMeasures &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$AvailableMeasuresCopyWith<_AvailableMeasures> get copyWith =>
      __$AvailableMeasuresCopyWithImpl<_AvailableMeasures>(this, _$identity);
}

abstract class _AvailableMeasures extends AvailableMeasures {
  const factory _AvailableMeasures(
          {required List<AvailableMeasuresCategory> categories}) =
      _$_AvailableMeasures;
  const _AvailableMeasures._() : super._();

  @override
  List<AvailableMeasuresCategory> get categories =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AvailableMeasuresCopyWith<_AvailableMeasures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AvailableMeasuresCategoryTearOff {
  const _$AvailableMeasuresCategoryTearOff();

  _AvailableMeasuresCategory call(
      {required String name, required List<AvailableMeasure> measures}) {
    return _AvailableMeasuresCategory(
      name: name,
      measures: measures,
    );
  }
}

/// @nodoc
const $AvailableMeasuresCategory = _$AvailableMeasuresCategoryTearOff();

/// @nodoc
mixin _$AvailableMeasuresCategory {
  String get name => throw _privateConstructorUsedError;
  List<AvailableMeasure> get measures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AvailableMeasuresCategoryCopyWith<AvailableMeasuresCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableMeasuresCategoryCopyWith<$Res> {
  factory $AvailableMeasuresCategoryCopyWith(AvailableMeasuresCategory value,
          $Res Function(AvailableMeasuresCategory) then) =
      _$AvailableMeasuresCategoryCopyWithImpl<$Res>;
  $Res call({String name, List<AvailableMeasure> measures});
}

/// @nodoc
class _$AvailableMeasuresCategoryCopyWithImpl<$Res>
    implements $AvailableMeasuresCategoryCopyWith<$Res> {
  _$AvailableMeasuresCategoryCopyWithImpl(this._value, this._then);

  final AvailableMeasuresCategory _value;
  // ignore: unused_field
  final $Res Function(AvailableMeasuresCategory) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? measures = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      measures: measures == freezed
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<AvailableMeasure>,
    ));
  }
}

/// @nodoc
abstract class _$AvailableMeasuresCategoryCopyWith<$Res>
    implements $AvailableMeasuresCategoryCopyWith<$Res> {
  factory _$AvailableMeasuresCategoryCopyWith(_AvailableMeasuresCategory value,
          $Res Function(_AvailableMeasuresCategory) then) =
      __$AvailableMeasuresCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<AvailableMeasure> measures});
}

/// @nodoc
class __$AvailableMeasuresCategoryCopyWithImpl<$Res>
    extends _$AvailableMeasuresCategoryCopyWithImpl<$Res>
    implements _$AvailableMeasuresCategoryCopyWith<$Res> {
  __$AvailableMeasuresCategoryCopyWithImpl(_AvailableMeasuresCategory _value,
      $Res Function(_AvailableMeasuresCategory) _then)
      : super(_value, (v) => _then(v as _AvailableMeasuresCategory));

  @override
  _AvailableMeasuresCategory get _value =>
      super._value as _AvailableMeasuresCategory;

  @override
  $Res call({
    Object? name = freezed,
    Object? measures = freezed,
  }) {
    return _then(_AvailableMeasuresCategory(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      measures: measures == freezed
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<AvailableMeasure>,
    ));
  }
}

/// @nodoc
class _$_AvailableMeasuresCategory extends _AvailableMeasuresCategory {
  const _$_AvailableMeasuresCategory(
      {required this.name, required this.measures})
      : super._();

  @override
  final String name;
  @override
  final List<AvailableMeasure> measures;

  @override
  String toString() {
    return 'AvailableMeasuresCategory(name: $name, measures: $measures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableMeasuresCategory &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.measures, measures) ||
                const DeepCollectionEquality()
                    .equals(other.measures, measures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(measures);

  @JsonKey(ignore: true)
  @override
  _$AvailableMeasuresCategoryCopyWith<_AvailableMeasuresCategory>
      get copyWith =>
          __$AvailableMeasuresCategoryCopyWithImpl<_AvailableMeasuresCategory>(
              this, _$identity);
}

abstract class _AvailableMeasuresCategory extends AvailableMeasuresCategory {
  const factory _AvailableMeasuresCategory(
      {required String name,
      required List<AvailableMeasure> measures}) = _$_AvailableMeasuresCategory;
  const _AvailableMeasuresCategory._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<AvailableMeasure> get measures => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AvailableMeasuresCategoryCopyWith<_AvailableMeasuresCategory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AvailableMeasureTearOff {
  const _$AvailableMeasureTearOff();

  _AvailableMeasure call(
      {required String name,
      required String id,
      required String image,
      required int duration,
      required bool requires_two_helpers}) {
    return _AvailableMeasure(
      name: name,
      id: id,
      image: image,
      duration: duration,
      requires_two_helpers: requires_two_helpers,
    );
  }
}

/// @nodoc
const $AvailableMeasure = _$AvailableMeasureTearOff();

/// @nodoc
mixin _$AvailableMeasure {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  bool get requires_two_helpers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AvailableMeasureCopyWith<AvailableMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableMeasureCopyWith<$Res> {
  factory $AvailableMeasureCopyWith(
          AvailableMeasure value, $Res Function(AvailableMeasure) then) =
      _$AvailableMeasureCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String id,
      String image,
      int duration,
      bool requires_two_helpers});
}

/// @nodoc
class _$AvailableMeasureCopyWithImpl<$Res>
    implements $AvailableMeasureCopyWith<$Res> {
  _$AvailableMeasureCopyWithImpl(this._value, this._then);

  final AvailableMeasure _value;
  // ignore: unused_field
  final $Res Function(AvailableMeasure) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? duration = freezed,
    Object? requires_two_helpers = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      requires_two_helpers: requires_two_helpers == freezed
          ? _value.requires_two_helpers
          : requires_two_helpers // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AvailableMeasureCopyWith<$Res>
    implements $AvailableMeasureCopyWith<$Res> {
  factory _$AvailableMeasureCopyWith(
          _AvailableMeasure value, $Res Function(_AvailableMeasure) then) =
      __$AvailableMeasureCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String id,
      String image,
      int duration,
      bool requires_two_helpers});
}

/// @nodoc
class __$AvailableMeasureCopyWithImpl<$Res>
    extends _$AvailableMeasureCopyWithImpl<$Res>
    implements _$AvailableMeasureCopyWith<$Res> {
  __$AvailableMeasureCopyWithImpl(
      _AvailableMeasure _value, $Res Function(_AvailableMeasure) _then)
      : super(_value, (v) => _then(v as _AvailableMeasure));

  @override
  _AvailableMeasure get _value => super._value as _AvailableMeasure;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? duration = freezed,
    Object? requires_two_helpers = freezed,
  }) {
    return _then(_AvailableMeasure(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      requires_two_helpers: requires_two_helpers == freezed
          ? _value.requires_two_helpers
          : requires_two_helpers // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_AvailableMeasure extends _AvailableMeasure {
  const _$_AvailableMeasure(
      {required this.name,
      required this.id,
      required this.image,
      required this.duration,
      required this.requires_two_helpers})
      : super._();

  @override
  final String name;
  @override
  final String id;
  @override
  final String image;
  @override
  final int duration;
  @override
  final bool requires_two_helpers;

  @override
  String toString() {
    return 'AvailableMeasure(name: $name, id: $id, image: $image, duration: $duration, requires_two_helpers: $requires_two_helpers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableMeasure &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.requires_two_helpers, requires_two_helpers) ||
                const DeepCollectionEquality()
                    .equals(other.requires_two_helpers, requires_two_helpers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(requires_two_helpers);

  @JsonKey(ignore: true)
  @override
  _$AvailableMeasureCopyWith<_AvailableMeasure> get copyWith =>
      __$AvailableMeasureCopyWithImpl<_AvailableMeasure>(this, _$identity);
}

abstract class _AvailableMeasure extends AvailableMeasure {
  const factory _AvailableMeasure(
      {required String name,
      required String id,
      required String image,
      required int duration,
      required bool requires_two_helpers}) = _$_AvailableMeasure;
  const _AvailableMeasure._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  bool get requires_two_helpers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AvailableMeasureCopyWith<_AvailableMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AvailableMeasurePrerequisiteTearOff {
  const _$AvailableMeasurePrerequisiteTearOff();

  _AvailableMeasurePrerequisite call(
      {required String name, required String image}) {
    return _AvailableMeasurePrerequisite(
      name: name,
      image: image,
    );
  }
}

/// @nodoc
const $AvailableMeasurePrerequisite = _$AvailableMeasurePrerequisiteTearOff();

/// @nodoc
mixin _$AvailableMeasurePrerequisite {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AvailableMeasurePrerequisiteCopyWith<AvailableMeasurePrerequisite>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableMeasurePrerequisiteCopyWith<$Res> {
  factory $AvailableMeasurePrerequisiteCopyWith(
          AvailableMeasurePrerequisite value,
          $Res Function(AvailableMeasurePrerequisite) then) =
      _$AvailableMeasurePrerequisiteCopyWithImpl<$Res>;
  $Res call({String name, String image});
}

/// @nodoc
class _$AvailableMeasurePrerequisiteCopyWithImpl<$Res>
    implements $AvailableMeasurePrerequisiteCopyWith<$Res> {
  _$AvailableMeasurePrerequisiteCopyWithImpl(this._value, this._then);

  final AvailableMeasurePrerequisite _value;
  // ignore: unused_field
  final $Res Function(AvailableMeasurePrerequisite) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AvailableMeasurePrerequisiteCopyWith<$Res>
    implements $AvailableMeasurePrerequisiteCopyWith<$Res> {
  factory _$AvailableMeasurePrerequisiteCopyWith(
          _AvailableMeasurePrerequisite value,
          $Res Function(_AvailableMeasurePrerequisite) then) =
      __$AvailableMeasurePrerequisiteCopyWithImpl<$Res>;
  @override
  $Res call({String name, String image});
}

/// @nodoc
class __$AvailableMeasurePrerequisiteCopyWithImpl<$Res>
    extends _$AvailableMeasurePrerequisiteCopyWithImpl<$Res>
    implements _$AvailableMeasurePrerequisiteCopyWith<$Res> {
  __$AvailableMeasurePrerequisiteCopyWithImpl(
      _AvailableMeasurePrerequisite _value,
      $Res Function(_AvailableMeasurePrerequisite) _then)
      : super(_value, (v) => _then(v as _AvailableMeasurePrerequisite));

  @override
  _AvailableMeasurePrerequisite get _value =>
      super._value as _AvailableMeasurePrerequisite;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_AvailableMeasurePrerequisite(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_AvailableMeasurePrerequisite extends _AvailableMeasurePrerequisite {
  const _$_AvailableMeasurePrerequisite(
      {required this.name, required this.image})
      : super._();

  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'AvailableMeasurePrerequisite(name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableMeasurePrerequisite &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$AvailableMeasurePrerequisiteCopyWith<_AvailableMeasurePrerequisite>
      get copyWith => __$AvailableMeasurePrerequisiteCopyWithImpl<
          _AvailableMeasurePrerequisite>(this, _$identity);
}

abstract class _AvailableMeasurePrerequisite
    extends AvailableMeasurePrerequisite {
  const factory _AvailableMeasurePrerequisite(
      {required String name,
      required String image}) = _$_AvailableMeasurePrerequisite;
  const _AvailableMeasurePrerequisite._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AvailableMeasurePrerequisiteCopyWith<_AvailableMeasurePrerequisite>
      get copyWith => throw _privateConstructorUsedError;
}
