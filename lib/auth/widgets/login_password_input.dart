import 'package:block_test/auth/bloc/auth_bloc.dart';
import 'package:block_test/widgets/inputs/basic_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPasswordInput extends StatelessWidget {
  final FocusNode focusNode;
  const LoginPasswordInput({Key? key, required this.focusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: BasicTextField(
            label: 'password',
            obscureText: true,
            focusNode: focusNode,
            initialValue: state.loginPassword.value,
            textInputAction: TextInputAction.done,
            onChanged: (value) {
              context
                  .read<AuthBloc>()
                  .add(AuthEvent.loginPasswordChanged(value));
            },
            errorText: state.loginPassword.invalid
                ? '''Password must be at least 8 characters and contain at least one letter and number'''
                : null,
          ),
        );
      },
    );
  }
}
