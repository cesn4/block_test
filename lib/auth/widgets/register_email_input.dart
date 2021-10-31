import 'package:block_test/auth/bloc/auth_bloc.dart';
import 'package:block_test/widgets/inputs/basic_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterEmailInput extends StatelessWidget {
  final FocusNode focusNode;
  const RegisterEmailInput({Key? key, required this.focusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: BasicTextField(
            label: 'email',
            initialValue: state.registerEmail.value,
            onChanged: (value) {
              context
                  .read<AuthBloc>()
                  .add(AuthEvent.registerEmailChanged(value));
            },
            textInputAction: TextInputAction.next,
            errorText: state.registerEmail.invalid
                ? 'Please ensure the email entered is valid'
                : null,
          ),
        );
      },
    );
  }
}
