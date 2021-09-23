import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';

class BasicTextButton extends StatelessWidget with BaseExtension {
  final void Function() onPressed;
  final String label;
  const BasicTextButton(
      {Key? key, required this.onPressed, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        splashColor: colors(context).secondary.withOpacity(0.1),
        highlightColor: colors(context).secondary.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 16,
                color: colors(context).secondary,
                decoration: TextDecoration.underline),
          ),
        ),
      ),
    );
  }
}
