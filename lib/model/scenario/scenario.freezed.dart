// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'scenario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScenarioTearOff {
  const _$ScenarioTearOff();

  _Scenario call({required List<String> triageCategories}) {
    return _Scenario(
      triageCategories: triageCategories,
    );
  }
}

/// @nodoc
const $Scenario = _$ScenarioTearOff();

/// @nodoc
mixin _$Scenario {
  List<String> get triageCategories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScenarioCopyWith<Scenario> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScenarioCopyWith<$Res> {
  factory $ScenarioCopyWith(Scenario value, $Res Function(Scenario) then) =
      _$ScenarioCopyWithImpl<$Res>;
  $Res call({List<String> triageCategories});
}

/// @nodoc
class _$ScenarioCopyWithImpl<$Res> implements $ScenarioCopyWith<$Res> {
  _$ScenarioCopyWithImpl(this._value, this._then);

  final Scenario _value;
  // ignore: unused_field
  final $Res Function(Scenario) _then;

  @override
  $Res call({
    Object? triageCategories = freezed,
  }) {
    return _then(_value.copyWith(
      triageCategories: triageCategories == freezed
          ? _value.triageCategories
          : triageCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ScenarioCopyWith<$Res> implements $ScenarioCopyWith<$Res> {
  factory _$ScenarioCopyWith(_Scenario value, $Res Function(_Scenario) then) =
      __$ScenarioCopyWithImpl<$Res>;
  @override
  $Res call({List<String> triageCategories});
}

/// @nodoc
class __$ScenarioCopyWithImpl<$Res> extends _$ScenarioCopyWithImpl<$Res>
    implements _$ScenarioCopyWith<$Res> {
  __$ScenarioCopyWithImpl(_Scenario _value, $Res Function(_Scenario) _then)
      : super(_value, (v) => _then(v as _Scenario));

  @override
  _Scenario get _value => super._value as _Scenario;

  @override
  $Res call({
    Object? triageCategories = freezed,
  }) {
    return _then(_Scenario(
      triageCategories: triageCategories == freezed
          ? _value.triageCategories
          : triageCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_Scenario implements _Scenario {
  const _$_Scenario({required this.triageCategories});

  @override
  final List<String> triageCategories;

  @override
  String toString() {
    return 'Scenario(triageCategories: $triageCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Scenario &&
            (identical(other.triageCategories, triageCategories) ||
                const DeepCollectionEquality()
                    .equals(other.triageCategories, triageCategories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(triageCategories);

  @JsonKey(ignore: true)
  @override
  _$ScenarioCopyWith<_Scenario> get copyWith =>
      __$ScenarioCopyWithImpl<_Scenario>(this, _$identity);
}

abstract class _Scenario implements Scenario {
  const factory _Scenario({required List<String> triageCategories}) =
      _$_Scenario;

  @override
  List<String> get triageCategories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScenarioCopyWith<_Scenario> get copyWith =>
      throw _privateConstructorUsedError;
}
