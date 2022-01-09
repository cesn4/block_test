import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';

class BasicTextField extends StatelessWidget with BaseExtension {
  final String label;
  final void Function(String) onChanged;
  final String? errorText;
  final String? initialValue;
  final bool obscureText;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final TextInputType? inputType;
  const BasicTextField({
    Key? key,
    required this.label,
    required this.onChanged,
    required this.errorText,
    required this.initialValue,
    this.obscureText = false,
    this.textInputAction,
    this.focusNode,
    this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      initialValue: initialValue,
      focusNode: focusNode,
      style: TextStyle(color: colors(context).secondary, fontSize: 24),
      onChanged: onChanged,
      textInputAction: textInputAction,
      keyboardType: inputType,
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
