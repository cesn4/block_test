import 'package:authentication_repository/authentication_repository.dart';
import 'package:block_test/board_score/board_score.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc Test',
      home: BoardScorePage(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
        colorScheme: const ColorScheme.dark()
            .copyWith(primary: Colors.amber, secondary: Colors.black),
      ),
    );
  }
}
