import 'package:block_test/widgets/buttons/basic_icon_button.dart';
import 'package:flutter/material.dart';

class SocialAuthSection extends StatelessWidget {
  const SocialAuthSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BasicIconButton(
            icon: Icons.facebook,
            onPressed: () => print("facebook"),
          ),
          BasicIconButton(
            icon: Icons.gamepad,
            onPressed: () => print("google"),
          ),
          BasicIconButton(
            icon: Icons.touch_app_rounded,
            onPressed: () => print("apple"),
          ),
        ],
      ),
    );
  }
}
