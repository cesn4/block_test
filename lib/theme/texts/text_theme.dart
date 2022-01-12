import 'package:flutter/material.dart';

extension CustomTextTheme on TextTheme {
  TextStyle get heading_22 {
    return const TextStyle(
      fontSize: 22,
      color: Colors.black,
      height: 1.2,
      fontWeight: FontWeight.w600,
    );
  }
}
