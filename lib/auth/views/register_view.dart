import 'package:block_test/auth/bloc/auth_bloc.dart';
import 'package:block_test/auth/models/auth_view.dart';
import 'package:block_test/auth/widgets/register_email_input.dart';
import 'package:block_test/auth/widgets/register_header.dart';
import 'package:block_test/auth/widgets/register_password_2_input.dart';
import 'package:block_test/auth/widgets/register_password_input.dart';
import 'package:block_test/auth/widgets/social_auth_section.dart';
import 'package:block_test/widgets/buttons/basic_button.dart';
import 'package:block_test/widgets/buttons/basic_icon_button.dart';
import 'package:block_test/widgets/buttons/basic_widget_button.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:block_test/widgets/inputs/basic_text_field.dart';
import 'package:block_test/widgets/layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatefulWidget with BaseExtension {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> with BaseExtension {
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _password_2FocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) {
        context.read<AuthBloc>().add(const AuthEvent.registerEmailUnfocused());
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      }
    });
    _passwordFocusNode.addListener(() {
      if (!_passwordFocusNode.hasFocus) {
        context
            .read<AuthBloc>()
            .add(const AuthEvent.registerPasswordUnfocused());
      }
    });
    _password_2FocusNode.addListener(() {
      if (!_password_2FocusNode.hasFocus) {
        context
            .read<AuthBloc>()
            .add(const AuthEvent.registerPassword_2Unfocused());
      }
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _password_2FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RegisterHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RegisterEmailInput(focusNode: _emailFocusNode),
                    RegisterPasswordInput(focusNode: _passwordFocusNode),
                    RegisterPassword2Input(focusNode: _password_2FocusNode),
                    const SocialAuthSection(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: BasicButton(onPressed: () {}, label: 'Register'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
