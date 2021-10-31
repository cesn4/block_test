import 'package:block_test/auth/bloc/auth_bloc.dart';
import 'package:block_test/widgets/inputs/basic_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginEmailInput extends StatelessWidget {
  final FocusNode focusNode;
  const LoginEmailInput({Key? key, required this.focusNode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: BasicTextField(
            label: 'email',
            initialValue: state.loginEmail.value,
            focusNode: focusNode,
            onChanged: (value) {
              context.read<AuthBloc>().add(AuthEvent.loginEmailChanged(value));
            },
            textInputAction: TextInputAction.next,
            errorText: state.loginEmail.invalid
                ? 'Please ensure the email entered is valid'
                : null,
          ),
        );
      },
    );
  }
}
