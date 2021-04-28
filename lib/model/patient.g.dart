// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientBreathing _$_$_PatientBreathingFromJson(Map<String, dynamic> json) {
  return _$_PatientBreathing(
    pattern: json['pattern'] as String,
    frequency: json['frequency'] as String,
    has_cyanosis: json['has_cyanosis'] as bool,
  );
}

Map<String, dynamic> _$_$_PatientBreathingToJson(
        _$_PatientBreathing instance) =>
    <String, dynamic>{
      'pattern': instance.pattern,
      'frequency': instance.frequency,
      'has_cyanosis': instance.has_cyanosis,
    };

_$_PatientCirculation _$_$_PatientCirculationFromJson(
    Map<String, dynamic> json) {
  return _$_PatientCirculation(
    rhythm: json['rhythm'] as String,
    pulse: json['pulse'] as String,
    pulse_place: json['pulse_place'] as String,
    recap: json['recap'] as String,
  );
}

Map<String, dynamic> _$_$_PatientCirculationToJson(
        _$_PatientCirculation instance) =>
    <String, dynamic>{
      'rhythm': instance.rhythm,
      'pulse': instance.pulse,
      'pulse_place': instance.pulse_place,
      'recap': instance.recap,
    };

_$_PatientDisability _$_$_PatientDisabilityFromJson(Map<String, dynamic> json) {
  return _$_PatientDisability(
    pupils: json['pupils'] as String,
    gcs_eyes: json['gcs_eyes'] as int,
    gcs_language: json['gcs_language'] as int,
    gcs_motoric_behaviour: json['gcs_motoric_behaviour'] as int,
  );
}

Map<String, dynamic> _$_$_PatientDisabilityToJson(
        _$_PatientDisability instance) =>
    <String, dynamic>{
      'pupils': instance.pupils,
      'gcs_eyes': instance.gcs_eyes,
      'gcs_language': instance.gcs_language,
      'gcs_motoric_behaviour': instance.gcs_motoric_behaviour,
    };

_$_PatientExposure _$_$_PatientExposureFromJson(Map<String, dynamic> json) {
  return _$_PatientExposure(
    pain: json['pain'] as String,
    skin: json['skin'] as String,
  );
}

Map<String, dynamic> _$_$_PatientExposureToJson(_$_PatientExposure instance) =>
    <String, dynamic>{
      'pain': instance.pain,
      'skin': instance.skin,
    };

_$_PatientPersonalData _$_$_PatientPersonalDataFromJson(
    Map<String, dynamic> json) {
  return _$_PatientPersonalData(
    name: json['name'] as String,
    address: json['address'] as String,
    birth_date: json['birth_date'] as String,
    age: json['age'] as int,
    gender: json['gender'] as String,
    biometrics: json['biometrics'] as String,
  );
}

Map<String, dynamic> _$_$_PatientPersonalDataToJson(
        _$_PatientPersonalData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'birth_date': instance.birth_date,
      'age': instance.age,
      'gender': instance.gender,
      'biometrics': instance.biometrics,
    };

_$_PatientFirstImpression _$_$_PatientFirstImpressionFromJson(
    Map<String, dynamic> json) {
  return _$_PatientFirstImpression(
    can_walk: json['can_walk'] as bool,
    is_bleeding: json['is_bleeding'] as bool,
    is_bleeding_critically: json['is_bleeding_critically'] as bool,
    is_motionless: json['is_motionless'] as bool,
    has_cyanosis: json['has_cyanosis'] as bool,
  );
}

Map<String, dynamic> _$_$_PatientFirstImpressionToJson(
        _$_PatientFirstImpression instance) =>
    <String, dynamic>{
      'can_walk': instance.can_walk,
      'is_bleeding': instance.is_bleeding,
      'is_bleeding_critically': instance.is_bleeding_critically,
      'is_motionless': instance.is_motionless,
      'has_cyanosis': instance.has_cyanosis,
    };

_$_PatientInjuries _$_$_PatientInjuriesFromJson(Map<String, dynamic> json) {
  return _$_PatientInjuries(
    injuries: json['injuries'] as List<dynamic>,
  );
}

Map<String, dynamic> _$_$_PatientInjuriesToJson(_$_PatientInjuries instance) =>
    <String, dynamic>{
      'injuries': instance.injuries,
    };
