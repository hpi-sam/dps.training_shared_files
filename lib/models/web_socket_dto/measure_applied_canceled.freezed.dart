// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_applied_canceled.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MeasureAppliedCanceled {
  int get helperNr => throw _privateConstructorUsedError;
  int get measureId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeasureAppliedCanceledCopyWith<MeasureAppliedCanceled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureAppliedCanceledCopyWith<$Res> {
  factory $MeasureAppliedCanceledCopyWith(MeasureAppliedCanceled value,
          $Res Function(MeasureAppliedCanceled) then) =
      _$MeasureAppliedCanceledCopyWithImpl<$Res, MeasureAppliedCanceled>;
  @useResult
  $Res call({int helperNr, int measureId});
}

/// @nodoc
class _$MeasureAppliedCanceledCopyWithImpl<$Res,
        $Val extends MeasureAppliedCanceled>
    implements $MeasureAppliedCanceledCopyWith<$Res> {
  _$MeasureAppliedCanceledCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helperNr = null,
    Object? measureId = null,
  }) {
    return _then(_value.copyWith(
      helperNr: null == helperNr
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      measureId: null == measureId
          ? _value.measureId
          : measureId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeasureAppliedCanceledCopyWith<$Res>
    implements $MeasureAppliedCanceledCopyWith<$Res> {
  factory _$$_MeasureAppliedCanceledCopyWith(_$_MeasureAppliedCanceled value,
          $Res Function(_$_MeasureAppliedCanceled) then) =
      __$$_MeasureAppliedCanceledCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int helperNr, int measureId});
}

/// @nodoc
class __$$_MeasureAppliedCanceledCopyWithImpl<$Res>
    extends _$MeasureAppliedCanceledCopyWithImpl<$Res,
        _$_MeasureAppliedCanceled>
    implements _$$_MeasureAppliedCanceledCopyWith<$Res> {
  __$$_MeasureAppliedCanceledCopyWithImpl(_$_MeasureAppliedCanceled _value,
      $Res Function(_$_MeasureAppliedCanceled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helperNr = null,
    Object? measureId = null,
  }) {
    return _then(_$_MeasureAppliedCanceled(
      helperNr: null == helperNr
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      measureId: null == measureId
          ? _value.measureId
          : measureId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MeasureAppliedCanceled implements _MeasureAppliedCanceled {
  const _$_MeasureAppliedCanceled(
      {required this.helperNr, required this.measureId});

  @override
  final int helperNr;
  @override
  final int measureId;

  @override
  String toString() {
    return 'MeasureAppliedCanceled(helperNr: $helperNr, measureId: $measureId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasureAppliedCanceled &&
            (identical(other.helperNr, helperNr) ||
                other.helperNr == helperNr) &&
            (identical(other.measureId, measureId) ||
                other.measureId == measureId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, helperNr, measureId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasureAppliedCanceledCopyWith<_$_MeasureAppliedCanceled> get copyWith =>
      __$$_MeasureAppliedCanceledCopyWithImpl<_$_MeasureAppliedCanceled>(
          this, _$identity);
}

abstract class _MeasureAppliedCanceled implements MeasureAppliedCanceled {
  const factory _MeasureAppliedCanceled(
      {required final int helperNr,
      required final int measureId}) = _$_MeasureAppliedCanceled;

  @override
  int get helperNr;
  @override
  int get measureId;
  @override
  @JsonKey(ignore: true)
  _$$_MeasureAppliedCanceledCopyWith<_$_MeasureAppliedCanceled> get copyWith =>
      throw _privateConstructorUsedError;
}
