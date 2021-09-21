import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: SafeArea(
        child: BlocBuilder<CounterCubit, CounterCubitState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    state.number.toString(),
                    style: TextStyle(
                      color: colorScheme.secondary,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTapDown: (e) =>
                            context.read<CounterCubit>().isPressed(),
                        onTapUp: (e) =>
                            context.read<CounterCubit>().notPressed(),
                        onTap: () => context.read<CounterCubit>().increment(),
                        child: AnimatedContainer(
                          curve: Curves.easeInOut,
                          duration: const Duration(milliseconds: 400),
                          padding: EdgeInsets.all(state.buttonActive ? 60 : 80),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorScheme.secondary,
                              boxShadow: [
                                BoxShadow(
                                    color: colorScheme.secondary,
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0)
                              ]),
                          child: AnimatedScale(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                            scale: state.buttonActive ? 0.8 : 1,
                            child: Text(
                              'Press Me',
                              style: TextStyle(
                                  color: colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Visibility(
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        visible: state.number == 0 || state.number == 15,
                        child: Text(
                          state.number == 0
                              ? 'Try tapping the button!'
                              : 'Number will reset now!',
                          style: TextStyle(
                            color: colorScheme.secondary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
