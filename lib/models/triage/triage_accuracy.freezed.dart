// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_accuracy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TriageAccuracy {
  int get correct => throw _privateConstructorUsedError;
  int get over => throw _privateConstructorUsedError;
  int get under => throw _privateConstructorUsedError;
  int get notTriage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TriageAccuracyCopyWith<TriageAccuracy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriageAccuracyCopyWith<$Res> {
  factory $TriageAccuracyCopyWith(
          TriageAccuracy value, $Res Function(TriageAccuracy) then) =
      _$TriageAccuracyCopyWithImpl<$Res, TriageAccuracy>;
  @useResult
  $Res call({int correct, int over, int under, int notTriage});
}

/// @nodoc
class _$TriageAccuracyCopyWithImpl<$Res, $Val extends TriageAccuracy>
    implements $TriageAccuracyCopyWith<$Res> {
  _$TriageAccuracyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correct = null,
    Object? over = null,
    Object? under = null,
    Object? notTriage = null,
  }) {
    return _then(_value.copyWith(
      correct: null == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int,
      over: null == over
          ? _value.over
          : over // ignore: cast_nullable_to_non_nullable
              as int,
      under: null == under
          ? _value.under
          : under // ignore: cast_nullable_to_non_nullable
              as int,
      notTriage: null == notTriage
          ? _value.notTriage
          : notTriage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TriageAccuracyCopyWith<$Res>
    implements $TriageAccuracyCopyWith<$Res> {
  factory _$$_TriageAccuracyCopyWith(
          _$_TriageAccuracy value, $Res Function(_$_TriageAccuracy) then) =
      __$$_TriageAccuracyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int correct, int over, int under, int notTriage});
}

/// @nodoc
class __$$_TriageAccuracyCopyWithImpl<$Res>
    extends _$TriageAccuracyCopyWithImpl<$Res, _$_TriageAccuracy>
    implements _$$_TriageAccuracyCopyWith<$Res> {
  __$$_TriageAccuracyCopyWithImpl(
      _$_TriageAccuracy _value, $Res Function(_$_TriageAccuracy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correct = null,
    Object? over = null,
    Object? under = null,
    Object? notTriage = null,
  }) {
    return _then(_$_TriageAccuracy(
      correct: null == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int,
      over: null == over
          ? _value.over
          : over // ignore: cast_nullable_to_non_nullable
              as int,
      under: null == under
          ? _value.under
          : under // ignore: cast_nullable_to_non_nullable
              as int,
      notTriage: null == notTriage
          ? _value.notTriage
          : notTriage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TriageAccuracy implements _TriageAccuracy {
  const _$_TriageAccuracy(
      {required this.correct,
      required this.over,
      required this.under,
      required this.notTriage});

  @override
  final int correct;
  @override
  final int over;
  @override
  final int under;
  @override
  final int notTriage;

  @override
  String toString() {
    return 'TriageAccuracy(correct: $correct, over: $over, under: $under, notTriage: $notTriage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriageAccuracy &&
            (identical(other.correct, correct) || other.correct == correct) &&
            (identical(other.over, over) || other.over == over) &&
            (identical(other.under, under) || other.under == under) &&
            (identical(other.notTriage, notTriage) ||
                other.notTriage == notTriage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, correct, over, under, notTriage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriageAccuracyCopyWith<_$_TriageAccuracy> get copyWith =>
      __$$_TriageAccuracyCopyWithImpl<_$_TriageAccuracy>(this, _$identity);
}

abstract class _TriageAccuracy implements TriageAccuracy {
  const factory _TriageAccuracy(
      {required final int correct,
      required final int over,
      required final int under,
      required final int notTriage}) = _$_TriageAccuracy;

  @override
  int get correct;
  @override
  int get over;
  @override
  int get under;
  @override
  int get notTriage;
  @override
  @JsonKey(ignore: true)
  _$$_TriageAccuracyCopyWith<_$_TriageAccuracy> get copyWith =>
      throw _privateConstructorUsedError;
}
