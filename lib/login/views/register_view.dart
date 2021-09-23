import 'package:block_test/login/auth_page_cubit/auth_cubit.dart';
import 'package:block_test/widgets/buttons/basic_button.dart';
import 'package:block_test/widgets/buttons/basic_icon_button.dart';
import 'package:block_test/widgets/buttons/basic_text_button.dart';
import 'package:block_test/widgets/buttons/basic_widget_button.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:block_test/widgets/inputs/basic_text_field.dart';
import 'package:block_test/widgets/layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class RegisterView extends StatelessWidget with BaseExtension {
  const RegisterView({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BasicWidgetButton(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: colors(context).secondary,
                          size: 30,
                        ),
                        onPressed: () =>
                            context.read<AuthPageCubit>().navigateToLogin()),
                    BasicWidgetButton(
                        child: Image.asset('assets/icons/logo.png', height: 32),
                        onPressed: () => print('')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BasicTextField(
                      label: 'name',
                      onChanged: (e) => print(e),
                      errorText: null,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    BasicTextField(
                      label: 'email',
                      onChanged: (e) => print(e),
                      errorText: null,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    BasicTextField(
                      label: 'password',
                      onChanged: (e) => print(e),
                      errorText: null,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    BasicTextField(
                      label: 're-password',
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
