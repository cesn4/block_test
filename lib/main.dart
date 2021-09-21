import 'package:bloc/bloc.dart';
import 'package:block_test/counter/view/counter_page.dart';
import 'package:flutter/material.dart';

import 'counter_observer.dart';

void main() {
  Bloc.observer = CounterObserver();
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
        home: const CounterPage());
  }
}
