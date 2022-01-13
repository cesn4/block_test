import 'package:block_test/board_score/data/scythe_mock.dart';
import 'package:block_test/board_score/models/calculation_sheet.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:block_test/widgets/inputs/basic_dropown_field.dart';
import 'package:block_test/widgets/inputs/basic_text_field.dart';
import 'package:block_test/widgets/layout/main_layout.dart';
import 'package:flutter/material.dart';

class BoardScorePage extends StatefulWidget {
  const BoardScorePage({Key? key}) : super(key: key);

  @override
  State<BoardScorePage> createState() => _BoardScorePageState();
}

class _BoardScorePageState extends State<BoardScorePage> with BaseExtension {
  late CalculationSheet sheet;

  @override
  void initState() {
    super.initState();
    sheet = CalculationSheet.fromJson(scytheMock);
  }

  @override
  Widget build(BuildContext context) {
    void handleInputChange({
      required String inputId,
      required String value,
    }) {
      print(value);
      // Creates a Dummy for modifications;
      final dummySheet = sheet;

      // Index of the input will be modified;
      final activeInputIndex =
          sheet.inputs.indexWhere((element) => element.id == inputId);

      // Modified input;
      final modifiedInput = dummySheet.inputs[activeInputIndex]
          .copyWith(input_value: value != '' ? num.parse(value) : null);

      // Change existing state with modified one;
      dummySheet.inputs.removeAt(activeInputIndex);
      dummySheet.inputs.insert(activeInputIndex, modifiedInput);

      //Set state
      setState(() {
        sheet = dummySheet;
      });
    }

    num getOverallScore() {
      num score = 0;

      sheet.inputs.forEach(
        (element) {
          if (element.value_type != 'passive' &&
              element.input_value != null &&
              element.input_value != '') {
            num dependencyMultiplier = 1;

            // If there is dependencies;
            if (element.dependencies.isNotEmpty) {
              // Find current vlaue of dependency input;
              CalculationSheetInput dependencyInput = sheet.inputs.firstWhere(
                  (input) => input.id == element.dependencies.first.id);

              if (dependencyInput.input_value != null) {
                // Asign multiplier value for first value witch is matches;
                dependencyMultiplier = element.dependencies
                    .firstWhere((dependency) =>
                        dependency.max_value > dependencyInput.input_value!)
                    .multiplier;
              }
            }

            num multipliedValue =
                (element.input_value! * element.default_multiplier) *
                    dependencyMultiplier;

            if (element.action == 'increment') {
              score = score + multipliedValue;
            } else if (element.action == 'decrement') {
              score = score - multipliedValue;
            }
          }
        },
      );

      return score;
    }

    print(sheet.inputs[0]);

    return MainLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                sheet.title,
                style: textTheme(context).headline3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Overall score: ${getOverallScore()}',
                style: textTheme(context).headline5,
              ),
            ),
            ...sheet.inputs.map(
              (input) {
                switch (input.type) {
                  case 'number':
                    return BasicTextField(
                      label: input.label,
                      onChanged: (e) =>
                          handleInputChange(inputId: input.id, value: e),
                      errorText: null,
                      inputType: TextInputType.number,
                      initialValue: input.input_value != null
                          ? input.input_value.toString()
                          : null,
                    );
                  case 'dropdown':
                    return BasicDropdownField(
                      label: input.label,
                      currentValue: input.input_value,
                      onChanged: (e) => handleInputChange(
                          inputId: input.id, value: e.toString()),
                      options: input.asnwers!,
                    );
                  default:
                    return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
