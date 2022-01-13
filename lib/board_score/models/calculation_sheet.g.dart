// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculation_sheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalculationSheet _$$_CalculationSheetFromJson(Map<String, dynamic> json) =>
    _$_CalculationSheet(
      title: json['title'] as String,
      inputs: (json['inputs'] as List<dynamic>)
          .map((e) => CalculationSheetInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      overall_score: json['overall_score'] as num?,
    );

Map<String, dynamic> _$$_CalculationSheetToJson(_$_CalculationSheet instance) =>
    <String, dynamic>{
      'title': instance.title,
      'inputs': instance.inputs,
      'overall_score': instance.overall_score,
    };

_$_CalculationSheetInput _$$_CalculationSheetInputFromJson(
        Map<String, dynamic> json) =>
    _$_CalculationSheetInput(
      id: json['id'] as String,
      type: json['type'] as String,
      default_multiplier: json['default_multiplier'] as num,
      label: json['label'] as String,
      action: json['action'] as String,
      dependencies: (json['dependencies'] as List<dynamic>)
          .map((e) => CalculationSheetInputDependency.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      asnwers: (json['asnwers'] as List<dynamic>?)
          ?.map((e) =>
              CalculationSheetInputAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      input_value: json['input_value'] as num?,
    );

Map<String, dynamic> _$$_CalculationSheetInputToJson(
        _$_CalculationSheetInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'default_multiplier': instance.default_multiplier,
      'label': instance.label,
      'action': instance.action,
      'dependencies': instance.dependencies,
      'asnwers': instance.asnwers,
      'input_value': instance.input_value,
    };

_$_CalculationSheetInputDependency _$$_CalculationSheetInputDependencyFromJson(
        Map<String, dynamic> json) =>
    _$_CalculationSheetInputDependency(
      id: json['id'] as String,
      max_value: json['max_value'] as num,
      multiplier: json['multiplier'] as num,
    );

Map<String, dynamic> _$$_CalculationSheetInputDependencyToJson(
        _$_CalculationSheetInputDependency instance) =>
    <String, dynamic>{
      'id': instance.id,
      'max_value': instance.max_value,
      'multiplier': instance.multiplier,
    };

_$_CalculationSheetInputAnswer _$$_CalculationSheetInputAnswerFromJson(
        Map<String, dynamic> json) =>
    _$_CalculationSheetInputAnswer(
      id: json['id'] as String,
      label: json['label'] as String,
      value: json['value'] as num,
    );

Map<String, dynamic> _$$_CalculationSheetInputAnswerToJson(
        _$_CalculationSheetInputAnswer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'value': instance.value,
    };
