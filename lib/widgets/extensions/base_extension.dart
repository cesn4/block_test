import 'package:flutter/material.dart';

mixin BaseExtension {
  ColorScheme colors(BuildContext context) {
    return Theme.of(context).colorScheme;
  }

  double maxHeight(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final topSafeArea = mediaQuery.padding.top;
    final bottomSafeArea = mediaQuery.padding.bottom;
    return mediaQuery.size.height - topSafeArea - bottomSafeArea;
  }

  double maxWidth(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.width;
  }

  void replaceWith(BuildContext context, Widget page) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void navigateTo(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      backgroundColor: colors(context).secondary,
      padding: const EdgeInsets.all(20),
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: colors(context).primary,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
