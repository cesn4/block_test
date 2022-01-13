import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculation_sheet.freezed.dart';
part 'calculation_sheet.g.dart';

@freezed
class CalculationSheet with _$CalculationSheet {
  factory CalculationSheet({
    required String title,
    required List<CalculationSheetInput> inputs,
    num? overall_score,
  }) = _CalculationSheet;

  factory CalculationSheet.fromJson(Map<String, dynamic> json) =>
      _$CalculationSheetFromJson(json);
}

@freezed
class CalculationSheetInput with _$CalculationSheetInput {
  factory CalculationSheetInput({
    required String id,
    required String type,
    required num default_multiplier,
    required String label,
    required String? action,
    required String? value_type,
    required List<CalculationSheetInputDependency> dependencies,
    List<CalculationSheetInputAnswer>? asnwers,
    num? input_value,
  }) = _CalculationSheetInput;

  factory CalculationSheetInput.fromJson(Map<String, dynamic> json) =>
      _$CalculationSheetInputFromJson(json);
}

@freezed
class CalculationSheetInputDependency with _$CalculationSheetInputDependency {
  factory CalculationSheetInputDependency({
    required String id,
    required num max_value,
    required num multiplier,
  }) = _CalculationSheetInputDependency;

  factory CalculationSheetInputDependency.fromJson(Map<String, dynamic> json) =>
      _$CalculationSheetInputDependencyFromJson(json);
}

@freezed
class CalculationSheetInputAnswer with _$CalculationSheetInputAnswer {
  factory CalculationSheetInputAnswer({
    required String id,
    required String label,
    required num value,
  }) = _CalculationSheetInputAnswer;

  factory CalculationSheetInputAnswer.fromJson(Map<String, dynamic> json) =>
      _$CalculationSheetInputAnswerFromJson(json);
}
