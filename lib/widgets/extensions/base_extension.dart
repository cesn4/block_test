import 'package:flutter/material.dart';

class BaseExtension {
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
