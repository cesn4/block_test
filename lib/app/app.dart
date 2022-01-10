import 'package:authentication_repository/authentication_repository.dart';
import 'package:block_test/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  final AuthenticationRepository authenticationRepository;
  const MyApp({Key? key, required this.authenticationRepository})
      : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationRepository>.value(
            value: authenticationRepository),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: const ColorScheme.dark()
                .copyWith(primary: Colors.amber, secondary: Colors.black),
          ),
          home: const AuthPage()),
    );
  }
}
