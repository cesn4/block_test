import 'package:block_test/auth/bloc/auth_bloc.dart';
import 'package:block_test/widgets/inputs/basic_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPassword2Input extends StatelessWidget {
  final FocusNode focusNode;
  const RegisterPassword2Input({Key? key, required this.focusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: BasicTextField(
            label: 're-password',
            obscureText: true,
            initialValue: state.registerPassword_2.value,
            focusNode: focusNode,
            textInputAction: TextInputAction.next,
            onChanged: (value) {
              context
                  .read<AuthBloc>()
                  .add(AuthEvent.registerPassword_2Changed(value));
            },
            errorText: state.registerPassword_2.invalid
                ? '''Password must be at least 8 characters and contain at least one letter and number'''
                : null,
          ),
        );
      },
    );
  }
}
