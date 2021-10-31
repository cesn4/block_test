import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget with BaseExtension {
  final IconData icon;
  final void Function() onPressed;
  final bool isActive;
  const NavButton(
      {Key? key,
      required this.icon,
      required this.onPressed,
      required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Icon(
            icon,
            size: 30,
            color: isActive ? colors(context).primary : Colors.white,
          ),
        ),
      ),
    );
  }
}
