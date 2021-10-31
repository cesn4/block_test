import 'package:block_test/dashboard/widgets/nav_button.dart';
import 'package:flutter/material.dart';

class DashboardNavigtionBar extends StatelessWidget {
  const DashboardNavigtionBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      color: Colors.black,
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavButton(
                icon: Icons.accessibility_new_outlined,
                onPressed: () {},
                isActive: true),
            NavButton(
              icon: Icons.workspaces_outlined,
              onPressed: () {},
              isActive: false,
            ),
            NavButton(
              icon: Icons.access_time_filled_outlined,
              onPressed: () {},
              isActive: false,
            ),
            NavButton(
              icon: Icons.person,
              onPressed: () {},
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
