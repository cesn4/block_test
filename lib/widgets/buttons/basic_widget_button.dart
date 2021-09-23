import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';

class BasicWidgetButton extends StatelessWidget with BaseExtension {
  final Widget child;
  final void Function() onPressed;
  const BasicWidgetButton(
      {Key? key, required this.child, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        highlightColor: colors(context).secondary.withOpacity(0.1),
        splashColor: colors(context).secondary.withOpacity(0.1),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: child,
        ),
      ),
    );
  }
}
