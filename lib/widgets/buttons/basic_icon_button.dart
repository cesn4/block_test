import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';

class BasicIconButton extends StatelessWidget with BaseExtension {
  final IconData icon;
  final void Function() onPressed;
  const BasicIconButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15,
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      color: colors(context).secondary,
      shadowColor: colors(context).secondary,
      child: InkWell(
        onTap: onPressed,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        child: Container(
          height: 68,
          width: 68,
          alignment: Alignment.center,
          child: Icon(
            icon,
            size: 34,
            color: colors(context).primary,
          ),
        ),
      ),
    );
  }
}
