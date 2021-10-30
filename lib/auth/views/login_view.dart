import 'package:block_test/auth/auth_page_cubit/auth_cubit.dart';
import 'package:block_test/widgets/buttons/basic_button.dart';
import 'package:block_test/widgets/buttons/basic_icon_button.dart';
import 'package:block_test/widgets/buttons/basic_text_button.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:block_test/widgets/inputs/basic_text_field.dart';
import 'package:block_test/widgets/layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget with BaseExtension {
  const LoginView({Key? key}) : super(key: key);

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
                  BasicTextField(
                    label: 'email',
                    onChanged: (e) => print(e),
                    errorText: null,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  BasicTextField(
                    label: 'password',
                    onChanged: (e) => print(e),
                    errorText: null,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BasicIconButton(
                        icon: Icons.facebook,
                        onPressed: () => print("facebook"),
                      ),
                      BasicIconButton(
                        icon: Icons.gamepad,
                        onPressed: () => print("google"),
                      ),
                      BasicIconButton(
                        icon: Icons.touch_app_rounded,
                        onPressed: () => print("apple"),
                      ),
                    ],
                  ),
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
                      onPressed: () =>
                          context.read<AuthPageCubit>().navigateToRegister(),
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
