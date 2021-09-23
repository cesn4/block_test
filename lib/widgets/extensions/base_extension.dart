import 'package:flutter/material.dart';

class BaseExtension {
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

  void showSnackBar(BuildContext context, String message) {
    final colorScheme = Theme.of(context).colorScheme;
    final snackBar = SnackBar(
      backgroundColor: colorScheme.secondary,
      padding: const EdgeInsets.all(20),
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: colorScheme.primary,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
