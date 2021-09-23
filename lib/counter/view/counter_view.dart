import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget with BaseExtension {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: SafeArea(
        child: BlocConsumer<CounterBloc, CounterState>(
          listenWhen: (lastState, nextState) {
            return lastState.counterStatus != nextState.counterStatus;
          },
          listener: (context, state) {
            final counterStatus = state.counterStatus;
            if (counterStatus is InitialCounterStatus) {
              showSnackBar(context, counterStatus.message!);
            } else if (counterStatus is FinishedCounterStatus) {
              showSnackBar(context, counterStatus.message);
            }
          },
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
                            context.read<CounterBloc>().add(ButtonActive()),
                        onTapUp: (e) =>
                            context.read<CounterBloc>().add(ButtonInActive()),
                        onTap: () =>
                            context.read<CounterBloc>().add(Increment()),
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
