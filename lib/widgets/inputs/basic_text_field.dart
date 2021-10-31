import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';

class BasicTextField extends StatelessWidget with BaseExtension {
  final String label;
  final void Function(String) onChanged;
  final String? errorText;
  final String? initialValue;
  final bool obscureText;
  final TextInputAction? textInputAction;
  const BasicTextField({
    Key? key,
    required this.label,
    required this.onChanged,
    required this.errorText,
    required this.initialValue,
    this.obscureText = false,
    this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: false,
      initialValue: initialValue,
      style: TextStyle(color: colors(context).secondary, fontSize: 24),
      onChanged: onChanged,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: colors(context).secondary, fontSize: 16),
        errorText: errorText,
        errorMaxLines: 2,
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
