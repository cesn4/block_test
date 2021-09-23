import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';

class BasicTextField extends StatelessWidget with BaseExtension {
  final String label;
  final void Function(String) onChanged;
  final String? errorText;
  final bool obscureText;
  const BasicTextField({
    Key? key,
    required this.label,
    required this.onChanged,
    required this.errorText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      style: TextStyle(color: colors(context).secondary, fontSize: 24),
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: colors(context).secondary, fontSize: 16),
        errorText: errorText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colors(context).secondary),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colors(context).secondary),
        ),
      ),
    );
  }
}
