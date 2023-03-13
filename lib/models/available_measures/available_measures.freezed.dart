// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_measures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$AvailableMeasuresCopyWithImpl<$Res, AvailableMeasures>;
  @useResult
  $Res call({List<AvailableMeasuresCategory> categories});
}

/// @nodoc
class _$AvailableMeasuresCopyWithImpl<$Res, $Val extends AvailableMeasures>
    implements $AvailableMeasuresCopyWith<$Res> {
  _$AvailableMeasuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AvailableMeasuresCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AvailableMeasuresCopyWith<$Res>
    implements $AvailableMeasuresCopyWith<$Res> {
  factory _$$_AvailableMeasuresCopyWith(_$_AvailableMeasures value,
          $Res Function(_$_AvailableMeasures) then) =
      __$$_AvailableMeasuresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AvailableMeasuresCategory> categories});
}

/// @nodoc
class __$$_AvailableMeasuresCopyWithImpl<$Res>
    extends _$AvailableMeasuresCopyWithImpl<$Res, _$_AvailableMeasures>
    implements _$$_AvailableMeasuresCopyWith<$Res> {
  __$$_AvailableMeasuresCopyWithImpl(
      _$_AvailableMeasures _value, $Res Function(_$_AvailableMeasures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$_AvailableMeasures(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AvailableMeasuresCategory>,
    ));
  }
}

/// @nodoc

class _$_AvailableMeasures extends _AvailableMeasures {
  const _$_AvailableMeasures(
      {required final List<AvailableMeasuresCategory> categories})
      : _categories = categories,
        super._();

  final List<AvailableMeasuresCategory> _categories;
  @override
  List<AvailableMeasuresCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'AvailableMeasures(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableMeasures &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailableMeasuresCopyWith<_$_AvailableMeasures> get copyWith =>
      __$$_AvailableMeasuresCopyWithImpl<_$_AvailableMeasures>(
          this, _$identity);
}

abstract class _AvailableMeasures extends AvailableMeasures {
  const factory _AvailableMeasures(
          {required final List<AvailableMeasuresCategory> categories}) =
      _$_AvailableMeasures;
  const _AvailableMeasures._() : super._();

  @override
  List<AvailableMeasuresCategory> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableMeasuresCopyWith<_$_AvailableMeasures> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$AvailableMeasuresCategoryCopyWithImpl<$Res, AvailableMeasuresCategory>;
  @useResult
  $Res call({String name, List<AvailableMeasure> measures});
}

/// @nodoc
class _$AvailableMeasuresCategoryCopyWithImpl<$Res,
        $Val extends AvailableMeasuresCategory>
    implements $AvailableMeasuresCategoryCopyWith<$Res> {
  _$AvailableMeasuresCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? measures = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      measures: null == measures
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<AvailableMeasure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AvailableMeasuresCategoryCopyWith<$Res>
    implements $AvailableMeasuresCategoryCopyWith<$Res> {
  factory _$$_AvailableMeasuresCategoryCopyWith(
          _$_AvailableMeasuresCategory value,
          $Res Function(_$_AvailableMeasuresCategory) then) =
      __$$_AvailableMeasuresCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<AvailableMeasure> measures});
}

/// @nodoc
class __$$_AvailableMeasuresCategoryCopyWithImpl<$Res>
    extends _$AvailableMeasuresCategoryCopyWithImpl<$Res,
        _$_AvailableMeasuresCategory>
    implements _$$_AvailableMeasuresCategoryCopyWith<$Res> {
  __$$_AvailableMeasuresCategoryCopyWithImpl(
      _$_AvailableMeasuresCategory _value,
      $Res Function(_$_AvailableMeasuresCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? measures = null,
  }) {
    return _then(_$_AvailableMeasuresCategory(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      measures: null == measures
          ? _value._measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<AvailableMeasure>,
    ));
  }
}

/// @nodoc

class _$_AvailableMeasuresCategory extends _AvailableMeasuresCategory {
  const _$_AvailableMeasuresCategory(
      {required this.name, required final List<AvailableMeasure> measures})
      : _measures = measures,
        super._();

  @override
  final String name;
  final List<AvailableMeasure> _measures;
  @override
  List<AvailableMeasure> get measures {
    if (_measures is EqualUnmodifiableListView) return _measures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_measures);
  }

  @override
  String toString() {
    return 'AvailableMeasuresCategory(name: $name, measures: $measures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableMeasuresCategory &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._measures, _measures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_measures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailableMeasuresCategoryCopyWith<_$_AvailableMeasuresCategory>
      get copyWith => __$$_AvailableMeasuresCategoryCopyWithImpl<
          _$_AvailableMeasuresCategory>(this, _$identity);
}

abstract class _AvailableMeasuresCategory extends AvailableMeasuresCategory {
  const factory _AvailableMeasuresCategory(
          {required final String name,
          required final List<AvailableMeasure> measures}) =
      _$_AvailableMeasuresCategory;
  const _AvailableMeasuresCategory._() : super._();

  @override
  String get name;
  @override
  List<AvailableMeasure> get measures;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableMeasuresCategoryCopyWith<_$_AvailableMeasuresCategory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AvailableMeasure {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Uri get image => throw _privateConstructorUsedError;
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
      _$AvailableMeasureCopyWithImpl<$Res, AvailableMeasure>;
  @useResult
  $Res call(
      {String name,
      String id,
      Uri image,
      int duration,
      bool requires_two_helpers});
}

/// @nodoc
class _$AvailableMeasureCopyWithImpl<$Res, $Val extends AvailableMeasure>
    implements $AvailableMeasureCopyWith<$Res> {
  _$AvailableMeasureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? image = null,
    Object? duration = null,
    Object? requires_two_helpers = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      requires_two_helpers: null == requires_two_helpers
          ? _value.requires_two_helpers
          : requires_two_helpers // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AvailableMeasureCopyWith<$Res>
    implements $AvailableMeasureCopyWith<$Res> {
  factory _$$_AvailableMeasureCopyWith(
          _$_AvailableMeasure value, $Res Function(_$_AvailableMeasure) then) =
      __$$_AvailableMeasureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      Uri image,
      int duration,
      bool requires_two_helpers});
}

/// @nodoc
class __$$_AvailableMeasureCopyWithImpl<$Res>
    extends _$AvailableMeasureCopyWithImpl<$Res, _$_AvailableMeasure>
    implements _$$_AvailableMeasureCopyWith<$Res> {
  __$$_AvailableMeasureCopyWithImpl(
      _$_AvailableMeasure _value, $Res Function(_$_AvailableMeasure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? image = null,
    Object? duration = null,
    Object? requires_two_helpers = null,
  }) {
    return _then(_$_AvailableMeasure(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      requires_two_helpers: null == requires_two_helpers
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
  final Uri image;
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
        (other.runtimeType == runtimeType &&
            other is _$_AvailableMeasure &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.requires_two_helpers, requires_two_helpers) ||
                other.requires_two_helpers == requires_two_helpers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, id, image, duration, requires_two_helpers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailableMeasureCopyWith<_$_AvailableMeasure> get copyWith =>
      __$$_AvailableMeasureCopyWithImpl<_$_AvailableMeasure>(this, _$identity);
}

abstract class _AvailableMeasure extends AvailableMeasure {
  const factory _AvailableMeasure(
      {required final String name,
      required final String id,
      required final Uri image,
      required final int duration,
      required final bool requires_two_helpers}) = _$_AvailableMeasure;
  const _AvailableMeasure._() : super._();

  @override
  String get name;
  @override
  String get id;
  @override
  Uri get image;
  @override
  int get duration;
  @override
  bool get requires_two_helpers;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableMeasureCopyWith<_$_AvailableMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AvailableMeasurePrerequisite {
  String get name => throw _privateConstructorUsedError;
  Uri get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AvailableMeasurePrerequisiteCopyWith<AvailableMeasurePrerequisite>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableMeasurePrerequisiteCopyWith<$Res> {
  factory $AvailableMeasurePrerequisiteCopyWith(
          AvailableMeasurePrerequisite value,
          $Res Function(AvailableMeasurePrerequisite) then) =
      _$AvailableMeasurePrerequisiteCopyWithImpl<$Res,
          AvailableMeasurePrerequisite>;
  @useResult
  $Res call({String name, Uri image});
}

/// @nodoc
class _$AvailableMeasurePrerequisiteCopyWithImpl<$Res,
        $Val extends AvailableMeasurePrerequisite>
    implements $AvailableMeasurePrerequisiteCopyWith<$Res> {
  _$AvailableMeasurePrerequisiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AvailableMeasurePrerequisiteCopyWith<$Res>
    implements $AvailableMeasurePrerequisiteCopyWith<$Res> {
  factory _$$_AvailableMeasurePrerequisiteCopyWith(
          _$_AvailableMeasurePrerequisite value,
          $Res Function(_$_AvailableMeasurePrerequisite) then) =
      __$$_AvailableMeasurePrerequisiteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Uri image});
}

/// @nodoc
class __$$_AvailableMeasurePrerequisiteCopyWithImpl<$Res>
    extends _$AvailableMeasurePrerequisiteCopyWithImpl<$Res,
        _$_AvailableMeasurePrerequisite>
    implements _$$_AvailableMeasurePrerequisiteCopyWith<$Res> {
  __$$_AvailableMeasurePrerequisiteCopyWithImpl(
      _$_AvailableMeasurePrerequisite _value,
      $Res Function(_$_AvailableMeasurePrerequisite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$_AvailableMeasurePrerequisite(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri,
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
  final Uri image;

  @override
  String toString() {
    return 'AvailableMeasurePrerequisite(name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableMeasurePrerequisite &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailableMeasurePrerequisiteCopyWith<_$_AvailableMeasurePrerequisite>
      get copyWith => __$$_AvailableMeasurePrerequisiteCopyWithImpl<
          _$_AvailableMeasurePrerequisite>(this, _$identity);
}

abstract class _AvailableMeasurePrerequisite
    extends AvailableMeasurePrerequisite {
  const factory _AvailableMeasurePrerequisite(
      {required final String name,
      required final Uri image}) = _$_AvailableMeasurePrerequisite;
  const _AvailableMeasurePrerequisite._() : super._();

  @override
  String get name;
  @override
  Uri get image;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableMeasurePrerequisiteCopyWith<_$_AvailableMeasurePrerequisite>
      get copyWith => throw _privateConstructorUsedError;
}
