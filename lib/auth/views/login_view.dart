import 'package:block_test/auth/bloc/auth_bloc.dart';
import 'package:block_test/auth/models/auth_view.dart';
import 'package:block_test/auth/widgets/login_email_input.dart';
import 'package:block_test/auth/widgets/login_password_input.dart';
import 'package:block_test/auth/widgets/social_auth_section.dart';
import 'package:block_test/widgets/buttons/basic_button.dart';
import 'package:block_test/widgets/buttons/basic_icon_button.dart';
import 'package:block_test/widgets/buttons/basic_text_button.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:block_test/widgets/inputs/basic_text_field.dart';
import 'package:block_test/widgets/layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with BaseExtension {
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) {
        context.read<AuthBloc>().add(const AuthEvent.loginEmailUnfocused());
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      }
    });
    _passwordFocusNode.addListener(() {
      if (!_passwordFocusNode.hasFocus) {
        context.read<AuthBloc>().add(const AuthEvent.loginPasswordUnfocused());
      }
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icons/logo.png',
                  height: maxHeight(context) * 0.2),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LoginEmailInput(focusNode: _emailFocusNode),
                  LoginPasswordInput(focusNode: _passwordFocusNode),
                  const SocialAuthSection(),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BasicButton(onPressed: () {}, label: 'Log In'),
                  const SizedBox(
                    height: 40,
                  ),
                  BasicTextButton(
                      onPressed: () => context.read<AuthBloc>().add(
                          const AuthEvent.authViewChanged(AuthView.register)),
                      label: 'Sign up'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
