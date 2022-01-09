import 'package:block_test/auth/auth_page.dart';
import 'package:block_test/auth/views/login_view.dart';
import 'package:block_test/timer/timer_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: const ColorScheme.dark()
                .copyWith(primary: Colors.amber, secondary: Colors.black)),
        home: const AuthPage());
  }
}
