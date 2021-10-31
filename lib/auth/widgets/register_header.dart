import 'package:block_test/auth/bloc/auth_bloc.dart';
import 'package:block_test/auth/models/auth_view.dart';
import 'package:block_test/widgets/buttons/basic_widget_button.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterHeader extends StatelessWidget with BaseExtension {
  const RegisterHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              onPressed: () => context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authViewChanged(AuthView.login))),
          BasicWidgetButton(
              child: Image.asset('assets/icons/logo.png', height: 32),
              onPressed: () => print('')),
        ],
      ),
    );
  }
}
