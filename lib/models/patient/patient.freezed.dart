// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Patient {
  int get helperNr =>
      throw _privateConstructorUsedError; // This is the full DPSCode as provided by the dps naming system.
  String get completeDpsCode =>
      throw _privateConstructorUsedError; // Short version of dps code, used internally by frontend to identify patient
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
  AvailableMeasures? get availableMeasures =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res, Patient>;
  @useResult
  $Res call(
      {int helperNr,
      String completeDpsCode,
      String patientDpsCode,
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
      bool isAlive,
      AvailableMeasures? availableMeasures});

  $PatientCurrentPhaseCopyWith<$Res> get currentPhase;
  $PatientFirstImpressionCopyWith<$Res> get firstImpression;
  $PatientPersonalDataCopyWith<$Res> get personalData;
  $PatientInjuriesCopyWith<$Res> get injuries;
  $AppliedMeasuresCopyWith<$Res> get appliedMeasures;
  $AvailableMeasuresCopyWith<$Res>? get availableMeasures;
}

/// @nodoc
class _$PatientCopyWithImpl<$Res, $Val extends Patient>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helperNr = null,
    Object? completeDpsCode = null,
    Object? patientDpsCode = null,
    Object? currentPhase = null,
    Object? firstImpression = null,
    Object? personalData = null,
    Object? injuries = null,
    Object? injuryDescription = null,
    Object? bodyCheckInformation = null,
    Object? situationOfDiscovery = null,
    Object? triageCategory = null,
    Object? appliedMeasures = null,
    Object? isCheckedOut = null,
    Object? isAlive = null,
    Object? availableMeasures = freezed,
  }) {
    return _then(_value.copyWith(
      helperNr: null == helperNr
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      completeDpsCode: null == completeDpsCode
          ? _value.completeDpsCode
          : completeDpsCode // ignore: cast_nullable_to_non_nullable
              as String,
      patientDpsCode: null == patientDpsCode
          ? _value.patientDpsCode
          : patientDpsCode // ignore: cast_nullable_to_non_nullable
              as String,
      currentPhase: null == currentPhase
          ? _value.currentPhase
          : currentPhase // ignore: cast_nullable_to_non_nullable
              as PatientCurrentPhase,
      firstImpression: null == firstImpression
          ? _value.firstImpression
          : firstImpression // ignore: cast_nullable_to_non_nullable
              as PatientFirstImpression,
      personalData: null == personalData
          ? _value.personalData
          : personalData // ignore: cast_nullable_to_non_nullable
              as PatientPersonalData,
      injuries: null == injuries
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as PatientInjuries,
      injuryDescription: null == injuryDescription
          ? _value.injuryDescription
          : injuryDescription // ignore: cast_nullable_to_non_nullable
              as String,
      bodyCheckInformation: null == bodyCheckInformation
          ? _value.bodyCheckInformation
          : bodyCheckInformation // ignore: cast_nullable_to_non_nullable
              as String,
      situationOfDiscovery: null == situationOfDiscovery
          ? _value.situationOfDiscovery
          : situationOfDiscovery // ignore: cast_nullable_to_non_nullable
              as String,
      triageCategory: null == triageCategory
          ? _value.triageCategory
          : triageCategory // ignore: cast_nullable_to_non_nullable
              as String,
      appliedMeasures: null == appliedMeasures
          ? _value.appliedMeasures
          : appliedMeasures // ignore: cast_nullable_to_non_nullable
              as AppliedMeasures,
      isCheckedOut: null == isCheckedOut
          ? _value.isCheckedOut
          : isCheckedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isAlive: null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      availableMeasures: freezed == availableMeasures
          ? _value.availableMeasures
          : availableMeasures // ignore: cast_nullable_to_non_nullable
              as AvailableMeasures?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientCurrentPhaseCopyWith<$Res> get currentPhase {
    return $PatientCurrentPhaseCopyWith<$Res>(_value.currentPhase, (value) {
      return _then(_value.copyWith(currentPhase: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientFirstImpressionCopyWith<$Res> get firstImpression {
    return $PatientFirstImpressionCopyWith<$Res>(_value.firstImpression,
        (value) {
      return _then(_value.copyWith(firstImpression: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientPersonalDataCopyWith<$Res> get personalData {
    return $PatientPersonalDataCopyWith<$Res>(_value.personalData, (value) {
      return _then(_value.copyWith(personalData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientInjuriesCopyWith<$Res> get injuries {
    return $PatientInjuriesCopyWith<$Res>(_value.injuries, (value) {
      return _then(_value.copyWith(injuries: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppliedMeasuresCopyWith<$Res> get appliedMeasures {
    return $AppliedMeasuresCopyWith<$Res>(_value.appliedMeasures, (value) {
      return _then(_value.copyWith(appliedMeasures: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AvailableMeasuresCopyWith<$Res>? get availableMeasures {
    if (_value.availableMeasures == null) {
      return null;
    }

    return $AvailableMeasuresCopyWith<$Res>(_value.availableMeasures!, (value) {
      return _then(_value.copyWith(availableMeasures: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PatientCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$_PatientCopyWith(
          _$_Patient value, $Res Function(_$_Patient) then) =
      __$$_PatientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int helperNr,
      String completeDpsCode,
      String patientDpsCode,
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
      bool isAlive,
      AvailableMeasures? availableMeasures});

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
  @override
  $AvailableMeasuresCopyWith<$Res>? get availableMeasures;
}

/// @nodoc
class __$$_PatientCopyWithImpl<$Res>
    extends _$PatientCopyWithImpl<$Res, _$_Patient>
    implements _$$_PatientCopyWith<$Res> {
  __$$_PatientCopyWithImpl(_$_Patient _value, $Res Function(_$_Patient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helperNr = null,
    Object? completeDpsCode = null,
    Object? patientDpsCode = null,
    Object? currentPhase = null,
    Object? firstImpression = null,
    Object? personalData = null,
    Object? injuries = null,
    Object? injuryDescription = null,
    Object? bodyCheckInformation = null,
    Object? situationOfDiscovery = null,
    Object? triageCategory = null,
    Object? appliedMeasures = null,
    Object? isCheckedOut = null,
    Object? isAlive = null,
    Object? availableMeasures = freezed,
  }) {
    return _then(_$_Patient(
      helperNr: null == helperNr
          ? _value.helperNr
          : helperNr // ignore: cast_nullable_to_non_nullable
              as int,
      completeDpsCode: null == completeDpsCode
          ? _value.completeDpsCode
          : completeDpsCode // ignore: cast_nullable_to_non_nullable
              as String,
      patientDpsCode: null == patientDpsCode
          ? _value.patientDpsCode
          : patientDpsCode // ignore: cast_nullable_to_non_nullable
              as String,
      currentPhase: null == currentPhase
          ? _value.currentPhase
          : currentPhase // ignore: cast_nullable_to_non_nullable
              as PatientCurrentPhase,
      firstImpression: null == firstImpression
          ? _value.firstImpression
          : firstImpression // ignore: cast_nullable_to_non_nullable
              as PatientFirstImpression,
      personalData: null == personalData
          ? _value.personalData
          : personalData // ignore: cast_nullable_to_non_nullable
              as PatientPersonalData,
      injuries: null == injuries
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as PatientInjuries,
      injuryDescription: null == injuryDescription
          ? _value.injuryDescription
          : injuryDescription // ignore: cast_nullable_to_non_nullable
              as String,
      bodyCheckInformation: null == bodyCheckInformation
          ? _value.bodyCheckInformation
          : bodyCheckInformation // ignore: cast_nullable_to_non_nullable
              as String,
      situationOfDiscovery: null == situationOfDiscovery
          ? _value.situationOfDiscovery
          : situationOfDiscovery // ignore: cast_nullable_to_non_nullable
              as String,
      triageCategory: null == triageCategory
          ? _value.triageCategory
          : triageCategory // ignore: cast_nullable_to_non_nullable
              as String,
      appliedMeasures: null == appliedMeasures
          ? _value.appliedMeasures
          : appliedMeasures // ignore: cast_nullable_to_non_nullable
              as AppliedMeasures,
      isCheckedOut: null == isCheckedOut
          ? _value.isCheckedOut
          : isCheckedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isAlive: null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      availableMeasures: freezed == availableMeasures
          ? _value.availableMeasures
          : availableMeasures // ignore: cast_nullable_to_non_nullable
              as AvailableMeasures?,
    ));
  }
}

/// @nodoc

class _$_Patient extends _Patient with DiagnosticableTreeMixin {
  const _$_Patient(
      {required this.helperNr,
      required this.completeDpsCode,
      required this.patientDpsCode,
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
      required this.isAlive,
      this.availableMeasures = null})
      : super._();

  @override
  final int helperNr;
// This is the full DPSCode as provided by the dps naming system.
  @override
  final String completeDpsCode;
// Short version of dps code, used internally by frontend to identify patient
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
  @JsonKey()
  final AvailableMeasures? availableMeasures;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Patient(helperNr: $helperNr, completeDpsCode: $completeDpsCode, patientDpsCode: $patientDpsCode, currentPhase: $currentPhase, firstImpression: $firstImpression, personalData: $personalData, injuries: $injuries, injuryDescription: $injuryDescription, bodyCheckInformation: $bodyCheckInformation, situationOfDiscovery: $situationOfDiscovery, triageCategory: $triageCategory, appliedMeasures: $appliedMeasures, isCheckedOut: $isCheckedOut, isAlive: $isAlive, availableMeasures: $availableMeasures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Patient'))
      ..add(DiagnosticsProperty('helperNr', helperNr))
      ..add(DiagnosticsProperty('completeDpsCode', completeDpsCode))
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
      ..add(DiagnosticsProperty('isAlive', isAlive))
      ..add(DiagnosticsProperty('availableMeasures', availableMeasures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Patient &&
            (identical(other.helperNr, helperNr) ||
                other.helperNr == helperNr) &&
            (identical(other.completeDpsCode, completeDpsCode) ||
                other.completeDpsCode == completeDpsCode) &&
            (identical(other.patientDpsCode, patientDpsCode) ||
                other.patientDpsCode == patientDpsCode) &&
            (identical(other.currentPhase, currentPhase) ||
                other.currentPhase == currentPhase) &&
            (identical(other.firstImpression, firstImpression) ||
                other.firstImpression == firstImpression) &&
            (identical(other.personalData, personalData) ||
                other.personalData == personalData) &&
            (identical(other.injuries, injuries) ||
                other.injuries == injuries) &&
            (identical(other.injuryDescription, injuryDescription) ||
                other.injuryDescription == injuryDescription) &&
            (identical(other.bodyCheckInformation, bodyCheckInformation) ||
                other.bodyCheckInformation == bodyCheckInformation) &&
            (identical(other.situationOfDiscovery, situationOfDiscovery) ||
                other.situationOfDiscovery == situationOfDiscovery) &&
            (identical(other.triageCategory, triageCategory) ||
                other.triageCategory == triageCategory) &&
            (identical(other.appliedMeasures, appliedMeasures) ||
                other.appliedMeasures == appliedMeasures) &&
            (identical(other.isCheckedOut, isCheckedOut) ||
                other.isCheckedOut == isCheckedOut) &&
            (identical(other.isAlive, isAlive) || other.isAlive == isAlive) &&
            (identical(other.availableMeasures, availableMeasures) ||
                other.availableMeasures == availableMeasures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      helperNr,
      completeDpsCode,
      patientDpsCode,
      currentPhase,
      firstImpression,
      personalData,
      injuries,
      injuryDescription,
      bodyCheckInformation,
      situationOfDiscovery,
      triageCategory,
      appliedMeasures,
      isCheckedOut,
      isAlive,
      availableMeasures);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientCopyWith<_$_Patient> get copyWith =>
      __$$_PatientCopyWithImpl<_$_Patient>(this, _$identity);
}

abstract class _Patient extends Patient {
  const factory _Patient(
      {required final int helperNr,
      required final String completeDpsCode,
      required final String patientDpsCode,
      required final PatientCurrentPhase currentPhase,
      required final PatientFirstImpression firstImpression,
      required final PatientPersonalData personalData,
      required final PatientInjuries injuries,
      required final String injuryDescription,
      required final String bodyCheckInformation,
      required final String situationOfDiscovery,
      required final String triageCategory,
      required final AppliedMeasures appliedMeasures,
      required final bool isCheckedOut,
      required final bool isAlive,
      final AvailableMeasures? availableMeasures}) = _$_Patient;
  const _Patient._() : super._();

  @override
  int get helperNr;
  @override // This is the full DPSCode as provided by the dps naming system.
  String get completeDpsCode;
  @override // Short version of dps code, used internally by frontend to identify patient
  String get patientDpsCode;
  @override
  PatientCurrentPhase get currentPhase;
  @override
  PatientFirstImpression get firstImpression;
  @override
  PatientPersonalData get personalData;
  @override
  PatientInjuries get injuries;
  @override
  String get injuryDescription;
  @override
  String get bodyCheckInformation;
  @override
  String get situationOfDiscovery;
  @override
  String get triageCategory;
  @override
  AppliedMeasures get appliedMeasures;
  @override
  bool get isCheckedOut;
  @override
  bool get isAlive;
  @override
  AvailableMeasures? get availableMeasures;
  @override
  @JsonKey(ignore: true)
  _$$_PatientCopyWith<_$_Patient> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$PatientCurrentPhaseCopyWithImpl<$Res, PatientCurrentPhase>;
  @useResult
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
class _$PatientCurrentPhaseCopyWithImpl<$Res, $Val extends PatientCurrentPhase>
    implements $PatientCurrentPhaseCopyWith<$Res> {
  _$PatientCurrentPhaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standardDiagnosticData = null,
    Object? ekg = null,
    Object? pulmonary_auscultation = null,
    Object? blood_pressure = null,
    Object? spo2 = null,
    Object? spco = null,
  }) {
    return _then(_value.copyWith(
      standardDiagnosticData: null == standardDiagnosticData
          ? _value.standardDiagnosticData
          : standardDiagnosticData // ignore: cast_nullable_to_non_nullable
              as PatientStandardDiagnosticData,
      ekg: null == ekg
          ? _value.ekg
          : ekg // ignore: cast_nullable_to_non_nullable
              as String,
      pulmonary_auscultation: null == pulmonary_auscultation
          ? _value.pulmonary_auscultation
          : pulmonary_auscultation // ignore: cast_nullable_to_non_nullable
              as String,
      blood_pressure: null == blood_pressure
          ? _value.blood_pressure
          : blood_pressure // ignore: cast_nullable_to_non_nullable
              as String,
      spo2: null == spo2
          ? _value.spo2
          : spo2 // ignore: cast_nullable_to_non_nullable
              as String,
      spco: null == spco
          ? _value.spco
          : spco // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientStandardDiagnosticDataCopyWith<$Res> get standardDiagnosticData {
    return $PatientStandardDiagnosticDataCopyWith<$Res>(
        _value.standardDiagnosticData, (value) {
      return _then(_value.copyWith(standardDiagnosticData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PatientCurrentPhaseCopyWith<$Res>
    implements $PatientCurrentPhaseCopyWith<$Res> {
  factory _$$_PatientCurrentPhaseCopyWith(_$_PatientCurrentPhase value,
          $Res Function(_$_PatientCurrentPhase) then) =
      __$$_PatientCurrentPhaseCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_PatientCurrentPhaseCopyWithImpl<$Res>
    extends _$PatientCurrentPhaseCopyWithImpl<$Res, _$_PatientCurrentPhase>
    implements _$$_PatientCurrentPhaseCopyWith<$Res> {
  __$$_PatientCurrentPhaseCopyWithImpl(_$_PatientCurrentPhase _value,
      $Res Function(_$_PatientCurrentPhase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standardDiagnosticData = null,
    Object? ekg = null,
    Object? pulmonary_auscultation = null,
    Object? blood_pressure = null,
    Object? spo2 = null,
    Object? spco = null,
  }) {
    return _then(_$_PatientCurrentPhase(
      standardDiagnosticData: null == standardDiagnosticData
          ? _value.standardDiagnosticData
          : standardDiagnosticData // ignore: cast_nullable_to_non_nullable
              as PatientStandardDiagnosticData,
      ekg: null == ekg
          ? _value.ekg
          : ekg // ignore: cast_nullable_to_non_nullable
              as String,
      pulmonary_auscultation: null == pulmonary_auscultation
          ? _value.pulmonary_auscultation
          : pulmonary_auscultation // ignore: cast_nullable_to_non_nullable
              as String,
      blood_pressure: null == blood_pressure
          ? _value.blood_pressure
          : blood_pressure // ignore: cast_nullable_to_non_nullable
              as String,
      spo2: null == spo2
          ? _value.spo2
          : spo2 // ignore: cast_nullable_to_non_nullable
              as String,
      spco: null == spco
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
        (other.runtimeType == runtimeType &&
            other is _$_PatientCurrentPhase &&
            (identical(other.standardDiagnosticData, standardDiagnosticData) ||
                other.standardDiagnosticData == standardDiagnosticData) &&
            (identical(other.ekg, ekg) || other.ekg == ekg) &&
            (identical(other.pulmonary_auscultation, pulmonary_auscultation) ||
                other.pulmonary_auscultation == pulmonary_auscultation) &&
            (identical(other.blood_pressure, blood_pressure) ||
                other.blood_pressure == blood_pressure) &&
            (identical(other.spo2, spo2) || other.spo2 == spo2) &&
            (identical(other.spco, spco) || other.spco == spco));
  }

  @override
  int get hashCode => Object.hash(runtimeType, standardDiagnosticData, ekg,
      pulmonary_auscultation, blood_pressure, spo2, spco);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientCurrentPhaseCopyWith<_$_PatientCurrentPhase> get copyWith =>
      __$$_PatientCurrentPhaseCopyWithImpl<_$_PatientCurrentPhase>(
          this, _$identity);
}

abstract class _PatientCurrentPhase extends PatientCurrentPhase {
  const factory _PatientCurrentPhase(
      {required final PatientStandardDiagnosticData standardDiagnosticData,
      required final String ekg,
      required final String pulmonary_auscultation,
      required final String blood_pressure,
      required final String spo2,
      required final String spco}) = _$_PatientCurrentPhase;
  const _PatientCurrentPhase._() : super._();

  @override
  PatientStandardDiagnosticData get standardDiagnosticData;
  @override
  String get ekg;
  @override
  String get pulmonary_auscultation;
  @override
  String get blood_pressure;
  @override
  String get spo2;
  @override
  String get spco;
  @override
  @JsonKey(ignore: true)
  _$$_PatientCurrentPhaseCopyWith<_$_PatientCurrentPhase> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$PatientStandardDiagnosticDataCopyWithImpl<$Res,
          PatientStandardDiagnosticData>;
  @useResult
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
class _$PatientStandardDiagnosticDataCopyWithImpl<$Res,
        $Val extends PatientStandardDiagnosticData>
    implements $PatientStandardDiagnosticDataCopyWith<$Res> {
  _$PatientStandardDiagnosticDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breathing = null,
    Object? circulation = null,
    Object? disability = null,
    Object? exposure = null,
    Object? airway = null,
    Object? exsang_hemorrhage = null,
    Object? psyche = null,
  }) {
    return _then(_value.copyWith(
      breathing: null == breathing
          ? _value.breathing
          : breathing // ignore: cast_nullable_to_non_nullable
              as PatientBreathing,
      circulation: null == circulation
          ? _value.circulation
          : circulation // ignore: cast_nullable_to_non_nullable
              as PatientCirculation,
      disability: null == disability
          ? _value.disability
          : disability // ignore: cast_nullable_to_non_nullable
              as PatientDisability,
      exposure: null == exposure
          ? _value.exposure
          : exposure // ignore: cast_nullable_to_non_nullable
              as PatientExposure,
      airway: null == airway
          ? _value.airway
          : airway // ignore: cast_nullable_to_non_nullable
              as String,
      exsang_hemorrhage: null == exsang_hemorrhage
          ? _value.exsang_hemorrhage
          : exsang_hemorrhage // ignore: cast_nullable_to_non_nullable
              as String,
      psyche: null == psyche
          ? _value.psyche
          : psyche // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientBreathingCopyWith<$Res> get breathing {
    return $PatientBreathingCopyWith<$Res>(_value.breathing, (value) {
      return _then(_value.copyWith(breathing: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientCirculationCopyWith<$Res> get circulation {
    return $PatientCirculationCopyWith<$Res>(_value.circulation, (value) {
      return _then(_value.copyWith(circulation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientDisabilityCopyWith<$Res> get disability {
    return $PatientDisabilityCopyWith<$Res>(_value.disability, (value) {
      return _then(_value.copyWith(disability: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientExposureCopyWith<$Res> get exposure {
    return $PatientExposureCopyWith<$Res>(_value.exposure, (value) {
      return _then(_value.copyWith(exposure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PatientStandardDiagnosticDataCopyWith<$Res>
    implements $PatientStandardDiagnosticDataCopyWith<$Res> {
  factory _$$_PatientStandardDiagnosticDataCopyWith(
          _$_PatientStandardDiagnosticData value,
          $Res Function(_$_PatientStandardDiagnosticData) then) =
      __$$_PatientStandardDiagnosticDataCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_PatientStandardDiagnosticDataCopyWithImpl<$Res>
    extends _$PatientStandardDiagnosticDataCopyWithImpl<$Res,
        _$_PatientStandardDiagnosticData>
    implements _$$_PatientStandardDiagnosticDataCopyWith<$Res> {
  __$$_PatientStandardDiagnosticDataCopyWithImpl(
      _$_PatientStandardDiagnosticData _value,
      $Res Function(_$_PatientStandardDiagnosticData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breathing = null,
    Object? circulation = null,
    Object? disability = null,
    Object? exposure = null,
    Object? airway = null,
    Object? exsang_hemorrhage = null,
    Object? psyche = null,
  }) {
    return _then(_$_PatientStandardDiagnosticData(
      breathing: null == breathing
          ? _value.breathing
          : breathing // ignore: cast_nullable_to_non_nullable
              as PatientBreathing,
      circulation: null == circulation
          ? _value.circulation
          : circulation // ignore: cast_nullable_to_non_nullable
              as PatientCirculation,
      disability: null == disability
          ? _value.disability
          : disability // ignore: cast_nullable_to_non_nullable
              as PatientDisability,
      exposure: null == exposure
          ? _value.exposure
          : exposure // ignore: cast_nullable_to_non_nullable
              as PatientExposure,
      airway: null == airway
          ? _value.airway
          : airway // ignore: cast_nullable_to_non_nullable
              as String,
      exsang_hemorrhage: null == exsang_hemorrhage
          ? _value.exsang_hemorrhage
          : exsang_hemorrhage // ignore: cast_nullable_to_non_nullable
              as String,
      psyche: null == psyche
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
        (other.runtimeType == runtimeType &&
            other is _$_PatientStandardDiagnosticData &&
            (identical(other.breathing, breathing) ||
                other.breathing == breathing) &&
            (identical(other.circulation, circulation) ||
                other.circulation == circulation) &&
            (identical(other.disability, disability) ||
                other.disability == disability) &&
            (identical(other.exposure, exposure) ||
                other.exposure == exposure) &&
            (identical(other.airway, airway) || other.airway == airway) &&
            (identical(other.exsang_hemorrhage, exsang_hemorrhage) ||
                other.exsang_hemorrhage == exsang_hemorrhage) &&
            (identical(other.psyche, psyche) || other.psyche == psyche));
  }

  @override
  int get hashCode => Object.hash(runtimeType, breathing, circulation,
      disability, exposure, airway, exsang_hemorrhage, psyche);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientStandardDiagnosticDataCopyWith<_$_PatientStandardDiagnosticData>
      get copyWith => __$$_PatientStandardDiagnosticDataCopyWithImpl<
          _$_PatientStandardDiagnosticData>(this, _$identity);
}

abstract class _PatientStandardDiagnosticData
    extends PatientStandardDiagnosticData {
  const factory _PatientStandardDiagnosticData(
      {required final PatientBreathing breathing,
      required final PatientCirculation circulation,
      required final PatientDisability disability,
      required final PatientExposure exposure,
      required final String airway,
      required final String exsang_hemorrhage,
      required final String psyche}) = _$_PatientStandardDiagnosticData;
  const _PatientStandardDiagnosticData._() : super._();

  @override
  PatientBreathing get breathing;
  @override
  PatientCirculation get circulation;
  @override
  PatientDisability get disability;
  @override
  PatientExposure get exposure;
  @override
  String get airway;
  @override
  String get exsang_hemorrhage;
  @override
  String get psyche;
  @override
  @JsonKey(ignore: true)
  _$$_PatientStandardDiagnosticDataCopyWith<_$_PatientStandardDiagnosticData>
      get copyWith => throw _privateConstructorUsedError;
}

PatientBreathing _$PatientBreathingFromJson(Map<String, dynamic> json) {
  return _PatientBreathing.fromJson(json);
}

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
      _$PatientBreathingCopyWithImpl<$Res, PatientBreathing>;
  @useResult
  $Res call({String pattern, String frequency, bool has_cyanosis});
}

/// @nodoc
class _$PatientBreathingCopyWithImpl<$Res, $Val extends PatientBreathing>
    implements $PatientBreathingCopyWith<$Res> {
  _$PatientBreathingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pattern = null,
    Object? frequency = null,
    Object? has_cyanosis = null,
  }) {
    return _then(_value.copyWith(
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      has_cyanosis: null == has_cyanosis
          ? _value.has_cyanosis
          : has_cyanosis // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientBreathingCopyWith<$Res>
    implements $PatientBreathingCopyWith<$Res> {
  factory _$$_PatientBreathingCopyWith(
          _$_PatientBreathing value, $Res Function(_$_PatientBreathing) then) =
      __$$_PatientBreathingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pattern, String frequency, bool has_cyanosis});
}

/// @nodoc
class __$$_PatientBreathingCopyWithImpl<$Res>
    extends _$PatientBreathingCopyWithImpl<$Res, _$_PatientBreathing>
    implements _$$_PatientBreathingCopyWith<$Res> {
  __$$_PatientBreathingCopyWithImpl(
      _$_PatientBreathing _value, $Res Function(_$_PatientBreathing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pattern = null,
    Object? frequency = null,
    Object? has_cyanosis = null,
  }) {
    return _then(_$_PatientBreathing(
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      has_cyanosis: null == has_cyanosis
          ? _value.has_cyanosis
          : has_cyanosis // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientBreathing
    with DiagnosticableTreeMixin
    implements _PatientBreathing {
  const _$_PatientBreathing(
      {required this.pattern,
      required this.frequency,
      required this.has_cyanosis});

  factory _$_PatientBreathing.fromJson(Map<String, dynamic> json) =>
      _$$_PatientBreathingFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_PatientBreathing &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.has_cyanosis, has_cyanosis) ||
                other.has_cyanosis == has_cyanosis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pattern, frequency, has_cyanosis);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientBreathingCopyWith<_$_PatientBreathing> get copyWith =>
      __$$_PatientBreathingCopyWithImpl<_$_PatientBreathing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientBreathingToJson(
      this,
    );
  }
}

abstract class _PatientBreathing implements PatientBreathing {
  const factory _PatientBreathing(
      {required final String pattern,
      required final String frequency,
      required final bool has_cyanosis}) = _$_PatientBreathing;

  factory _PatientBreathing.fromJson(Map<String, dynamic> json) =
      _$_PatientBreathing.fromJson;

  @override
  String get pattern;
  @override
  String get frequency;
  @override
  bool get has_cyanosis;
  @override
  @JsonKey(ignore: true)
  _$$_PatientBreathingCopyWith<_$_PatientBreathing> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientCirculation _$PatientCirculationFromJson(Map<String, dynamic> json) {
  return _PatientCirculation.fromJson(json);
}

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
      _$PatientCirculationCopyWithImpl<$Res, PatientCirculation>;
  @useResult
  $Res call({String rhythm, String pulse, String pulse_place, String recap});
}

/// @nodoc
class _$PatientCirculationCopyWithImpl<$Res, $Val extends PatientCirculation>
    implements $PatientCirculationCopyWith<$Res> {
  _$PatientCirculationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rhythm = null,
    Object? pulse = null,
    Object? pulse_place = null,
    Object? recap = null,
  }) {
    return _then(_value.copyWith(
      rhythm: null == rhythm
          ? _value.rhythm
          : rhythm // ignore: cast_nullable_to_non_nullable
              as String,
      pulse: null == pulse
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as String,
      pulse_place: null == pulse_place
          ? _value.pulse_place
          : pulse_place // ignore: cast_nullable_to_non_nullable
              as String,
      recap: null == recap
          ? _value.recap
          : recap // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientCirculationCopyWith<$Res>
    implements $PatientCirculationCopyWith<$Res> {
  factory _$$_PatientCirculationCopyWith(_$_PatientCirculation value,
          $Res Function(_$_PatientCirculation) then) =
      __$$_PatientCirculationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rhythm, String pulse, String pulse_place, String recap});
}

/// @nodoc
class __$$_PatientCirculationCopyWithImpl<$Res>
    extends _$PatientCirculationCopyWithImpl<$Res, _$_PatientCirculation>
    implements _$$_PatientCirculationCopyWith<$Res> {
  __$$_PatientCirculationCopyWithImpl(
      _$_PatientCirculation _value, $Res Function(_$_PatientCirculation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rhythm = null,
    Object? pulse = null,
    Object? pulse_place = null,
    Object? recap = null,
  }) {
    return _then(_$_PatientCirculation(
      rhythm: null == rhythm
          ? _value.rhythm
          : rhythm // ignore: cast_nullable_to_non_nullable
              as String,
      pulse: null == pulse
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as String,
      pulse_place: null == pulse_place
          ? _value.pulse_place
          : pulse_place // ignore: cast_nullable_to_non_nullable
              as String,
      recap: null == recap
          ? _value.recap
          : recap // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientCirculation
    with DiagnosticableTreeMixin
    implements _PatientCirculation {
  const _$_PatientCirculation(
      {required this.rhythm,
      required this.pulse,
      required this.pulse_place,
      required this.recap});

  factory _$_PatientCirculation.fromJson(Map<String, dynamic> json) =>
      _$$_PatientCirculationFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_PatientCirculation &&
            (identical(other.rhythm, rhythm) || other.rhythm == rhythm) &&
            (identical(other.pulse, pulse) || other.pulse == pulse) &&
            (identical(other.pulse_place, pulse_place) ||
                other.pulse_place == pulse_place) &&
            (identical(other.recap, recap) || other.recap == recap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rhythm, pulse, pulse_place, recap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientCirculationCopyWith<_$_PatientCirculation> get copyWith =>
      __$$_PatientCirculationCopyWithImpl<_$_PatientCirculation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientCirculationToJson(
      this,
    );
  }
}

abstract class _PatientCirculation implements PatientCirculation {
  const factory _PatientCirculation(
      {required final String rhythm,
      required final String pulse,
      required final String pulse_place,
      required final String recap}) = _$_PatientCirculation;

  factory _PatientCirculation.fromJson(Map<String, dynamic> json) =
      _$_PatientCirculation.fromJson;

  @override
  String get rhythm;
  @override
  String get pulse;
  @override
  String get pulse_place;
  @override
  String get recap;
  @override
  @JsonKey(ignore: true)
  _$$_PatientCirculationCopyWith<_$_PatientCirculation> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientDisability _$PatientDisabilityFromJson(Map<String, dynamic> json) {
  return _PatientDisability.fromJson(json);
}

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
      _$PatientDisabilityCopyWithImpl<$Res, PatientDisability>;
  @useResult
  $Res call(
      {String pupils,
      int gcs_eyes,
      int gcs_language,
      int gcs_motoric_behaviour});
}

/// @nodoc
class _$PatientDisabilityCopyWithImpl<$Res, $Val extends PatientDisability>
    implements $PatientDisabilityCopyWith<$Res> {
  _$PatientDisabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pupils = null,
    Object? gcs_eyes = null,
    Object? gcs_language = null,
    Object? gcs_motoric_behaviour = null,
  }) {
    return _then(_value.copyWith(
      pupils: null == pupils
          ? _value.pupils
          : pupils // ignore: cast_nullable_to_non_nullable
              as String,
      gcs_eyes: null == gcs_eyes
          ? _value.gcs_eyes
          : gcs_eyes // ignore: cast_nullable_to_non_nullable
              as int,
      gcs_language: null == gcs_language
          ? _value.gcs_language
          : gcs_language // ignore: cast_nullable_to_non_nullable
              as int,
      gcs_motoric_behaviour: null == gcs_motoric_behaviour
          ? _value.gcs_motoric_behaviour
          : gcs_motoric_behaviour // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientDisabilityCopyWith<$Res>
    implements $PatientDisabilityCopyWith<$Res> {
  factory _$$_PatientDisabilityCopyWith(_$_PatientDisability value,
          $Res Function(_$_PatientDisability) then) =
      __$$_PatientDisabilityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pupils,
      int gcs_eyes,
      int gcs_language,
      int gcs_motoric_behaviour});
}

/// @nodoc
class __$$_PatientDisabilityCopyWithImpl<$Res>
    extends _$PatientDisabilityCopyWithImpl<$Res, _$_PatientDisability>
    implements _$$_PatientDisabilityCopyWith<$Res> {
  __$$_PatientDisabilityCopyWithImpl(
      _$_PatientDisability _value, $Res Function(_$_PatientDisability) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pupils = null,
    Object? gcs_eyes = null,
    Object? gcs_language = null,
    Object? gcs_motoric_behaviour = null,
  }) {
    return _then(_$_PatientDisability(
      pupils: null == pupils
          ? _value.pupils
          : pupils // ignore: cast_nullable_to_non_nullable
              as String,
      gcs_eyes: null == gcs_eyes
          ? _value.gcs_eyes
          : gcs_eyes // ignore: cast_nullable_to_non_nullable
              as int,
      gcs_language: null == gcs_language
          ? _value.gcs_language
          : gcs_language // ignore: cast_nullable_to_non_nullable
              as int,
      gcs_motoric_behaviour: null == gcs_motoric_behaviour
          ? _value.gcs_motoric_behaviour
          : gcs_motoric_behaviour // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientDisability
    with DiagnosticableTreeMixin
    implements _PatientDisability {
  const _$_PatientDisability(
      {required this.pupils,
      required this.gcs_eyes,
      required this.gcs_language,
      required this.gcs_motoric_behaviour});

  factory _$_PatientDisability.fromJson(Map<String, dynamic> json) =>
      _$$_PatientDisabilityFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_PatientDisability &&
            (identical(other.pupils, pupils) || other.pupils == pupils) &&
            (identical(other.gcs_eyes, gcs_eyes) ||
                other.gcs_eyes == gcs_eyes) &&
            (identical(other.gcs_language, gcs_language) ||
                other.gcs_language == gcs_language) &&
            (identical(other.gcs_motoric_behaviour, gcs_motoric_behaviour) ||
                other.gcs_motoric_behaviour == gcs_motoric_behaviour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pupils, gcs_eyes, gcs_language, gcs_motoric_behaviour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientDisabilityCopyWith<_$_PatientDisability> get copyWith =>
      __$$_PatientDisabilityCopyWithImpl<_$_PatientDisability>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientDisabilityToJson(
      this,
    );
  }
}

abstract class _PatientDisability implements PatientDisability {
  const factory _PatientDisability(
      {required final String pupils,
      required final int gcs_eyes,
      required final int gcs_language,
      required final int gcs_motoric_behaviour}) = _$_PatientDisability;

  factory _PatientDisability.fromJson(Map<String, dynamic> json) =
      _$_PatientDisability.fromJson;

  @override
  String get pupils;
  @override
  int get gcs_eyes;
  @override
  int get gcs_language;
  @override
  int get gcs_motoric_behaviour;
  @override
  @JsonKey(ignore: true)
  _$$_PatientDisabilityCopyWith<_$_PatientDisability> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientExposure _$PatientExposureFromJson(Map<String, dynamic> json) {
  return _PatientExposure.fromJson(json);
}

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
      _$PatientExposureCopyWithImpl<$Res, PatientExposure>;
  @useResult
  $Res call({String pain, String skin});
}

/// @nodoc
class _$PatientExposureCopyWithImpl<$Res, $Val extends PatientExposure>
    implements $PatientExposureCopyWith<$Res> {
  _$PatientExposureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pain = null,
    Object? skin = null,
  }) {
    return _then(_value.copyWith(
      pain: null == pain
          ? _value.pain
          : pain // ignore: cast_nullable_to_non_nullable
              as String,
      skin: null == skin
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientExposureCopyWith<$Res>
    implements $PatientExposureCopyWith<$Res> {
  factory _$$_PatientExposureCopyWith(
          _$_PatientExposure value, $Res Function(_$_PatientExposure) then) =
      __$$_PatientExposureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pain, String skin});
}

/// @nodoc
class __$$_PatientExposureCopyWithImpl<$Res>
    extends _$PatientExposureCopyWithImpl<$Res, _$_PatientExposure>
    implements _$$_PatientExposureCopyWith<$Res> {
  __$$_PatientExposureCopyWithImpl(
      _$_PatientExposure _value, $Res Function(_$_PatientExposure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pain = null,
    Object? skin = null,
  }) {
    return _then(_$_PatientExposure(
      pain: null == pain
          ? _value.pain
          : pain // ignore: cast_nullable_to_non_nullable
              as String,
      skin: null == skin
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientExposure
    with DiagnosticableTreeMixin
    implements _PatientExposure {
  const _$_PatientExposure({required this.pain, required this.skin});

  factory _$_PatientExposure.fromJson(Map<String, dynamic> json) =>
      _$$_PatientExposureFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_PatientExposure &&
            (identical(other.pain, pain) || other.pain == pain) &&
            (identical(other.skin, skin) || other.skin == skin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pain, skin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientExposureCopyWith<_$_PatientExposure> get copyWith =>
      __$$_PatientExposureCopyWithImpl<_$_PatientExposure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientExposureToJson(
      this,
    );
  }
}

abstract class _PatientExposure implements PatientExposure {
  const factory _PatientExposure(
      {required final String pain,
      required final String skin}) = _$_PatientExposure;

  factory _PatientExposure.fromJson(Map<String, dynamic> json) =
      _$_PatientExposure.fromJson;

  @override
  String get pain;
  @override
  String get skin;
  @override
  @JsonKey(ignore: true)
  _$$_PatientExposureCopyWith<_$_PatientExposure> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientPersonalData _$PatientPersonalDataFromJson(Map<String, dynamic> json) {
  return _PatientPersonalData.fromJson(json);
}

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
      _$PatientPersonalDataCopyWithImpl<$Res, PatientPersonalData>;
  @useResult
  $Res call(
      {String name,
      String address,
      String birth_date,
      int age,
      String gender,
      String biometrics});
}

/// @nodoc
class _$PatientPersonalDataCopyWithImpl<$Res, $Val extends PatientPersonalData>
    implements $PatientPersonalDataCopyWith<$Res> {
  _$PatientPersonalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? birth_date = null,
    Object? age = null,
    Object? gender = null,
    Object? biometrics = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      birth_date: null == birth_date
          ? _value.birth_date
          : birth_date // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      biometrics: null == biometrics
          ? _value.biometrics
          : biometrics // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientPersonalDataCopyWith<$Res>
    implements $PatientPersonalDataCopyWith<$Res> {
  factory _$$_PatientPersonalDataCopyWith(_$_PatientPersonalData value,
          $Res Function(_$_PatientPersonalData) then) =
      __$$_PatientPersonalDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String address,
      String birth_date,
      int age,
      String gender,
      String biometrics});
}

/// @nodoc
class __$$_PatientPersonalDataCopyWithImpl<$Res>
    extends _$PatientPersonalDataCopyWithImpl<$Res, _$_PatientPersonalData>
    implements _$$_PatientPersonalDataCopyWith<$Res> {
  __$$_PatientPersonalDataCopyWithImpl(_$_PatientPersonalData _value,
      $Res Function(_$_PatientPersonalData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? birth_date = null,
    Object? age = null,
    Object? gender = null,
    Object? biometrics = null,
  }) {
    return _then(_$_PatientPersonalData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      birth_date: null == birth_date
          ? _value.birth_date
          : birth_date // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      biometrics: null == biometrics
          ? _value.biometrics
          : biometrics // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
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
      _$$_PatientPersonalDataFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_PatientPersonalData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.birth_date, birth_date) ||
                other.birth_date == birth_date) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.biometrics, biometrics) ||
                other.biometrics == biometrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, address, birth_date, age, gender, biometrics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientPersonalDataCopyWith<_$_PatientPersonalData> get copyWith =>
      __$$_PatientPersonalDataCopyWithImpl<_$_PatientPersonalData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientPersonalDataToJson(
      this,
    );
  }
}

abstract class _PatientPersonalData implements PatientPersonalData {
  const factory _PatientPersonalData(
      {required final String name,
      required final String address,
      required final String birth_date,
      required final int age,
      required final String gender,
      required final String biometrics}) = _$_PatientPersonalData;

  factory _PatientPersonalData.fromJson(Map<String, dynamic> json) =
      _$_PatientPersonalData.fromJson;

  @override
  String get name;
  @override
  String get address;
  @override
  String get birth_date;
  @override
  int get age;
  @override
  String get gender;
  @override
  String get biometrics;
  @override
  @JsonKey(ignore: true)
  _$$_PatientPersonalDataCopyWith<_$_PatientPersonalData> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientFirstImpression _$PatientFirstImpressionFromJson(
    Map<String, dynamic> json) {
  return _PatientFirstImpression.fromJson(json);
}

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
      _$PatientFirstImpressionCopyWithImpl<$Res, PatientFirstImpression>;
  @useResult
  $Res call(
      {bool can_walk,
      bool is_bleeding,
      bool is_bleeding_critically,
      bool is_motionless,
      bool has_cyanosis});
}

/// @nodoc
class _$PatientFirstImpressionCopyWithImpl<$Res,
        $Val extends PatientFirstImpression>
    implements $PatientFirstImpressionCopyWith<$Res> {
  _$PatientFirstImpressionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? can_walk = null,
    Object? is_bleeding = null,
    Object? is_bleeding_critically = null,
    Object? is_motionless = null,
    Object? has_cyanosis = null,
  }) {
    return _then(_value.copyWith(
      can_walk: null == can_walk
          ? _value.can_walk
          : can_walk // ignore: cast_nullable_to_non_nullable
              as bool,
      is_bleeding: null == is_bleeding
          ? _value.is_bleeding
          : is_bleeding // ignore: cast_nullable_to_non_nullable
              as bool,
      is_bleeding_critically: null == is_bleeding_critically
          ? _value.is_bleeding_critically
          : is_bleeding_critically // ignore: cast_nullable_to_non_nullable
              as bool,
      is_motionless: null == is_motionless
          ? _value.is_motionless
          : is_motionless // ignore: cast_nullable_to_non_nullable
              as bool,
      has_cyanosis: null == has_cyanosis
          ? _value.has_cyanosis
          : has_cyanosis // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientFirstImpressionCopyWith<$Res>
    implements $PatientFirstImpressionCopyWith<$Res> {
  factory _$$_PatientFirstImpressionCopyWith(_$_PatientFirstImpression value,
          $Res Function(_$_PatientFirstImpression) then) =
      __$$_PatientFirstImpressionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool can_walk,
      bool is_bleeding,
      bool is_bleeding_critically,
      bool is_motionless,
      bool has_cyanosis});
}

/// @nodoc
class __$$_PatientFirstImpressionCopyWithImpl<$Res>
    extends _$PatientFirstImpressionCopyWithImpl<$Res,
        _$_PatientFirstImpression>
    implements _$$_PatientFirstImpressionCopyWith<$Res> {
  __$$_PatientFirstImpressionCopyWithImpl(_$_PatientFirstImpression _value,
      $Res Function(_$_PatientFirstImpression) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? can_walk = null,
    Object? is_bleeding = null,
    Object? is_bleeding_critically = null,
    Object? is_motionless = null,
    Object? has_cyanosis = null,
  }) {
    return _then(_$_PatientFirstImpression(
      can_walk: null == can_walk
          ? _value.can_walk
          : can_walk // ignore: cast_nullable_to_non_nullable
              as bool,
      is_bleeding: null == is_bleeding
          ? _value.is_bleeding
          : is_bleeding // ignore: cast_nullable_to_non_nullable
              as bool,
      is_bleeding_critically: null == is_bleeding_critically
          ? _value.is_bleeding_critically
          : is_bleeding_critically // ignore: cast_nullable_to_non_nullable
              as bool,
      is_motionless: null == is_motionless
          ? _value.is_motionless
          : is_motionless // ignore: cast_nullable_to_non_nullable
              as bool,
      has_cyanosis: null == has_cyanosis
          ? _value.has_cyanosis
          : has_cyanosis // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
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
      _$$_PatientFirstImpressionFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_PatientFirstImpression &&
            (identical(other.can_walk, can_walk) ||
                other.can_walk == can_walk) &&
            (identical(other.is_bleeding, is_bleeding) ||
                other.is_bleeding == is_bleeding) &&
            (identical(other.is_bleeding_critically, is_bleeding_critically) ||
                other.is_bleeding_critically == is_bleeding_critically) &&
            (identical(other.is_motionless, is_motionless) ||
                other.is_motionless == is_motionless) &&
            (identical(other.has_cyanosis, has_cyanosis) ||
                other.has_cyanosis == has_cyanosis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, can_walk, is_bleeding,
      is_bleeding_critically, is_motionless, has_cyanosis);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientFirstImpressionCopyWith<_$_PatientFirstImpression> get copyWith =>
      __$$_PatientFirstImpressionCopyWithImpl<_$_PatientFirstImpression>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientFirstImpressionToJson(
      this,
    );
  }
}

abstract class _PatientFirstImpression implements PatientFirstImpression {
  const factory _PatientFirstImpression(
      {required final bool can_walk,
      required final bool is_bleeding,
      required final bool is_bleeding_critically,
      required final bool is_motionless,
      required final bool has_cyanosis}) = _$_PatientFirstImpression;

  factory _PatientFirstImpression.fromJson(Map<String, dynamic> json) =
      _$_PatientFirstImpression.fromJson;

  @override
  bool get can_walk;
  @override
  bool get is_bleeding;
  @override
  bool get is_bleeding_critically;
  @override
  bool get is_motionless;
  @override
  bool get has_cyanosis;
  @override
  @JsonKey(ignore: true)
  _$$_PatientFirstImpressionCopyWith<_$_PatientFirstImpression> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientInjuries _$PatientInjuriesFromJson(Map<String, dynamic> json) {
  return _PatientInjuries.fromJson(json);
}

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
      _$PatientInjuriesCopyWithImpl<$Res, PatientInjuries>;
  @useResult
  $Res call({List<dynamic> injuries});
}

/// @nodoc
class _$PatientInjuriesCopyWithImpl<$Res, $Val extends PatientInjuries>
    implements $PatientInjuriesCopyWith<$Res> {
  _$PatientInjuriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? injuries = null,
  }) {
    return _then(_value.copyWith(
      injuries: null == injuries
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientInjuriesCopyWith<$Res>
    implements $PatientInjuriesCopyWith<$Res> {
  factory _$$_PatientInjuriesCopyWith(
          _$_PatientInjuries value, $Res Function(_$_PatientInjuries) then) =
      __$$_PatientInjuriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> injuries});
}

/// @nodoc
class __$$_PatientInjuriesCopyWithImpl<$Res>
    extends _$PatientInjuriesCopyWithImpl<$Res, _$_PatientInjuries>
    implements _$$_PatientInjuriesCopyWith<$Res> {
  __$$_PatientInjuriesCopyWithImpl(
      _$_PatientInjuries _value, $Res Function(_$_PatientInjuries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? injuries = null,
  }) {
    return _then(_$_PatientInjuries(
      injuries: null == injuries
          ? _value._injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientInjuries extends _PatientInjuries with DiagnosticableTreeMixin {
  const _$_PatientInjuries({required final List<dynamic> injuries})
      : _injuries = injuries,
        super._();

  factory _$_PatientInjuries.fromJson(Map<String, dynamic> json) =>
      _$$_PatientInjuriesFromJson(json);

  final List<dynamic> _injuries;
  @override
  List<dynamic> get injuries {
    if (_injuries is EqualUnmodifiableListView) return _injuries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_injuries);
  }

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
        (other.runtimeType == runtimeType &&
            other is _$_PatientInjuries &&
            const DeepCollectionEquality().equals(other._injuries, _injuries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_injuries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientInjuriesCopyWith<_$_PatientInjuries> get copyWith =>
      __$$_PatientInjuriesCopyWithImpl<_$_PatientInjuries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientInjuriesToJson(
      this,
    );
  }
}

abstract class _PatientInjuries extends PatientInjuries {
  const factory _PatientInjuries({required final List<dynamic> injuries}) =
      _$_PatientInjuries;
  const _PatientInjuries._() : super._();

  factory _PatientInjuries.fromJson(Map<String, dynamic> json) =
      _$_PatientInjuries.fromJson;

  @override
  List<dynamic> get injuries;
  @override
  @JsonKey(ignore: true)
  _$$_PatientInjuriesCopyWith<_$_PatientInjuries> get copyWith =>
      throw _privateConstructorUsedError;
}
