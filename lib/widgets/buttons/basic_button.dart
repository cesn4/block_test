import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget with BaseExtension {
  final void Function() onPressed;
  final String label;
  final bool isDisabled;
  const BasicButton(
      {Key? key,
      required this.onPressed,
      this.isDisabled = false,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderRadius = const BorderRadius.all(Radius.circular(5));
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Material(
            borderOnForeground: false,
            shadowColor: colors(context).secondary,
            borderRadius: borderRadius,
            elevation: 15,
            color: isDisabled
                ? colors(context).secondary.withOpacity(0.7)
                : colors(context).secondary,
            child: InkWell(
              onTap: isDisabled ? () {} : onPressed,
              borderRadius: borderRadius,
              child: Container(
                alignment: Alignment.center,
                height: 48,
                child: Text(
                  label,
                  style:
                      TextStyle(fontSize: 16, color: colors(context).primary),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
