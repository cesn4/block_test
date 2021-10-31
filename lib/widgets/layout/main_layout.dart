import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainLayout extends StatelessWidget with BaseExtension {
  final Widget child;
  final Widget? bottomNavigationBar;
  const MainLayout({Key? key, required this.child, this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentFocus = FocusScope.of(context);
    return Scaffold(
      backgroundColor: colors(context).primary,
      bottomNavigationBar: bottomNavigationBar,
      body: GestureDetector(
        onTap: () {
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: SafeArea(
            child: SingleChildScrollView(
              child: SizedBox(
                  width: maxWidth(context),
                  height: maxHeight(context),
                  child: child),
            ),
          ),
        ),
      ),
    );
  }
}
