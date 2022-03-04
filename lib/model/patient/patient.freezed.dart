// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PatientTearOff {
  const _$PatientTearOff();

  _Patient call(
      {required String patientDpsCode,
      required PatientCurrentPhase currentPhase,
      required PatientFirstImpression firstImpression,
      required PatientPersonalData personalData,
      required PatientInjuries injuries,
      required String injuryDescription,
      required String bodyCheckInformation,
      required String situationOfDiscovery,
      required String triageCategory,
      required AppliedMeasures appliedMeasures,
      required bool isCheckedOut,
      required bool isAlive}) {
    return _Patient(
      patientDpsCode: patientDpsCode,
      currentPhase: currentPhase,
      firstImpression: firstImpression,
      personalData: personalData,
      injuries: injuries,
      injuryDescription: injuryDescription,
      bodyCheckInformation: bodyCheckInformation,
      situationOfDiscovery: situationOfDiscovery,
      triageCategory: triageCategory,
      appliedMeasures: appliedMeasures,
      isCheckedOut: isCheckedOut,
      isAlive: isAlive,
    );
  }
}

/// @nodoc
const $Patient = _$PatientTearOff();

/// @nodoc
mixin _$Patient {
  String get patientDpsCode => throw _privateConstructorUsedError;
  PatientCurrentPhase get currentPhase => throw _privateConstructorUsedError;
  PatientFirstImpression get firstImpression =>
      throw _privateConstructorUsedError;
  PatientPersonalData get personalData => throw _privateConstructorUsedError;
  PatientInjuries get injuries => throw _privateConstructorUsedError;
  String get injuryDescription => throw _privateConstructorUsedError;
  String get bodyCheckInformation => throw _privateConstructorUsedError;
  String get situationOfDiscovery => throw _privateConstructorUsedError;
  String get triageCategory => throw _privateConstructorUsedError;
  AppliedMeasures get appliedMeasures => throw _privateConstructorUsedError;
  bool get isCheckedOut => throw _privateConstructorUsedError;
  bool get isAlive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res>;
  $Res call(
      {String patientDpsCode,
      PatientCurrentPhase currentPhase,
      PatientFirstImpression firstImpression,
      PatientPersonalData personalData,
      PatientInjuries injuries,
      String injuryDescription,
      String bodyCheckInformation,
      String situationOfDiscovery,
      String triageCategory,
      AppliedMeasures appliedMeasures,
      bool isCheckedOut,
      bool isAlive});

  $PatientCurrentPhaseCopyWith<$Res> get currentPhase;
  $PatientFirstImpressionCopyWith<$Res> get firstImpression;
  $PatientPersonalDataCopyWith<$Res> get personalData;
  $PatientInjuriesCopyWith<$Res> get injuries;
  $AppliedMeasuresCopyWith<$Res> get appliedMeasures;
}

/// @nodoc
class _$PatientCopyWithImpl<$Res> implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  final Patient _value;
  // ignore: unused_field
  final $Res Function(Patient) _then;

  @override
  $Res call({
    Object? patientDpsCode = freezed,
    Object? currentPhase = freezed,
    Object? firstImpression = freezed,
    Object? personalData = freezed,
    Object? injuries = freezed,
    Object? injuryDescription = freezed,
    Object? bodyCheckInformation = freezed,
    Object? situationOfDiscovery = freezed,
    Object? triageCategory = freezed,
    Object? appliedMeasures = freezed,
    Object? isCheckedOut = freezed,
    Object? isAlive = freezed,
  }) {
    return _then(_value.copyWith(
      patientDpsCode: patientDpsCode == freezed
          ? _value.patientDpsCode
          : patientDpsCode // ignore: cast_nullable_to_non_nullable
              as String,
      currentPhase: currentPhase == freezed
          ? _value.currentPhase
          : currentPhase // ignore: cast_nullable_to_non_nullable
              as PatientCurrentPhase,
      firstImpression: firstImpression == freezed
          ? _value.firstImpression
          : firstImpression // ignore: cast_nullable_to_non_nullable
              as PatientFirstImpression,
      personalData: personalData == freezed
          ? _value.personalData
          : personalData // ignore: cast_nullable_to_non_nullable
              as PatientPersonalData,
      injuries: injuries == freezed
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as PatientInjuries,
      injuryDescription: injuryDescription == freezed
          ? _value.injuryDescription
          : injuryDescription // ignore: cast_nullable_to_non_nullable
              as String,
      bodyCheckInformation: bodyCheckInformation == freezed
          ? _value.bodyCheckInformation
          : bodyCheckInformation // ignore: cast_nullable_to_non_nullable
              as String,
      situationOfDiscovery: situationOfDiscovery == freezed
          ? _value.situationOfDiscovery
          : situationOfDiscovery // ignore: cast_nullable_to_non_nullable
              as String,
      triageCategory: triageCategory == freezed
          ? _value.triageCategory
          : triageCategory // ignore: cast_nullable_to_non_nullable
              as String,
      appliedMeasures: appliedMeasures == freezed
          ? _value.appliedMeasures
          : appliedMeasures // ignore: cast_nullable_to_non_nullable
              as AppliedMeasures,
      isCheckedOut: isCheckedOut == freezed
          ? _value.isCheckedOut
          : isCheckedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isAlive: isAlive == freezed
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $PatientCurrentPhaseCopyWith<$Res> get currentPhase {
    return $PatientCurrentPhaseCopyWith<$Res>(_value.currentPhase, (value) {
      return _then(_value.copyWith(currentPhase: value));
    });
  }

  @override
  $PatientFirstImpressionCopyWith<$Res> get firstImpression {
    return $PatientFirstImpressionCopyWith<$Res>(_value.firstImpression,
        (value) {
      return _then(_value.copyWith(firstImpression: value));
    });
  }

  @override
  $PatientPersonalDataCopyWith<$Res> get personalData {
    return $PatientPersonalDataCopyWith<$Res>(_value.personalData, (value) {
      return _then(_value.copyWith(personalData: value));
    });
  }

  @override
  $PatientInjuriesCopyWith<$Res> get injuries {
    return $PatientInjuriesCopyWith<$Res>(_value.injuries, (value) {
      return _then(_value.copyWith(injuries: value));
    });
  }

  @override
  $AppliedMeasuresCopyWith<$Res> get appliedMeasures {
    return $AppliedMeasuresCopyWith<$Res>(_value.appliedMeasures, (value) {
      return _then(_value.copyWith(appliedMeasures: value));
    });
  }
}

/// @nodoc
abstract class _$PatientCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$PatientCopyWith(_Patient value, $Res Function(_Patient) then) =
      __$PatientCopyWithImpl<$Res>;
  @override
  $Res call(
      {String patientDpsCode,
      PatientCurrentPhase currentPhase,
      PatientFirstImpression firstImpression,
      PatientPersonalData personalData,
      PatientInjuries injuries,
      String injuryDescription,
      String bodyCheckInformation,
      String situationOfDiscovery,
      String triageCategory,
      AppliedMeasures appliedMeasures,
      bool isCheckedOut,
      bool isAlive});

  @override
  $PatientCurrentPhaseCopyWith<$Res> get currentPhase;
  @override
  $PatientFirstImpressionCopyWith<$Res> get firstImpression;
  @override
  $PatientPersonalDataCopyWith<$Res> get personalData;
  @override
  $PatientInjuriesCopyWith<$Res> get injuries;
  @override
  $AppliedMeasuresCopyWith<$Res> get appliedMeasures;
}

/// @nodoc
class __$PatientCopyWithImpl<$Res> extends _$PatientCopyWithImpl<$Res>
    implements _$PatientCopyWith<$Res> {
  __$PatientCopyWithImpl(_Patient _value, $Res Function(_Patient) _then)
      : super(_value, (v) => _then(v as _Patient));

  @override
  _Patient get _value => super._value as _Patient;

  @override
  $Res call({
    Object? patientDpsCode = freezed,
    Object? currentPhase = freezed,
    Object? firstImpression = freezed,
    Object? personalData = freezed,
    Object? injuries = freezed,
    Object? injuryDescription = freezed,
    Object? bodyCheckInformation = freezed,
    Object? situationOfDiscovery = freezed,
    Object? triageCategory = freezed,
    Object? appliedMeasures = freezed,
    Object? isCheckedOut = freezed,
    Object? isAlive = freezed,
  }) {
    return _then(_Patient(
      patientDpsCode: patientDpsCode == freezed
          ? _value.patientDpsCode
          : patientDpsCode // ignore: cast_nullable_to_non_nullable
              as String,
      currentPhase: currentPhase == freezed
          ? _value.currentPhase
          : currentPhase // ignore: cast_nullable_to_non_nullable
              as PatientCurrentPhase,
      firstImpression: firstImpression == freezed
          ? _value.firstImpression
          : firstImpression // ignore: cast_nullable_to_non_nullable
              as PatientFirstImpression,
      personalData: personalData == freezed
          ? _value.personalData
          : personalData // ignore: cast_nullable_to_non_nullable
              as PatientPersonalData,
      injuries: injuries == freezed
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as PatientInjuries,
      injuryDescription: injuryDescription == freezed
          ? _value.injuryDescription
          : injuryDescription // ignore: cast_nullable_to_non_nullable
              as String,
      bodyCheckInformation: bodyCheckInformation == freezed
          ? _value.bodyCheckInformation
          : bodyCheckInformation // ignore: cast_nullable_to_non_nullable
              as String,
      situationOfDiscovery: situationOfDiscovery == freezed
          ? _value.situationOfDiscovery
          : situationOfDiscovery // ignore: cast_nullable_to_non_nullable
              as String,
      triageCategory: triageCategory == freezed
          ? _value.triageCategory
          : triageCategory // ignore: cast_nullable_to_non_nullable
              as String,
      appliedMeasures: appliedMeasures == freezed
          ? _value.appliedMeasures
          : appliedMeasures // ignore: cast_nullable_to_non_nullable
              as AppliedMeasures,
      isCheckedOut: isCheckedOut == freezed
          ? _value.isCheckedOut
          : isCheckedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isAlive: isAlive == freezed
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_Patient extends _Patient with DiagnosticableTreeMixin {
  const _$_Patient(
      {required this.patientDpsCode,
      required this.currentPhase,
      required this.firstImpression,
      required this.personalData,
      required this.injuries,
      required this.injuryDescription,
      required this.bodyCheckInformation,
      required this.situationOfDiscovery,
      required this.triageCategory,
      required this.appliedMeasures,
      required this.isCheckedOut,
      required this.isAlive})
      : super._();

  @override
  final String patientDpsCode;
  @override
  final PatientCurrentPhase currentPhase;
  @override
  final PatientFirstImpression firstImpression;
  @override
  final PatientPersonalData personalData;
  @override
  final PatientInjuries injuries;
  @override
  final String injuryDescription;
  @override
  final String bodyCheckInformation;
  @override
  final String situationOfDiscovery;
  @override
  final String triageCategory;
  @override
  final AppliedMeasures appliedMeasures;
  @override
  final bool isCheckedOut;
  @override
  final bool isAlive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Patient(patientDpsCode: $patientDpsCode, currentPhase: $currentPhase, firstImpression: $firstImpression, personalData: $personalData, injuries: $injuries, injuryDescription: $injuryDescription, bodyCheckInformation: $bodyCheckInformation, situationOfDiscovery: $situationOfDiscovery, triageCategory: $triageCategory, appliedMeasures: $appliedMeasures, isCheckedOut: $isCheckedOut, isAlive: $isAlive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Patient'))
      ..add(DiagnosticsProperty('patientDpsCode', patientDpsCode))
      ..add(DiagnosticsProperty('currentPhase', currentPhase))
      ..add(DiagnosticsProperty('firstImpression', firstImpression))
      ..add(DiagnosticsProperty('personalData', personalData))
      ..add(DiagnosticsProperty('injuries', injuries))
      ..add(DiagnosticsProperty('injuryDescription', injuryDescription))
      ..add(DiagnosticsProperty('bodyCheckInformation', bodyCheckInformation))
      ..add(DiagnosticsProperty('situationOfDiscovery', situationOfDiscovery))
      ..add(DiagnosticsProperty('triageCategory', triageCategory))
      ..add(DiagnosticsProperty('appliedMeasures', appliedMeasures))
      ..add(DiagnosticsProperty('isCheckedOut', isCheckedOut))
      ..add(DiagnosticsProperty('isAlive', isAlive));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Patient &&
            (identical(other.patientDpsCode, patientDpsCode) ||
                const DeepCollectionEquality()
                    .equals(other.patientDpsCode, patientDpsCode)) &&
            (identical(other.currentPhase, currentPhase) ||
                const DeepCollectionEquality()
                    .equals(other.currentPhase, currentPhase)) &&
            (identical(other.firstImpression, firstImpression) ||
                const DeepCollectionEquality()
                    .equals(other.firstImpression, firstImpression)) &&
            (identical(other.personalData, personalData) ||
                const DeepCollectionEquality()
                    .equals(other.personalData, personalData)) &&
            (identical(other.injuries, injuries) ||
                const DeepCollectionEquality()
                    .equals(other.injuries, injuries)) &&
            (identical(other.injuryDescription, injuryDescription) ||
                const DeepCollectionEquality()
                    .equals(other.injuryDescription, injuryDescription)) &&
            (identical(other.bodyCheckInformation, bodyCheckInformation) ||
                const DeepCollectionEquality().equals(
                    other.bodyCheckInformation, bodyCheckInformation)) &&
            (identical(other.situationOfDiscovery, situationOfDiscovery) ||
                const DeepCollectionEquality().equals(
                    other.situationOfDiscovery, situationOfDiscovery)) &&
            (identical(other.triageCategory, triageCategory) ||
                const DeepCollectionEquality()
                    .equals(other.triageCategory, triageCategory)) &&
            (identical(other.appliedMeasures, appliedMeasures) ||
                const DeepCollectionEquality()
                    .equals(other.appliedMeasures, appliedMeasures)) &&
            (identical(other.isCheckedOut, isCheckedOut) ||
                const DeepCollectionEquality()
                    .equals(other.isCheckedOut, isCheckedOut)) &&
            (identical(other.isAlive, isAlive) ||
                const DeepCollectionEquality().equals(other.isAlive, isAlive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(patientDpsCode) ^
      const DeepCollectionEquality().hash(currentPhase) ^
      const DeepCollectionEquality().hash(firstImpression) ^
      const DeepCollectionEquality().hash(personalData) ^
      const DeepCollectionEquality().hash(injuries) ^
      const DeepCollectionEquality().hash(injuryDescription) ^
      const DeepCollectionEquality().hash(bodyCheckInformation) ^
      const DeepCollectionEquality().hash(situationOfDiscovery) ^
      const DeepCollectionEquality().hash(triageCategory) ^
      const DeepCollectionEquality().hash(appliedMeasures) ^
      const DeepCollectionEquality().hash(isCheckedOut) ^
      const DeepCollectionEquality().hash(isAlive);

  @JsonKey(ignore: true)
  @override
  _$PatientCopyWith<_Patient> get copyWith =>
      __$PatientCopyWithImpl<_Patient>(this, _$identity);
}

abstract class _Patient extends Patient {
  const factory _Patient(
      {required String patientDpsCode,
      required PatientCurrentPhase currentPhase,
      required PatientFirstImpression firstImpression,
      required PatientPersonalData personalData,
      required PatientInjuries injuries,
      required String injuryDescription,
      required String bodyCheckInformation,
      required String situationOfDiscovery,
      required String triageCategory,
      required AppliedMeasures appliedMeasures,
      required bool isCheckedOut,
      required bool isAlive}) = _$_Patient;
  const _Patient._() : super._();

  @override
  String get patientDpsCode => throw _privateConstructorUsedError;
  @override
  PatientCurrentPhase get currentPhase => throw _privateConstructorUsedError;
  @override
  PatientFirstImpression get firstImpression =>
      throw _privateConstructorUsedError;
  @override
  PatientPersonalData get personalData => throw _privateConstructorUsedError;
  @override
  PatientInjuries get injuries => throw _privateConstructorUsedError;
  @override
  String get injuryDescription => throw _privateConstructorUsedError;
  @override
  String get bodyCheckInformation => throw _privateConstructorUsedError;
  @override
  String get situationOfDiscovery => throw _privateConstructorUsedError;
  @override
  String get triageCategory => throw _privateConstructorUsedError;
  @override
  AppliedMeasures get appliedMeasures => throw _privateConstructorUsedError;
  @override
  bool get isCheckedOut => throw _privateConstructorUsedError;
  @override
  bool get isAlive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientCopyWith<_Patient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PatientCurrentPhaseTearOff {
  const _$PatientCurrentPhaseTearOff();

  _PatientCurrentPhase call(
      {required PatientStandardDiagnosticData standardDiagnosticData,
      required String ekg,
      required String pulmonary_auscultation,
      required String blood_pressure,
      required String spo2,
      required String spco}) {
    return _PatientCurrentPhase(
      standardDiagnosticData: standardDiagnosticData,
      ekg: ekg,
      pulmonary_auscultation: pulmonary_auscultation,
      blood_pressure: blood_pressure,
      spo2: spo2,
      spco: spco,
    );
  }
}

/// @nodoc
const $PatientCurrentPhase = _$PatientCurrentPhaseTearOff();

/// @nodoc
mixin _$PatientCurrentPhase {
  PatientStandardDiagnosticData get standardDiagnosticData =>
      throw _privateConstructorUsedError;
  String get ekg => throw _privateConstructorUsedError;
  String get pulmonary_auscultation => throw _privateConstructorUsedError;
  String get blood_pressure => throw _privateConstructorUsedError;
  String get spo2 => throw _privateConstructorUsedError;
  String get spco => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientCurrentPhaseCopyWith<PatientCurrentPhase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCurrentPhaseCopyWith<$Res> {
  factory $PatientCurrentPhaseCopyWith(
          PatientCurrentPhase value, $Res Function(PatientCurrentPhase) then) =
      _$PatientCurrentPhaseCopyWithImpl<$Res>;
  $Res call(
      {PatientStandardDiagnosticData standardDiagnosticData,
      String ekg,
      String pulmonary_auscultation,
      String blood_pressure,
      String spo2,
      String spco});

  $PatientStandardDiagnosticDataCopyWith<$Res> get standardDiagnosticData;
}

/// @nodoc
class _$PatientCurrentPhaseCopyWithImpl<$Res>
    implements $PatientCurrentPhaseCopyWith<$Res> {
  _$PatientCurrentPhaseCopyWithImpl(this._value, this._then);

  final PatientCurrentPhase _value;
  // ignore: unused_field
  final $Res Function(PatientCurrentPhase) _then;

  @override
  $Res call({
    Object? standardDiagnosticData = freezed,
    Object? ekg = freezed,
    Object? pulmonary_auscultation = freezed,
    Object? blood_pressure = freezed,
    Object? spo2 = freezed,
    Object? spco = freezed,
  }) {
    return _then(_value.copyWith(
      standardDiagnosticData: standardDiagnosticData == freezed
          ? _value.standardDiagnosticData
          : standardDiagnosticData // ignore: cast_nullable_to_non_nullable
              as PatientStandardDiagnosticData,
      ekg: ekg == freezed
          ? _value.ekg
          : ekg // ignore: cast_nullable_to_non_nullable
              as String,
      pulmonary_auscultation: pulmonary_auscultation == freezed
          ? _value.pulmonary_auscultation
          : pulmonary_auscultation // ignore: cast_nullable_to_non_nullable
              as String,
      blood_pressure: blood_pressure == freezed
          ? _value.blood_pressure
          : blood_pressure // ignore: cast_nullable_to_non_nullable
              as String,
      spo2: spo2 == freezed
          ? _value.spo2
          : spo2 // ignore: cast_nullable_to_non_nullable
              as String,
      spco: spco == freezed
          ? _value.spco
          : spco // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PatientStandardDiagnosticDataCopyWith<$Res> get standardDiagnosticData {
    return $PatientStandardDiagnosticDataCopyWith<$Res>(
        _value.standardDiagnosticData, (value) {
      return _then(_value.copyWith(standardDiagnosticData: value));
    });
  }
}

/// @nodoc
abstract class _$PatientCurrentPhaseCopyWith<$Res>
    implements $PatientCurrentPhaseCopyWith<$Res> {
  factory _$PatientCurrentPhaseCopyWith(_PatientCurrentPhase value,
          $Res Function(_PatientCurrentPhase) then) =
      __$PatientCurrentPhaseCopyWithImpl<$Res>;
  @override
  $Res call(
      {PatientStandardDiagnosticData standardDiagnosticData,
      String ekg,
      String pulmonary_auscultation,
      String blood_pressure,
      String spo2,
      String spco});

  @override
  $PatientStandardDiagnosticDataCopyWith<$Res> get standardDiagnosticData;
}

/// @nodoc
class __$PatientCurrentPhaseCopyWithImpl<$Res>
    extends _$PatientCurrentPhaseCopyWithImpl<$Res>
    implements _$PatientCurrentPhaseCopyWith<$Res> {
  __$PatientCurrentPhaseCopyWithImpl(
      _PatientCurrentPhase _value, $Res Function(_PatientCurrentPhase) _then)
      : super(_value, (v) => _then(v as _PatientCurrentPhase));

  @override
  _PatientCurrentPhase get _value => super._value as _PatientCurrentPhase;

  @override
  $Res call({
    Object? standardDiagnosticData = freezed,
    Object? ekg = freezed,
    Object? pulmonary_auscultation = freezed,
    Object? blood_pressure = freezed,
    Object? spo2 = freezed,
    Object? spco = freezed,
  }) {
    return _then(_PatientCurrentPhase(
      standardDiagnosticData: standardDiagnosticData == freezed
          ? _value.standardDiagnosticData
          : standardDiagnosticData // ignore: cast_nullable_to_non_nullable
              as PatientStandardDiagnosticData,
      ekg: ekg == freezed
          ? _value.ekg
          : ekg // ignore: cast_nullable_to_non_nullable
              as String,
      pulmonary_auscultation: pulmonary_auscultation == freezed
          ? _value.pulmonary_auscultation
          : pulmonary_auscultation // ignore: cast_nullable_to_non_nullable
              as String,
      blood_pressure: blood_pressure == freezed
          ? _value.blood_pressure
          : blood_pressure // ignore: cast_nullable_to_non_nullable
              as String,
      spo2: spo2 == freezed
          ? _value.spo2
          : spo2 // ignore: cast_nullable_to_non_nullable
              as String,
      spco: spco == freezed
          ? _value.spco
          : spco // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PatientCurrentPhase extends _PatientCurrentPhase
    with DiagnosticableTreeMixin {
  const _$_PatientCurrentPhase(
      {required this.standardDiagnosticData,
      required this.ekg,
      required this.pulmonary_auscultation,
      required this.blood_pressure,
      required this.spo2,
      required this.spco})
      : super._();

  @override
  final PatientStandardDiagnosticData standardDiagnosticData;
  @override
  final String ekg;
  @override
  final String pulmonary_auscultation;
  @override
  final String blood_pressure;
  @override
  final String spo2;
  @override
  final String spco;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientCurrentPhase(standardDiagnosticData: $standardDiagnosticData, ekg: $ekg, pulmonary_auscultation: $pulmonary_auscultation, blood_pressure: $blood_pressure, spo2: $spo2, spco: $spco)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientCurrentPhase'))
      ..add(
          DiagnosticsProperty('standardDiagnosticData', standardDiagnosticData))
      ..add(DiagnosticsProperty('ekg', ekg))
      ..add(
          DiagnosticsProperty('pulmonary_auscultation', pulmonary_auscultation))
      ..add(DiagnosticsProperty('blood_pressure', blood_pressure))
      ..add(DiagnosticsProperty('spo2', spo2))
      ..add(DiagnosticsProperty('spco', spco));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientCurrentPhase &&
            (identical(other.standardDiagnosticData, standardDiagnosticData) ||
                const DeepCollectionEquality().equals(
                    other.standardDiagnosticData, standardDiagnosticData)) &&
            (identical(other.ekg, ekg) ||
                const DeepCollectionEquality().equals(other.ekg, ekg)) &&
            (identical(other.pulmonary_auscultation, pulmonary_auscultation) ||
                const DeepCollectionEquality().equals(
                    other.pulmonary_auscultation, pulmonary_auscultation)) &&
            (identical(other.blood_pressure, blood_pressure) ||
                const DeepCollectionEquality()
                    .equals(other.blood_pressure, blood_pressure)) &&
            (identical(other.spo2, spo2) ||
                const DeepCollectionEquality().equals(other.spo2, spo2)) &&
            (identical(other.spco, spco) ||
                const DeepCollectionEquality().equals(other.spco, spco)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(standardDiagnosticData) ^
      const DeepCollectionEquality().hash(ekg) ^
      const DeepCollectionEquality().hash(pulmonary_auscultation) ^
      const DeepCollectionEquality().hash(blood_pressure) ^
      const DeepCollectionEquality().hash(spo2) ^
      const DeepCollectionEquality().hash(spco);

  @JsonKey(ignore: true)
  @override
  _$PatientCurrentPhaseCopyWith<_PatientCurrentPhase> get copyWith =>
      __$PatientCurrentPhaseCopyWithImpl<_PatientCurrentPhase>(
          this, _$identity);
}

abstract class _PatientCurrentPhase extends PatientCurrentPhase {
  const factory _PatientCurrentPhase(
      {required PatientStandardDiagnosticData standardDiagnosticData,
      required String ekg,
      required String pulmonary_auscultation,
      required String blood_pressure,
      required String spo2,
      required String spco}) = _$_PatientCurrentPhase;
  const _PatientCurrentPhase._() : super._();

  @override
  PatientStandardDiagnosticData get standardDiagnosticData =>
      throw _privateConstructorUsedError;
  @override
  String get ekg => throw _privateConstructorUsedError;
  @override
  String get pulmonary_auscultation => throw _privateConstructorUsedError;
  @override
  String get blood_pressure => throw _privateConstructorUsedError;
  @override
  String get spo2 => throw _privateConstructorUsedError;
  @override
  String get spco => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientCurrentPhaseCopyWith<_PatientCurrentPhase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PatientStandardDiagnosticDataTearOff {
  const _$PatientStandardDiagnosticDataTearOff();

  _PatientStandardDiagnosticData call(
      {required PatientBreathing breathing,
      required PatientCirculation circulation,
      required PatientDisability disability,
      required PatientExposure exposure,
      required String airway,
      required String exsang_hemorrhage,
      required String psyche}) {
    return _PatientStandardDiagnosticData(
      breathing: breathing,
      circulation: circulation,
      disability: disability,
      exposure: exposure,
      airway: airway,
      exsang_hemorrhage: exsang_hemorrhage,
      psyche: psyche,
    );
  }
}

/// @nodoc
const $PatientStandardDiagnosticData = _$PatientStandardDiagnosticDataTearOff();

/// @nodoc
mixin _$PatientStandardDiagnosticData {
  PatientBreathing get breathing => throw _privateConstructorUsedError;
  PatientCirculation get circulation => throw _privateConstructorUsedError;
  PatientDisability get disability => throw _privateConstructorUsedError;
  PatientExposure get exposure => throw _privateConstructorUsedError;
  String get airway => throw _privateConstructorUsedError;
  String get exsang_hemorrhage => throw _privateConstructorUsedError;
  String get psyche => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientStandardDiagnosticDataCopyWith<PatientStandardDiagnosticData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientStandardDiagnosticDataCopyWith<$Res> {
  factory $PatientStandardDiagnosticDataCopyWith(
          PatientStandardDiagnosticData value,
          $Res Function(PatientStandardDiagnosticData) then) =
      _$PatientStandardDiagnosticDataCopyWithImpl<$Res>;
  $Res call(
      {PatientBreathing breathing,
      PatientCirculation circulation,
      PatientDisability disability,
      PatientExposure exposure,
      String airway,
      String exsang_hemorrhage,
      String psyche});

  $PatientBreathingCopyWith<$Res> get breathing;
  $PatientCirculationCopyWith<$Res> get circulation;
  $PatientDisabilityCopyWith<$Res> get disability;
  $PatientExposureCopyWith<$Res> get exposure;
}

/// @nodoc
class _$PatientStandardDiagnosticDataCopyWithImpl<$Res>
    implements $PatientStandardDiagnosticDataCopyWith<$Res> {
  _$PatientStandardDiagnosticDataCopyWithImpl(this._value, this._then);

  final PatientStandardDiagnosticData _value;
  // ignore: unused_field
  final $Res Function(PatientStandardDiagnosticData) _then;

  @override
  $Res call({
    Object? breathing = freezed,
    Object? circulation = freezed,
    Object? disability = freezed,
    Object? exposure = freezed,
    Object? airway = freezed,
    Object? exsang_hemorrhage = freezed,
    Object? psyche = freezed,
  }) {
    return _then(_value.copyWith(
      breathing: breathing == freezed
          ? _value.breathing
          : breathing // ignore: cast_nullable_to_non_nullable
              as PatientBreathing,
      circulation: circulation == freezed
          ? _value.circulation
          : circulation // ignore: cast_nullable_to_non_nullable
              as PatientCirculation,
      disability: disability == freezed
          ? _value.disability
          : disability // ignore: cast_nullable_to_non_nullable
              as PatientDisability,
      exposure: exposure == freezed
          ? _value.exposure
          : exposure // ignore: cast_nullable_to_non_nullable
              as PatientExposure,
      airway: airway == freezed
          ? _value.airway
          : airway // ignore: cast_nullable_to_non_nullable
              as String,
      exsang_hemorrhage: exsang_hemorrhage == freezed
          ? _value.exsang_hemorrhage
          : exsang_hemorrhage // ignore: cast_nullable_to_non_nullable
              as String,
      psyche: psyche == freezed
          ? _value.psyche
          : psyche // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PatientBreathingCopyWith<$Res> get breathing {
    return $PatientBreathingCopyWith<$Res>(_value.breathing, (value) {
      return _then(_value.copyWith(breathing: value));
    });
  }

  @override
  $PatientCirculationCopyWith<$Res> get circulation {
    return $PatientCirculationCopyWith<$Res>(_value.circulation, (value) {
      return _then(_value.copyWith(circulation: value));
    });
  }

  @override
  $PatientDisabilityCopyWith<$Res> get disability {
    return $PatientDisabilityCopyWith<$Res>(_value.disability, (value) {
      return _then(_value.copyWith(disability: value));
    });
  }

  @override
  $PatientExposureCopyWith<$Res> get exposure {
    return $PatientExposureCopyWith<$Res>(_value.exposure, (value) {
      return _then(_value.copyWith(exposure: value));
    });
  }
}

/// @nodoc
abstract class _$PatientStandardDiagnosticDataCopyWith<$Res>
    implements $PatientStandardDiagnosticDataCopyWith<$Res> {
  factory _$PatientStandardDiagnosticDataCopyWith(
          _PatientStandardDiagnosticData value,
          $Res Function(_PatientStandardDiagnosticData) then) =
      __$PatientStandardDiagnosticDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {PatientBreathing breathing,
      PatientCirculation circulation,
      PatientDisability disability,
      PatientExposure exposure,
      String airway,
      String exsang_hemorrhage,
      String psyche});

  @override
  $PatientBreathingCopyWith<$Res> get breathing;
  @override
  $PatientCirculationCopyWith<$Res> get circulation;
  @override
  $PatientDisabilityCopyWith<$Res> get disability;
  @override
  $PatientExposureCopyWith<$Res> get exposure;
}

/// @nodoc
class __$PatientStandardDiagnosticDataCopyWithImpl<$Res>
    extends _$PatientStandardDiagnosticDataCopyWithImpl<$Res>
    implements _$PatientStandardDiagnosticDataCopyWith<$Res> {
  __$PatientStandardDiagnosticDataCopyWithImpl(
      _PatientStandardDiagnosticData _value,
      $Res Function(_PatientStandardDiagnosticData) _then)
      : super(_value, (v) => _then(v as _PatientStandardDiagnosticData));

  @override
  _PatientStandardDiagnosticData get _value =>
      super._value as _PatientStandardDiagnosticData;

  @override
  $Res call({
    Object? breathing = freezed,
    Object? circulation = freezed,
    Object? disability = freezed,
    Object? exposure = freezed,
    Object? airway = freezed,
    Object? exsang_hemorrhage = freezed,
    Object? psyche = freezed,
  }) {
    return _then(_PatientStandardDiagnosticData(
      breathing: breathing == freezed
          ? _value.breathing
          : breathing // ignore: cast_nullable_to_non_nullable
              as PatientBreathing,
      circulation: circulation == freezed
          ? _value.circulation
          : circulation // ignore: cast_nullable_to_non_nullable
              as PatientCirculation,
      disability: disability == freezed
          ? _value.disability
          : disability // ignore: cast_nullable_to_non_nullable
              as PatientDisability,
      exposure: exposure == freezed
          ? _value.exposure
          : exposure // ignore: cast_nullable_to_non_nullable
              as PatientExposure,
      airway: airway == freezed
          ? _value.airway
          : airway // ignore: cast_nullable_to_non_nullable
              as String,
      exsang_hemorrhage: exsang_hemorrhage == freezed
          ? _value.exsang_hemorrhage
          : exsang_hemorrhage // ignore: cast_nullable_to_non_nullable
              as String,
      psyche: psyche == freezed
          ? _value.psyche
          : psyche // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PatientStandardDiagnosticData extends _PatientStandardDiagnosticData
    with DiagnosticableTreeMixin {
  const _$_PatientStandardDiagnosticData(
      {required this.breathing,
      required this.circulation,
      required this.disability,
      required this.exposure,
      required this.airway,
      required this.exsang_hemorrhage,
      required this.psyche})
      : super._();

  @override
  final PatientBreathing breathing;
  @override
  final PatientCirculation circulation;
  @override
  final PatientDisability disability;
  @override
  final PatientExposure exposure;
  @override
  final String airway;
  @override
  final String exsang_hemorrhage;
  @override
  final String psyche;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientStandardDiagnosticData(breathing: $breathing, circulation: $circulation, disability: $disability, exposure: $exposure, airway: $airway, exsang_hemorrhage: $exsang_hemorrhage, psyche: $psyche)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientStandardDiagnosticData'))
      ..add(DiagnosticsProperty('breathing', breathing))
      ..add(DiagnosticsProperty('circulation', circulation))
      ..add(DiagnosticsProperty('disability', disability))
      ..add(DiagnosticsProperty('exposure', exposure))
      ..add(DiagnosticsProperty('airway', airway))
      ..add(DiagnosticsProperty('exsang_hemorrhage', exsang_hemorrhage))
      ..add(DiagnosticsProperty('psyche', psyche));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientStandardDiagnosticData &&
            (identical(other.breathing, breathing) ||
                const DeepCollectionEquality()
                    .equals(other.breathing, breathing)) &&
            (identical(other.circulation, circulation) ||
                const DeepCollectionEquality()
                    .equals(other.circulation, circulation)) &&
            (identical(other.disability, disability) ||
                const DeepCollectionEquality()
                    .equals(other.disability, disability)) &&
            (identical(other.exposure, exposure) ||
                const DeepCollectionEquality()
                    .equals(other.exposure, exposure)) &&
            (identical(other.airway, airway) ||
                const DeepCollectionEquality().equals(other.airway, airway)) &&
            (identical(other.exsang_hemorrhage, exsang_hemorrhage) ||
                const DeepCollectionEquality()
                    .equals(other.exsang_hemorrhage, exsang_hemorrhage)) &&
            (identical(other.psyche, psyche) ||
                const DeepCollectionEquality().equals(other.psyche, psyche)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(breathing) ^
      const DeepCollectionEquality().hash(circulation) ^
      const DeepCollectionEquality().hash(disability) ^
      const DeepCollectionEquality().hash(exposure) ^
      const DeepCollectionEquality().hash(airway) ^
      const DeepCollectionEquality().hash(exsang_hemorrhage) ^
      const DeepCollectionEquality().hash(psyche);

  @JsonKey(ignore: true)
  @override
  _$PatientStandardDiagnosticDataCopyWith<_PatientStandardDiagnosticData>
      get copyWith => __$PatientStandardDiagnosticDataCopyWithImpl<
          _PatientStandardDiagnosticData>(this, _$identity);
}

abstract class _PatientStandardDiagnosticData
    extends PatientStandardDiagnosticData {
  const factory _PatientStandardDiagnosticData(
      {required PatientBreathing breathing,
      required PatientCirculation circulation,
      required PatientDisability disability,
      required PatientExposure exposure,
      required String airway,
      required String exsang_hemorrhage,
      required String psyche}) = _$_PatientStandardDiagnosticData;
  const _PatientStandardDiagnosticData._() : super._();

  @override
  PatientBreathing get breathing => throw _privateConstructorUsedError;
  @override
  PatientCirculation get circulation => throw _privateConstructorUsedError;
  @override
  PatientDisability get disability => throw _privateConstructorUsedError;
  @override
  PatientExposure get exposure => throw _privateConstructorUsedError;
  @override
  String get airway => throw _privateConstructorUsedError;
  @override
  String get exsang_hemorrhage => throw _privateConstructorUsedError;
  @override
  String get psyche => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientStandardDiagnosticDataCopyWith<_PatientStandardDiagnosticData>
      get copyWith => throw _privateConstructorUsedError;
}

PatientBreathing _$PatientBreathingFromJson(Map<String, dynamic> json) {
  return _PatientBreathing.fromJson(json);
}

/// @nodoc
class _$PatientBreathingTearOff {
  const _$PatientBreathingTearOff();

  _PatientBreathing call(
      {required String pattern,
      required String frequency,
      required bool has_cyanosis}) {
    return _PatientBreathing(
      pattern: pattern,
      frequency: frequency,
      has_cyanosis: has_cyanosis,
    );
  }

  PatientBreathing fromJson(Map<String, Object> json) {
    return PatientBreathing.fromJson(json);
  }
}

/// @nodoc
const $PatientBreathing = _$PatientBreathingTearOff();

/// @nodoc
mixin _$PatientBreathing {
  String get pattern => throw _privateConstructorUsedError;
  String get frequency => throw _privateConstructorUsedError;
  bool get has_cyanosis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientBreathingCopyWith<PatientBreathing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientBreathingCopyWith<$Res> {
  factory $PatientBreathingCopyWith(
          PatientBreathing value, $Res Function(PatientBreathing) then) =
      _$PatientBreathingCopyWithImpl<$Res>;
  $Res call({String pattern, String frequency, bool has_cyanosis});
}

/// @nodoc
class _$PatientBreathingCopyWithImpl<$Res>
    implements $PatientBreathingCopyWith<$Res> {
  _$PatientBreathingCopyWithImpl(this._value, this._then);

  final PatientBreathing _value;
  // ignore: unused_field
  final $Res Function(PatientBreathing) _then;

  @override
  $Res call({
    Object? pattern = freezed,
    Object? frequency = freezed,
    Object? has_cyanosis = freezed,
  }) {
    return _then(_value.copyWith(
      pattern: pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      has_cyanosis: has_cyanosis == freezed
          ? _value.has_cyanosis
          : has_cyanosis // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PatientBreathingCopyWith<$Res>
    implements $PatientBreathingCopyWith<$Res> {
  factory _$PatientBreathingCopyWith(
          _PatientBreathing value, $Res Function(_PatientBreathing) then) =
      __$PatientBreathingCopyWithImpl<$Res>;
  @override
  $Res call({String pattern, String frequency, bool has_cyanosis});
}

/// @nodoc
class __$PatientBreathingCopyWithImpl<$Res>
    extends _$PatientBreathingCopyWithImpl<$Res>
    implements _$PatientBreathingCopyWith<$Res> {
  __$PatientBreathingCopyWithImpl(
      _PatientBreathing _value, $Res Function(_PatientBreathing) _then)
      : super(_value, (v) => _then(v as _PatientBreathing));

  @override
  _PatientBreathing get _value => super._value as _PatientBreathing;

  @override
  $Res call({
    Object? pattern = freezed,
    Object? frequency = freezed,
    Object? has_cyanosis = freezed,
  }) {
    return _then(_PatientBreathing(
      pattern: pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      has_cyanosis: has_cyanosis == freezed
          ? _value.has_cyanosis
          : has_cyanosis // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PatientBreathing
    with DiagnosticableTreeMixin
    implements _PatientBreathing {
  const _$_PatientBreathing(
      {required this.pattern,
      required this.frequency,
      required this.has_cyanosis});

  factory _$_PatientBreathing.fromJson(Map<String, dynamic> json) =>
      _$_$_PatientBreathingFromJson(json);

  @override
  final String pattern;
  @override
  final String frequency;
  @override
  final bool has_cyanosis;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientBreathing(pattern: $pattern, frequency: $frequency, has_cyanosis: $has_cyanosis)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientBreathing'))
      ..add(DiagnosticsProperty('pattern', pattern))
      ..add(DiagnosticsProperty('frequency', frequency))
      ..add(DiagnosticsProperty('has_cyanosis', has_cyanosis));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientBreathing &&
            (identical(other.pattern, pattern) ||
                const DeepCollectionEquality()
                    .equals(other.pattern, pattern)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.has_cyanosis, has_cyanosis) ||
                const DeepCollectionEquality()
                    .equals(other.has_cyanosis, has_cyanosis)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pattern) ^
      const DeepCollectionEquality().hash(frequency) ^
      const DeepCollectionEquality().hash(has_cyanosis);

  @JsonKey(ignore: true)
  @override
  _$PatientBreathingCopyWith<_PatientBreathing> get copyWith =>
      __$PatientBreathingCopyWithImpl<_PatientBreathing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PatientBreathingToJson(this);
  }
}

abstract class _PatientBreathing implements PatientBreathing {
  const factory _PatientBreathing(
      {required String pattern,
      required String frequency,
      required bool has_cyanosis}) = _$_PatientBreathing;

  factory _PatientBreathing.fromJson(Map<String, dynamic> json) =
      _$_PatientBreathing.fromJson;

  @override
  String get pattern => throw _privateConstructorUsedError;
  @override
  String get frequency => throw _privateConstructorUsedError;
  @override
  bool get has_cyanosis => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientBreathingCopyWith<_PatientBreathing> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientCirculation _$PatientCirculationFromJson(Map<String, dynamic> json) {
  return _PatientCirculation.fromJson(json);
}

/// @nodoc
class _$PatientCirculationTearOff {
  const _$PatientCirculationTearOff();

  _PatientCirculation call(
      {required String rhythm,
      required String pulse,
      required String pulse_place,
      required String recap}) {
    return _PatientCirculation(
      rhythm: rhythm,
      pulse: pulse,
      pulse_place: pulse_place,
      recap: recap,
    );
  }

  PatientCirculation fromJson(Map<String, Object> json) {
    return PatientCirculation.fromJson(json);
  }
}

/// @nodoc
const $PatientCirculation = _$PatientCirculationTearOff();

/// @nodoc
mixin _$PatientCirculation {
  String get rhythm => throw _privateConstructorUsedError;
  String get pulse => throw _privateConstructorUsedError;
  String get pulse_place => throw _privateConstructorUsedError;
  String get recap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCirculationCopyWith<PatientCirculation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCirculationCopyWith<$Res> {
  factory $PatientCirculationCopyWith(
          PatientCirculation value, $Res Function(PatientCirculation) then) =
      _$PatientCirculationCopyWithImpl<$Res>;
  $Res call({String rhythm, String pulse, String pulse_place, String recap});
}

/// @nodoc
class _$PatientCirculationCopyWithImpl<$Res>
    implements $PatientCirculationCopyWith<$Res> {
  _$PatientCirculationCopyWithImpl(this._value, this._then);

  final PatientCirculation _value;
  // ignore: unused_field
  final $Res Function(PatientCirculation) _then;

  @override
  $Res call({
    Object? rhythm = freezed,
    Object? pulse = freezed,
    Object? pulse_place = freezed,
    Object? recap = freezed,
  }) {
    return _then(_value.copyWith(
      rhythm: rhythm == freezed
          ? _value.rhythm
          : rhythm // ignore: cast_nullable_to_non_nullable
              as String,
      pulse: pulse == freezed
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as String,
      pulse_place: pulse_place == freezed
          ? _value.pulse_place
          : pulse_place // ignore: cast_nullable_to_non_nullable
              as String,
      recap: recap == freezed
          ? _value.recap
          : recap // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PatientCirculationCopyWith<$Res>
    implements $PatientCirculationCopyWith<$Res> {
  factory _$PatientCirculationCopyWith(
          _PatientCirculation value, $Res Function(_PatientCirculation) then) =
      __$PatientCirculationCopyWithImpl<$Res>;
  @override
  $Res call({String rhythm, String pulse, String pulse_place, String recap});
}

/// @nodoc
class __$PatientCirculationCopyWithImpl<$Res>
    extends _$PatientCirculationCopyWithImpl<$Res>
    implements _$PatientCirculationCopyWith<$Res> {
  __$PatientCirculationCopyWithImpl(
      _PatientCirculation _value, $Res Function(_PatientCirculation) _then)
      : super(_value, (v) => _then(v as _PatientCirculation));

  @override
  _PatientCirculation get _value => super._value as _PatientCirculation;

  @override
  $Res call({
    Object? rhythm = freezed,
    Object? pulse = freezed,
    Object? pulse_place = freezed,
    Object? recap = freezed,
  }) {
    return _then(_PatientCirculation(
      rhythm: rhythm == freezed
          ? _value.rhythm
          : rhythm // ignore: cast_nullable_to_non_nullable
              as String,
      pulse: pulse == freezed
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as String,
      pulse_place: pulse_place == freezed
          ? _value.pulse_place
          : pulse_place // ignore: cast_nullable_to_non_nullable
              as String,
      recap: recap == freezed
          ? _value.recap
          : recap // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PatientCirculation
    with DiagnosticableTreeMixin
    implements _PatientCirculation {
  const _$_PatientCirculation(
      {required this.rhythm,
      required this.pulse,
      required this.pulse_place,
      required this.recap});

  factory _$_PatientCirculation.fromJson(Map<String, dynamic> json) =>
      _$_$_PatientCirculationFromJson(json);

  @override
  final String rhythm;
  @override
  final String pulse;
  @override
  final String pulse_place;
  @override
  final String recap;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientCirculation(rhythm: $rhythm, pulse: $pulse, pulse_place: $pulse_place, recap: $recap)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientCirculation'))
      ..add(DiagnosticsProperty('rhythm', rhythm))
      ..add(DiagnosticsProperty('pulse', pulse))
      ..add(DiagnosticsProperty('pulse_place', pulse_place))
      ..add(DiagnosticsProperty('recap', recap));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientCirculation &&
            (identical(other.rhythm, rhythm) ||
                const DeepCollectionEquality().equals(other.rhythm, rhythm)) &&
            (identical(other.pulse, pulse) ||
                const DeepCollectionEquality().equals(other.pulse, pulse)) &&
            (identical(other.pulse_place, pulse_place) ||
                const DeepCollectionEquality()
                    .equals(other.pulse_place, pulse_place)) &&
            (identical(other.recap, recap) ||
                const DeepCollectionEquality().equals(other.recap, recap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rhythm) ^
      const DeepCollectionEquality().hash(pulse) ^
      const DeepCollectionEquality().hash(pulse_place) ^
      const DeepCollectionEquality().hash(recap);

  @JsonKey(ignore: true)
  @override
  _$PatientCirculationCopyWith<_PatientCirculation> get copyWith =>
      __$PatientCirculationCopyWithImpl<_PatientCirculation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PatientCirculationToJson(this);
  }
}

abstract class _PatientCirculation implements PatientCirculation {
  const factory _PatientCirculation(
      {required String rhythm,
      required String pulse,
      required String pulse_place,
      required String recap}) = _$_PatientCirculation;

  factory _PatientCirculation.fromJson(Map<String, dynamic> json) =
      _$_PatientCirculation.fromJson;

  @override
  String get rhythm => throw _privateConstructorUsedError;
  @override
  String get pulse => throw _privateConstructorUsedError;
  @override
  String get pulse_place => throw _privateConstructorUsedError;
  @override
  String get recap => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientCirculationCopyWith<_PatientCirculation> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientDisability _$PatientDisabilityFromJson(Map<String, dynamic> json) {
  return _PatientDisability.fromJson(json);
}

/// @nodoc
class _$PatientDisabilityTearOff {
  const _$PatientDisabilityTearOff();

  _PatientDisability call(
      {required String pupils,
      required int gcs_eyes,
      required int gcs_language,
      required int gcs_motoric_behaviour}) {
    return _PatientDisability(
      pupils: pupils,
      gcs_eyes: gcs_eyes,
      gcs_language: gcs_language,
      gcs_motoric_behaviour: gcs_motoric_behaviour,
    );
  }

  PatientDisability fromJson(Map<String, Object> json) {
    return PatientDisability.fromJson(json);
  }
}

/// @nodoc
const $PatientDisability = _$PatientDisabilityTearOff();

/// @nodoc
mixin _$PatientDisability {
  String get pupils => throw _privateConstructorUsedError;
  int get gcs_eyes => throw _privateConstructorUsedError;
  int get gcs_language => throw _privateConstructorUsedError;
  int get gcs_motoric_behaviour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientDisabilityCopyWith<PatientDisability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientDisabilityCopyWith<$Res> {
  factory $PatientDisabilityCopyWith(
          PatientDisability value, $Res Function(PatientDisability) then) =
      _$PatientDisabilityCopyWithImpl<$Res>;
  $Res call(
      {String pupils,
      int gcs_eyes,
      int gcs_language,
      int gcs_motoric_behaviour});
}

/// @nodoc
class _$PatientDisabilityCopyWithImpl<$Res>
    implements $PatientDisabilityCopyWith<$Res> {
  _$PatientDisabilityCopyWithImpl(this._value, this._then);

  final PatientDisability _value;
  // ignore: unused_field
  final $Res Function(PatientDisability) _then;

  @override
  $Res call({
    Object? pupils = freezed,
    Object? gcs_eyes = freezed,
    Object? gcs_language = freezed,
    Object? gcs_motoric_behaviour = freezed,
  }) {
    return _then(_value.copyWith(
      pupils: pupils == freezed
          ? _value.pupils
          : pupils // ignore: cast_nullable_to_non_nullable
              as String,
      gcs_eyes: gcs_eyes == freezed
          ? _value.gcs_eyes
          : gcs_eyes // ignore: cast_nullable_to_non_nullable
              as int,
      gcs_language: gcs_language == freezed
          ? _value.gcs_language
          : gcs_language // ignore: cast_nullable_to_non_nullable
              as int,
      gcs_motoric_behaviour: gcs_motoric_behaviour == freezed
          ? _value.gcs_motoric_behaviour
          : gcs_motoric_behaviour // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PatientDisabilityCopyWith<$Res>
    implements $PatientDisabilityCopyWith<$Res> {
  factory _$PatientDisabilityCopyWith(
          _PatientDisability value, $Res Function(_PatientDisability) then) =
      __$PatientDisabilityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String pupils,
      int gcs_eyes,
      int gcs_language,
      int gcs_motoric_behaviour});
}

/// @nodoc
class __$PatientDisabilityCopyWithImpl<$Res>
    extends _$PatientDisabilityCopyWithImpl<$Res>
    implements _$PatientDisabilityCopyWith<$Res> {
  __$PatientDisabilityCopyWithImpl(
      _PatientDisability _value, $Res Function(_PatientDisability) _then)
      : super(_value, (v) => _then(v as _PatientDisability));

  @override
  _PatientDisability get _value => super._value as _PatientDisability;

  @override
  $Res call({
    Object? pupils = freezed,
    Object? gcs_eyes = freezed,
    Object? gcs_language = freezed,
    Object? gcs_motoric_behaviour = freezed,
  }) {
    return _then(_PatientDisability(
      pupils: pupils == freezed
          ? _value.pupils
          : pupils // ignore: cast_nullable_to_non_nullable
              as String,
      gcs_eyes: gcs_eyes == freezed
          ? _value.gcs_eyes
          : gcs_eyes // ignore: cast_nullable_to_non_nullable
              as int,
      gcs_language: gcs_language == freezed
          ? _value.gcs_language
          : gcs_language // ignore: cast_nullable_to_non_nullable
              as int,
      gcs_motoric_behaviour: gcs_motoric_behaviour == freezed
          ? _value.gcs_motoric_behaviour
          : gcs_motoric_behaviour // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PatientDisability
    with DiagnosticableTreeMixin
    implements _PatientDisability {
  const _$_PatientDisability(
      {required this.pupils,
      required this.gcs_eyes,
      required this.gcs_language,
      required this.gcs_motoric_behaviour});

  factory _$_PatientDisability.fromJson(Map<String, dynamic> json) =>
      _$_$_PatientDisabilityFromJson(json);

  @override
  final String pupils;
  @override
  final int gcs_eyes;
  @override
  final int gcs_language;
  @override
  final int gcs_motoric_behaviour;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientDisability(pupils: $pupils, gcs_eyes: $gcs_eyes, gcs_language: $gcs_language, gcs_motoric_behaviour: $gcs_motoric_behaviour)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientDisability'))
      ..add(DiagnosticsProperty('pupils', pupils))
      ..add(DiagnosticsProperty('gcs_eyes', gcs_eyes))
      ..add(DiagnosticsProperty('gcs_language', gcs_language))
      ..add(
          DiagnosticsProperty('gcs_motoric_behaviour', gcs_motoric_behaviour));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientDisability &&
            (identical(other.pupils, pupils) ||
                const DeepCollectionEquality().equals(other.pupils, pupils)) &&
            (identical(other.gcs_eyes, gcs_eyes) ||
                const DeepCollectionEquality()
                    .equals(other.gcs_eyes, gcs_eyes)) &&
            (identical(other.gcs_language, gcs_language) ||
                const DeepCollectionEquality()
                    .equals(other.gcs_language, gcs_language)) &&
            (identical(other.gcs_motoric_behaviour, gcs_motoric_behaviour) ||
                const DeepCollectionEquality().equals(
                    other.gcs_motoric_behaviour, gcs_motoric_behaviour)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pupils) ^
      const DeepCollectionEquality().hash(gcs_eyes) ^
      const DeepCollectionEquality().hash(gcs_language) ^
      const DeepCollectionEquality().hash(gcs_motoric_behaviour);

  @JsonKey(ignore: true)
  @override
  _$PatientDisabilityCopyWith<_PatientDisability> get copyWith =>
      __$PatientDisabilityCopyWithImpl<_PatientDisability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PatientDisabilityToJson(this);
  }
}

abstract class _PatientDisability implements PatientDisability {
  const factory _PatientDisability(
      {required String pupils,
      required int gcs_eyes,
      required int gcs_language,
      required int gcs_motoric_behaviour}) = _$_PatientDisability;

  factory _PatientDisability.fromJson(Map<String, dynamic> json) =
      _$_PatientDisability.fromJson;

  @override
  String get pupils => throw _privateConstructorUsedError;
  @override
  int get gcs_eyes => throw _privateConstructorUsedError;
  @override
  int get gcs_language => throw _privateConstructorUsedError;
  @override
  int get gcs_motoric_behaviour => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientDisabilityCopyWith<_PatientDisability> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientExposure _$PatientExposureFromJson(Map<String, dynamic> json) {
  return _PatientExposure.fromJson(json);
}

/// @nodoc
class _$PatientExposureTearOff {
  const _$PatientExposureTearOff();

  _PatientExposure call({required String pain, required String skin}) {
    return _PatientExposure(
      pain: pain,
      skin: skin,
    );
  }

  PatientExposure fromJson(Map<String, Object> json) {
    return PatientExposure.fromJson(json);
  }
}

/// @nodoc
const $PatientExposure = _$PatientExposureTearOff();

/// @nodoc
mixin _$PatientExposure {
  String get pain => throw _privateConstructorUsedError;
  String get skin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientExposureCopyWith<PatientExposure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientExposureCopyWith<$Res> {
  factory $PatientExposureCopyWith(
          PatientExposure value, $Res Function(PatientExposure) then) =
      _$PatientExposureCopyWithImpl<$Res>;
  $Res call({String pain, String skin});
}

/// @nodoc
class _$PatientExposureCopyWithImpl<$Res>
    implements $PatientExposureCopyWith<$Res> {
  _$PatientExposureCopyWithImpl(this._value, this._then);

  final PatientExposure _value;
  // ignore: unused_field
  final $Res Function(PatientExposure) _then;

  @override
  $Res call({
    Object? pain = freezed,
    Object? skin = freezed,
  }) {
    return _then(_value.copyWith(
      pain: pain == freezed
          ? _value.pain
          : pain // ignore: cast_nullable_to_non_nullable
              as String,
      skin: skin == freezed
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PatientExposureCopyWith<$Res>
    implements $PatientExposureCopyWith<$Res> {
  factory _$PatientExposureCopyWith(
          _PatientExposure value, $Res Function(_PatientExposure) then) =
      __$PatientExposureCopyWithImpl<$Res>;
  @override
  $Res call({String pain, String skin});
}

/// @nodoc
class __$PatientExposureCopyWithImpl<$Res>
    extends _$PatientExposureCopyWithImpl<$Res>
    implements _$PatientExposureCopyWith<$Res> {
  __$PatientExposureCopyWithImpl(
      _PatientExposure _value, $Res Function(_PatientExposure) _then)
      : super(_value, (v) => _then(v as _PatientExposure));

  @override
  _PatientExposure get _value => super._value as _PatientExposure;

  @override
  $Res call({
    Object? pain = freezed,
    Object? skin = freezed,
  }) {
    return _then(_PatientExposure(
      pain: pain == freezed
          ? _value.pain
          : pain // ignore: cast_nullable_to_non_nullable
              as String,
      skin: skin == freezed
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PatientExposure
    with DiagnosticableTreeMixin
    implements _PatientExposure {
  const _$_PatientExposure({required this.pain, required this.skin});

  factory _$_PatientExposure.fromJson(Map<String, dynamic> json) =>
      _$_$_PatientExposureFromJson(json);

  @override
  final String pain;
  @override
  final String skin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientExposure(pain: $pain, skin: $skin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientExposure'))
      ..add(DiagnosticsProperty('pain', pain))
      ..add(DiagnosticsProperty('skin', skin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientExposure &&
            (identical(other.pain, pain) ||
                const DeepCollectionEquality().equals(other.pain, pain)) &&
            (identical(other.skin, skin) ||
                const DeepCollectionEquality().equals(other.skin, skin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pain) ^
      const DeepCollectionEquality().hash(skin);

  @JsonKey(ignore: true)
  @override
  _$PatientExposureCopyWith<_PatientExposure> get copyWith =>
      __$PatientExposureCopyWithImpl<_PatientExposure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PatientExposureToJson(this);
  }
}

abstract class _PatientExposure implements PatientExposure {
  const factory _PatientExposure({required String pain, required String skin}) =
      _$_PatientExposure;

  factory _PatientExposure.fromJson(Map<String, dynamic> json) =
      _$_PatientExposure.fromJson;

  @override
  String get pain => throw _privateConstructorUsedError;
  @override
  String get skin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientExposureCopyWith<_PatientExposure> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientPersonalData _$PatientPersonalDataFromJson(Map<String, dynamic> json) {
  return _PatientPersonalData.fromJson(json);
}

/// @nodoc
class _$PatientPersonalDataTearOff {
  const _$PatientPersonalDataTearOff();

  _PatientPersonalData call(
      {required String name,
      required String address,
      required String birth_date,
      required int age,
      required String gender,
      required String biometrics}) {
    return _PatientPersonalData(
      name: name,
      address: address,
      birth_date: birth_date,
      age: age,
      gender: gender,
      biometrics: biometrics,
    );
  }

  PatientPersonalData fromJson(Map<String, Object> json) {
    return PatientPersonalData.fromJson(json);
  }
}

/// @nodoc
const $PatientPersonalData = _$PatientPersonalDataTearOff();

/// @nodoc
mixin _$PatientPersonalData {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get birth_date => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get biometrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientPersonalDataCopyWith<PatientPersonalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientPersonalDataCopyWith<$Res> {
  factory $PatientPersonalDataCopyWith(
          PatientPersonalData value, $Res Function(PatientPersonalData) then) =
      _$PatientPersonalDataCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String address,
      String birth_date,
      int age,
      String gender,
      String biometrics});
}

/// @nodoc
class _$PatientPersonalDataCopyWithImpl<$Res>
    implements $PatientPersonalDataCopyWith<$Res> {
  _$PatientPersonalDataCopyWithImpl(this._value, this._then);

  final PatientPersonalData _value;
  // ignore: unused_field
  final $Res Function(PatientPersonalData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? birth_date = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? biometrics = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      birth_date: birth_date == freezed
          ? _value.birth_date
          : birth_date // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      biometrics: biometrics == freezed
          ? _value.biometrics
          : biometrics // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PatientPersonalDataCopyWith<$Res>
    implements $PatientPersonalDataCopyWith<$Res> {
  factory _$PatientPersonalDataCopyWith(_PatientPersonalData value,
          $Res Function(_PatientPersonalData) then) =
      __$PatientPersonalDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String address,
      String birth_date,
      int age,
      String gender,
      String biometrics});
}

/// @nodoc
class __$PatientPersonalDataCopyWithImpl<$Res>
    extends _$PatientPersonalDataCopyWithImpl<$Res>
    implements _$PatientPersonalDataCopyWith<$Res> {
  __$PatientPersonalDataCopyWithImpl(
      _PatientPersonalData _value, $Res Function(_PatientPersonalData) _then)
      : super(_value, (v) => _then(v as _PatientPersonalData));

  @override
  _PatientPersonalData get _value => super._value as _PatientPersonalData;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? birth_date = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? biometrics = freezed,
  }) {
    return _then(_PatientPersonalData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      birth_date: birth_date == freezed
          ? _value.birth_date
          : birth_date // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      biometrics: biometrics == freezed
          ? _value.biometrics
          : biometrics // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PatientPersonalData
    with DiagnosticableTreeMixin
    implements _PatientPersonalData {
  const _$_PatientPersonalData(
      {required this.name,
      required this.address,
      required this.birth_date,
      required this.age,
      required this.gender,
      required this.biometrics});

  factory _$_PatientPersonalData.fromJson(Map<String, dynamic> json) =>
      _$_$_PatientPersonalDataFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  final String birth_date;
  @override
  final int age;
  @override
  final String gender;
  @override
  final String biometrics;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientPersonalData(name: $name, address: $address, birth_date: $birth_date, age: $age, gender: $gender, biometrics: $biometrics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientPersonalData'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('birth_date', birth_date))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('biometrics', biometrics));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientPersonalData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.birth_date, birth_date) ||
                const DeepCollectionEquality()
                    .equals(other.birth_date, birth_date)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.biometrics, biometrics) ||
                const DeepCollectionEquality()
                    .equals(other.biometrics, biometrics)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(birth_date) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(biometrics);

  @JsonKey(ignore: true)
  @override
  _$PatientPersonalDataCopyWith<_PatientPersonalData> get copyWith =>
      __$PatientPersonalDataCopyWithImpl<_PatientPersonalData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PatientPersonalDataToJson(this);
  }
}

abstract class _PatientPersonalData implements PatientPersonalData {
  const factory _PatientPersonalData(
      {required String name,
      required String address,
      required String birth_date,
      required int age,
      required String gender,
      required String biometrics}) = _$_PatientPersonalData;

  factory _PatientPersonalData.fromJson(Map<String, dynamic> json) =
      _$_PatientPersonalData.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get birth_date => throw _privateConstructorUsedError;
  @override
  int get age => throw _privateConstructorUsedError;
  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  String get biometrics => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientPersonalDataCopyWith<_PatientPersonalData> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientFirstImpression _$PatientFirstImpressionFromJson(
    Map<String, dynamic> json) {
  return _PatientFirstImpression.fromJson(json);
}

/// @nodoc
class _$PatientFirstImpressionTearOff {
  const _$PatientFirstImpressionTearOff();

  _PatientFirstImpression call(
      {required bool can_walk,
      required bool is_bleeding,
      required bool is_bleeding_critically,
      required bool is_motionless,
      required bool has_cyanosis}) {
    return _PatientFirstImpression(
      can_walk: can_walk,
      is_bleeding: is_bleeding,
      is_bleeding_critically: is_bleeding_critically,
      is_motionless: is_motionless,
      has_cyanosis: has_cyanosis,
    );
  }

  PatientFirstImpression fromJson(Map<String, Object> json) {
    return PatientFirstImpression.fromJson(json);
  }
}

/// @nodoc
const $PatientFirstImpression = _$PatientFirstImpressionTearOff();

/// @nodoc
mixin _$PatientFirstImpression {
  bool get can_walk => throw _privateConstructorUsedError;
  bool get is_bleeding => throw _privateConstructorUsedError;
  bool get is_bleeding_critically => throw _privateConstructorUsedError;
  bool get is_motionless => throw _privateConstructorUsedError;
  bool get has_cyanosis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientFirstImpressionCopyWith<PatientFirstImpression> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientFirstImpressionCopyWith<$Res> {
  factory $PatientFirstImpressionCopyWith(PatientFirstImpression value,
          $Res Function(PatientFirstImpression) then) =
      _$PatientFirstImpressionCopyWithImpl<$Res>;
  $Res call(
      {bool can_walk,
      bool is_bleeding,
      bool is_bleeding_critically,
      bool is_motionless,
      bool has_cyanosis});
}

/// @nodoc
class _$PatientFirstImpressionCopyWithImpl<$Res>
    implements $PatientFirstImpressionCopyWith<$Res> {
  _$PatientFirstImpressionCopyWithImpl(this._value, this._then);

  final PatientFirstImpression _value;
  // ignore: unused_field
  final $Res Function(PatientFirstImpression) _then;

  @override
  $Res call({
    Object? can_walk = freezed,
    Object? is_bleeding = freezed,
    Object? is_bleeding_critically = freezed,
    Object? is_motionless = freezed,
    Object? has_cyanosis = freezed,
  }) {
    return _then(_value.copyWith(
      can_walk: can_walk == freezed
          ? _value.can_walk
          : can_walk // ignore: cast_nullable_to_non_nullable
              as bool,
      is_bleeding: is_bleeding == freezed
          ? _value.is_bleeding
          : is_bleeding // ignore: cast_nullable_to_non_nullable
              as bool,
      is_bleeding_critically: is_bleeding_critically == freezed
          ? _value.is_bleeding_critically
          : is_bleeding_critically // ignore: cast_nullable_to_non_nullable
              as bool,
      is_motionless: is_motionless == freezed
          ? _value.is_motionless
          : is_motionless // ignore: cast_nullable_to_non_nullable
              as bool,
      has_cyanosis: has_cyanosis == freezed
          ? _value.has_cyanosis
          : has_cyanosis // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PatientFirstImpressionCopyWith<$Res>
    implements $PatientFirstImpressionCopyWith<$Res> {
  factory _$PatientFirstImpressionCopyWith(_PatientFirstImpression value,
          $Res Function(_PatientFirstImpression) then) =
      __$PatientFirstImpressionCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool can_walk,
      bool is_bleeding,
      bool is_bleeding_critically,
      bool is_motionless,
      bool has_cyanosis});
}

/// @nodoc
class __$PatientFirstImpressionCopyWithImpl<$Res>
    extends _$PatientFirstImpressionCopyWithImpl<$Res>
    implements _$PatientFirstImpressionCopyWith<$Res> {
  __$PatientFirstImpressionCopyWithImpl(_PatientFirstImpression _value,
      $Res Function(_PatientFirstImpression) _then)
      : super(_value, (v) => _then(v as _PatientFirstImpression));

  @override
  _PatientFirstImpression get _value => super._value as _PatientFirstImpression;

  @override
  $Res call({
    Object? can_walk = freezed,
    Object? is_bleeding = freezed,
    Object? is_bleeding_critically = freezed,
    Object? is_motionless = freezed,
    Object? has_cyanosis = freezed,
  }) {
    return _then(_PatientFirstImpression(
      can_walk: can_walk == freezed
          ? _value.can_walk
          : can_walk // ignore: cast_nullable_to_non_nullable
              as bool,
      is_bleeding: is_bleeding == freezed
          ? _value.is_bleeding
          : is_bleeding // ignore: cast_nullable_to_non_nullable
              as bool,
      is_bleeding_critically: is_bleeding_critically == freezed
          ? _value.is_bleeding_critically
          : is_bleeding_critically // ignore: cast_nullable_to_non_nullable
              as bool,
      is_motionless: is_motionless == freezed
          ? _value.is_motionless
          : is_motionless // ignore: cast_nullable_to_non_nullable
              as bool,
      has_cyanosis: has_cyanosis == freezed
          ? _value.has_cyanosis
          : has_cyanosis // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PatientFirstImpression
    with DiagnosticableTreeMixin
    implements _PatientFirstImpression {
  const _$_PatientFirstImpression(
      {required this.can_walk,
      required this.is_bleeding,
      required this.is_bleeding_critically,
      required this.is_motionless,
      required this.has_cyanosis});

  factory _$_PatientFirstImpression.fromJson(Map<String, dynamic> json) =>
      _$_$_PatientFirstImpressionFromJson(json);

  @override
  final bool can_walk;
  @override
  final bool is_bleeding;
  @override
  final bool is_bleeding_critically;
  @override
  final bool is_motionless;
  @override
  final bool has_cyanosis;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientFirstImpression(can_walk: $can_walk, is_bleeding: $is_bleeding, is_bleeding_critically: $is_bleeding_critically, is_motionless: $is_motionless, has_cyanosis: $has_cyanosis)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientFirstImpression'))
      ..add(DiagnosticsProperty('can_walk', can_walk))
      ..add(DiagnosticsProperty('is_bleeding', is_bleeding))
      ..add(
          DiagnosticsProperty('is_bleeding_critically', is_bleeding_critically))
      ..add(DiagnosticsProperty('is_motionless', is_motionless))
      ..add(DiagnosticsProperty('has_cyanosis', has_cyanosis));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientFirstImpression &&
            (identical(other.can_walk, can_walk) ||
                const DeepCollectionEquality()
                    .equals(other.can_walk, can_walk)) &&
            (identical(other.is_bleeding, is_bleeding) ||
                const DeepCollectionEquality()
                    .equals(other.is_bleeding, is_bleeding)) &&
            (identical(other.is_bleeding_critically, is_bleeding_critically) ||
                const DeepCollectionEquality().equals(
                    other.is_bleeding_critically, is_bleeding_critically)) &&
            (identical(other.is_motionless, is_motionless) ||
                const DeepCollectionEquality()
                    .equals(other.is_motionless, is_motionless)) &&
            (identical(other.has_cyanosis, has_cyanosis) ||
                const DeepCollectionEquality()
                    .equals(other.has_cyanosis, has_cyanosis)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(can_walk) ^
      const DeepCollectionEquality().hash(is_bleeding) ^
      const DeepCollectionEquality().hash(is_bleeding_critically) ^
      const DeepCollectionEquality().hash(is_motionless) ^
      const DeepCollectionEquality().hash(has_cyanosis);

  @JsonKey(ignore: true)
  @override
  _$PatientFirstImpressionCopyWith<_PatientFirstImpression> get copyWith =>
      __$PatientFirstImpressionCopyWithImpl<_PatientFirstImpression>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PatientFirstImpressionToJson(this);
  }
}

abstract class _PatientFirstImpression implements PatientFirstImpression {
  const factory _PatientFirstImpression(
      {required bool can_walk,
      required bool is_bleeding,
      required bool is_bleeding_critically,
      required bool is_motionless,
      required bool has_cyanosis}) = _$_PatientFirstImpression;

  factory _PatientFirstImpression.fromJson(Map<String, dynamic> json) =
      _$_PatientFirstImpression.fromJson;

  @override
  bool get can_walk => throw _privateConstructorUsedError;
  @override
  bool get is_bleeding => throw _privateConstructorUsedError;
  @override
  bool get is_bleeding_critically => throw _privateConstructorUsedError;
  @override
  bool get is_motionless => throw _privateConstructorUsedError;
  @override
  bool get has_cyanosis => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientFirstImpressionCopyWith<_PatientFirstImpression> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientInjuries _$PatientInjuriesFromJson(Map<String, dynamic> json) {
  return _PatientInjuries.fromJson(json);
}

/// @nodoc
class _$PatientInjuriesTearOff {
  const _$PatientInjuriesTearOff();

  _PatientInjuries call({required List<dynamic> injuries}) {
    return _PatientInjuries(
      injuries: injuries,
    );
  }

  PatientInjuries fromJson(Map<String, Object> json) {
    return PatientInjuries.fromJson(json);
  }
}

/// @nodoc
const $PatientInjuries = _$PatientInjuriesTearOff();

/// @nodoc
mixin _$PatientInjuries {
  List<dynamic> get injuries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientInjuriesCopyWith<PatientInjuries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientInjuriesCopyWith<$Res> {
  factory $PatientInjuriesCopyWith(
          PatientInjuries value, $Res Function(PatientInjuries) then) =
      _$PatientInjuriesCopyWithImpl<$Res>;
  $Res call({List<dynamic> injuries});
}

/// @nodoc
class _$PatientInjuriesCopyWithImpl<$Res>
    implements $PatientInjuriesCopyWith<$Res> {
  _$PatientInjuriesCopyWithImpl(this._value, this._then);

  final PatientInjuries _value;
  // ignore: unused_field
  final $Res Function(PatientInjuries) _then;

  @override
  $Res call({
    Object? injuries = freezed,
  }) {
    return _then(_value.copyWith(
      injuries: injuries == freezed
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$PatientInjuriesCopyWith<$Res>
    implements $PatientInjuriesCopyWith<$Res> {
  factory _$PatientInjuriesCopyWith(
          _PatientInjuries value, $Res Function(_PatientInjuries) then) =
      __$PatientInjuriesCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> injuries});
}

/// @nodoc
class __$PatientInjuriesCopyWithImpl<$Res>
    extends _$PatientInjuriesCopyWithImpl<$Res>
    implements _$PatientInjuriesCopyWith<$Res> {
  __$PatientInjuriesCopyWithImpl(
      _PatientInjuries _value, $Res Function(_PatientInjuries) _then)
      : super(_value, (v) => _then(v as _PatientInjuries));

  @override
  _PatientInjuries get _value => super._value as _PatientInjuries;

  @override
  $Res call({
    Object? injuries = freezed,
  }) {
    return _then(_PatientInjuries(
      injuries: injuries == freezed
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PatientInjuries extends _PatientInjuries with DiagnosticableTreeMixin {
  const _$_PatientInjuries({required this.injuries}) : super._();

  factory _$_PatientInjuries.fromJson(Map<String, dynamic> json) =>
      _$_$_PatientInjuriesFromJson(json);

  @override
  final List<dynamic> injuries;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientInjuries(injuries: $injuries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientInjuries'))
      ..add(DiagnosticsProperty('injuries', injuries));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientInjuries &&
            (identical(other.injuries, injuries) ||
                const DeepCollectionEquality()
                    .equals(other.injuries, injuries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(injuries);

  @JsonKey(ignore: true)
  @override
  _$PatientInjuriesCopyWith<_PatientInjuries> get copyWith =>
      __$PatientInjuriesCopyWithImpl<_PatientInjuries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PatientInjuriesToJson(this);
  }
}

abstract class _PatientInjuries extends PatientInjuries {
  const factory _PatientInjuries({required List<dynamic> injuries}) =
      _$_PatientInjuries;
  const _PatientInjuries._() : super._();

  factory _PatientInjuries.fromJson(Map<String, dynamic> json) =
      _$_PatientInjuries.fromJson;

  @override
  List<dynamic> get injuries => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientInjuriesCopyWith<_PatientInjuries> get copyWith =>
      throw _privateConstructorUsedError;
}
