import 'package:block_test/board_score/models/calculation_sheet.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';

class BasicDropdownField extends StatelessWidget with BaseExtension {
  final List<CalculationSheetInputAnswer> options;
  final num? currentValue;
  final String label;
  final void Function(num?) onChanged;
  const BasicDropdownField(
      {Key? key,
      required this.options,
      this.currentValue,
      required this.onChanged,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(currentValue);

    return Container(
      padding: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: colors(context).secondary))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: textTheme(context).bodyText2,
          ),
          DropdownButton(
              value: currentValue,
              elevation: 0,
              isExpanded: true,
              style: textTheme(context).headline1,
              iconEnabledColor: colors(context).secondary,
              underline: const SizedBox(),
              dropdownColor: colors(context).primary,
              items: options
                  .map(
                    (e) => DropdownMenuItem(
                      value: e.value,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            e.label,
                            style: textTheme(context).headline6!,
                          )),
                    ),
                  )
                  .toList(),
              onChanged: onChanged),
        ],
      ),
    );
  }
}
