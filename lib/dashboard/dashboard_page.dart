import 'package:block_test/dashboard/widgets/dashboard_navigation_bar.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:block_test/widgets/layout/main_layout.dart';
import 'package:flutter/material.dart';

class DahboardPage extends StatelessWidget with BaseExtension {
  const DahboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Center(
        child: Text('Hello'),
      ),
      bottomNavigationBar: DashboardNavigtionBar(),
    );
  }
}
