import 'package:animations/animations.dart';
import 'package:block_test/auth/bloc/auth_bloc.dart';
import 'package:block_test/auth/views/login_view.dart';
import 'package:block_test/auth/views/register_view.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'models/auth_view.dart';

class AuthPage extends StatelessWidget with BaseExtension {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildView(AuthView view) {
      switch (view) {
        case AuthView.login:
          return const LoginView(
            key: Key('LoginView'),
          );
        case AuthView.register:
          return const RegisterView(
            key: Key('RegisterView'),
          );
      }
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return PageTransitionSwitcher(
            duration: const Duration(milliseconds: 2000),
            transitionBuilder: (
              Widget child,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return FadeThroughTransition(
                fillColor: colors(context).primary,
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              );
            },
            child: _buildView(state.authView),
          );
        },
      ),
    );
  }
}
