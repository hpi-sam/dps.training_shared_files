// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Room {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)
        $default, {
    required TResult Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)
        updateConfigurations,
    required TResult Function() noneActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)?
        $default, {
    TResult? Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)?
        updateConfigurations,
    TResult? Function()? noneActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)?
        $default, {
    TResult Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)?
        updateConfigurations,
    TResult Function()? noneActive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Room value) $default, {
    required TResult Function(_RoomUpdateConfigurations value)
        updateConfigurations,
    required TResult Function(_RoomNoneActive value) noneActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Room value)? $default, {
    TResult? Function(_RoomUpdateConfigurations value)? updateConfigurations,
    TResult? Function(_RoomNoneActive value)? noneActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Room value)? $default, {
    TResult Function(_RoomUpdateConfigurations value)? updateConfigurations,
    TResult Function(_RoomNoneActive value)? noneActive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RoomCopyWith<$Res> {
  factory _$$_RoomCopyWith(_$_Room value, $Res Function(_$_Room) then) =
      __$$_RoomCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String invitationCode,
      int? defaultPhaseLength,
      int? waitingTimePatient,
      int? expiringTimePatient});
}

/// @nodoc
class __$$_RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res, _$_Room>
    implements _$$_RoomCopyWith<$Res> {
  __$$_RoomCopyWithImpl(_$_Room _value, $Res Function(_$_Room) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invitationCode = null,
    Object? defaultPhaseLength = freezed,
    Object? waitingTimePatient = freezed,
    Object? expiringTimePatient = freezed,
  }) {
    return _then(_$_Room(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      invitationCode: null == invitationCode
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPhaseLength: freezed == defaultPhaseLength
          ? _value.defaultPhaseLength
          : defaultPhaseLength // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingTimePatient: freezed == waitingTimePatient
          ? _value.waitingTimePatient
          : waitingTimePatient // ignore: cast_nullable_to_non_nullable
              as int?,
      expiringTimePatient: freezed == expiringTimePatient
          ? _value.expiringTimePatient
          : expiringTimePatient // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Room extends _Room {
  const _$_Room(
      {required this.id,
      required this.invitationCode,
      this.defaultPhaseLength,
      this.waitingTimePatient,
      this.expiringTimePatient})
      : super._();

  @override
  final int id;
  @override
  final String invitationCode;
  @override
  final int? defaultPhaseLength;
  @override
  final int? waitingTimePatient;
  @override
  final int? expiringTimePatient;

  @override
  String toString() {
    return 'Room(id: $id, invitationCode: $invitationCode, defaultPhaseLength: $defaultPhaseLength, waitingTimePatient: $waitingTimePatient, expiringTimePatient: $expiringTimePatient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Room &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invitationCode, invitationCode) ||
                other.invitationCode == invitationCode) &&
            (identical(other.defaultPhaseLength, defaultPhaseLength) ||
                other.defaultPhaseLength == defaultPhaseLength) &&
            (identical(other.waitingTimePatient, waitingTimePatient) ||
                other.waitingTimePatient == waitingTimePatient) &&
            (identical(other.expiringTimePatient, expiringTimePatient) ||
                other.expiringTimePatient == expiringTimePatient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, invitationCode,
      defaultPhaseLength, waitingTimePatient, expiringTimePatient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomCopyWith<_$_Room> get copyWith =>
      __$$_RoomCopyWithImpl<_$_Room>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)
        $default, {
    required TResult Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)
        updateConfigurations,
    required TResult Function() noneActive,
  }) {
    return $default(id, invitationCode, defaultPhaseLength, waitingTimePatient,
        expiringTimePatient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)?
        $default, {
    TResult? Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)?
        updateConfigurations,
    TResult? Function()? noneActive,
  }) {
    return $default?.call(id, invitationCode, defaultPhaseLength,
        waitingTimePatient, expiringTimePatient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)?
        $default, {
    TResult Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)?
        updateConfigurations,
    TResult Function()? noneActive,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, invitationCode, defaultPhaseLength,
          waitingTimePatient, expiringTimePatient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Room value) $default, {
    required TResult Function(_RoomUpdateConfigurations value)
        updateConfigurations,
    required TResult Function(_RoomNoneActive value) noneActive,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Room value)? $default, {
    TResult? Function(_RoomUpdateConfigurations value)? updateConfigurations,
    TResult? Function(_RoomNoneActive value)? noneActive,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Room value)? $default, {
    TResult Function(_RoomUpdateConfigurations value)? updateConfigurations,
    TResult Function(_RoomNoneActive value)? noneActive,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Room extends Room {
  const factory _Room(
      {required final int id,
      required final String invitationCode,
      final int? defaultPhaseLength,
      final int? waitingTimePatient,
      final int? expiringTimePatient}) = _$_Room;
  const _Room._() : super._();

  int get id;
  String get invitationCode;
  int? get defaultPhaseLength;
  int? get waitingTimePatient;
  int? get expiringTimePatient;
  @JsonKey(ignore: true)
  _$$_RoomCopyWith<_$_Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RoomUpdateConfigurationsCopyWith<$Res> {
  factory _$$_RoomUpdateConfigurationsCopyWith(
          _$_RoomUpdateConfigurations value,
          $Res Function(_$_RoomUpdateConfigurations) then) =
      __$$_RoomUpdateConfigurationsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int defaultPhaseLength,
      int waitingTimePatient,
      int expiringTimePatient});
}

/// @nodoc
class __$$_RoomUpdateConfigurationsCopyWithImpl<$Res>
    extends _$RoomCopyWithImpl<$Res, _$_RoomUpdateConfigurations>
    implements _$$_RoomUpdateConfigurationsCopyWith<$Res> {
  __$$_RoomUpdateConfigurationsCopyWithImpl(_$_RoomUpdateConfigurations _value,
      $Res Function(_$_RoomUpdateConfigurations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultPhaseLength = null,
    Object? waitingTimePatient = null,
    Object? expiringTimePatient = null,
  }) {
    return _then(_$_RoomUpdateConfigurations(
      defaultPhaseLength: null == defaultPhaseLength
          ? _value.defaultPhaseLength
          : defaultPhaseLength // ignore: cast_nullable_to_non_nullable
              as int,
      waitingTimePatient: null == waitingTimePatient
          ? _value.waitingTimePatient
          : waitingTimePatient // ignore: cast_nullable_to_non_nullable
              as int,
      expiringTimePatient: null == expiringTimePatient
          ? _value.expiringTimePatient
          : expiringTimePatient // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RoomUpdateConfigurations extends _RoomUpdateConfigurations {
  const _$_RoomUpdateConfigurations(
      {required this.defaultPhaseLength,
      required this.waitingTimePatient,
      required this.expiringTimePatient})
      : super._();

  @override
  final int defaultPhaseLength;
  @override
  final int waitingTimePatient;
  @override
  final int expiringTimePatient;

  @override
  String toString() {
    return 'Room.updateConfigurations(defaultPhaseLength: $defaultPhaseLength, waitingTimePatient: $waitingTimePatient, expiringTimePatient: $expiringTimePatient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomUpdateConfigurations &&
            (identical(other.defaultPhaseLength, defaultPhaseLength) ||
                other.defaultPhaseLength == defaultPhaseLength) &&
            (identical(other.waitingTimePatient, waitingTimePatient) ||
                other.waitingTimePatient == waitingTimePatient) &&
            (identical(other.expiringTimePatient, expiringTimePatient) ||
                other.expiringTimePatient == expiringTimePatient));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, defaultPhaseLength, waitingTimePatient, expiringTimePatient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomUpdateConfigurationsCopyWith<_$_RoomUpdateConfigurations>
      get copyWith => __$$_RoomUpdateConfigurationsCopyWithImpl<
          _$_RoomUpdateConfigurations>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)
        $default, {
    required TResult Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)
        updateConfigurations,
    required TResult Function() noneActive,
  }) {
    return updateConfigurations(
        defaultPhaseLength, waitingTimePatient, expiringTimePatient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)?
        $default, {
    TResult? Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)?
        updateConfigurations,
    TResult? Function()? noneActive,
  }) {
    return updateConfigurations?.call(
        defaultPhaseLength, waitingTimePatient, expiringTimePatient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)?
        $default, {
    TResult Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)?
        updateConfigurations,
    TResult Function()? noneActive,
    required TResult orElse(),
  }) {
    if (updateConfigurations != null) {
      return updateConfigurations(
          defaultPhaseLength, waitingTimePatient, expiringTimePatient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Room value) $default, {
    required TResult Function(_RoomUpdateConfigurations value)
        updateConfigurations,
    required TResult Function(_RoomNoneActive value) noneActive,
  }) {
    return updateConfigurations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Room value)? $default, {
    TResult? Function(_RoomUpdateConfigurations value)? updateConfigurations,
    TResult? Function(_RoomNoneActive value)? noneActive,
  }) {
    return updateConfigurations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Room value)? $default, {
    TResult Function(_RoomUpdateConfigurations value)? updateConfigurations,
    TResult Function(_RoomNoneActive value)? noneActive,
    required TResult orElse(),
  }) {
    if (updateConfigurations != null) {
      return updateConfigurations(this);
    }
    return orElse();
  }
}

abstract class _RoomUpdateConfigurations extends Room {
  const factory _RoomUpdateConfigurations(
      {required final int defaultPhaseLength,
      required final int waitingTimePatient,
      required final int expiringTimePatient}) = _$_RoomUpdateConfigurations;
  const _RoomUpdateConfigurations._() : super._();

  int get defaultPhaseLength;
  int get waitingTimePatient;
  int get expiringTimePatient;
  @JsonKey(ignore: true)
  _$$_RoomUpdateConfigurationsCopyWith<_$_RoomUpdateConfigurations>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RoomNoneActiveCopyWith<$Res> {
  factory _$$_RoomNoneActiveCopyWith(
          _$_RoomNoneActive value, $Res Function(_$_RoomNoneActive) then) =
      __$$_RoomNoneActiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RoomNoneActiveCopyWithImpl<$Res>
    extends _$RoomCopyWithImpl<$Res, _$_RoomNoneActive>
    implements _$$_RoomNoneActiveCopyWith<$Res> {
  __$$_RoomNoneActiveCopyWithImpl(
      _$_RoomNoneActive _value, $Res Function(_$_RoomNoneActive) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RoomNoneActive extends _RoomNoneActive {
  const _$_RoomNoneActive() : super._();

  @override
  String toString() {
    return 'Room.noneActive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RoomNoneActive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)
        $default, {
    required TResult Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)
        updateConfigurations,
    required TResult Function() noneActive,
  }) {
    return noneActive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)?
        $default, {
    TResult? Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)?
        updateConfigurations,
    TResult? Function()? noneActive,
  }) {
    return noneActive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String invitationCode, int? defaultPhaseLength,
            int? waitingTimePatient, int? expiringTimePatient)?
        $default, {
    TResult Function(int defaultPhaseLength, int waitingTimePatient,
            int expiringTimePatient)?
        updateConfigurations,
    TResult Function()? noneActive,
    required TResult orElse(),
  }) {
    if (noneActive != null) {
      return noneActive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Room value) $default, {
    required TResult Function(_RoomUpdateConfigurations value)
        updateConfigurations,
    required TResult Function(_RoomNoneActive value) noneActive,
  }) {
    return noneActive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Room value)? $default, {
    TResult? Function(_RoomUpdateConfigurations value)? updateConfigurations,
    TResult? Function(_RoomNoneActive value)? noneActive,
  }) {
    return noneActive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Room value)? $default, {
    TResult Function(_RoomUpdateConfigurations value)? updateConfigurations,
    TResult Function(_RoomNoneActive value)? noneActive,
    required TResult orElse(),
  }) {
    if (noneActive != null) {
      return noneActive(this);
    }
    return orElse();
  }
}

abstract class _RoomNoneActive extends Room {
  const factory _RoomNoneActive() = _$_RoomNoneActive;
  const _RoomNoneActive._() : super._();
}
