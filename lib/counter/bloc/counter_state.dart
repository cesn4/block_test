part of 'counter_bloc.dart';

class CounterState {
  final int number;
  final bool buttonActive;
  final CounterLifecycleStatus counterStatus;

  CounterState(
      {this.number = 0,
      this.buttonActive = false,
      this.counterStatus = const InitialCounterStatus()});

  CounterState copyWith(
      {int? number,
      bool? buttonActive,
      CounterLifecycleStatus? counterStatus}) {
    return CounterState(
      counterStatus: counterStatus ?? this.counterStatus,
      number: number ?? this.number,
      buttonActive: buttonActive ?? this.buttonActive,
    );
  }

  List<Object> get props => [number, buttonActive, counterStatus];
}

@immutable
abstract class CounterLifecycleStatus {
  const CounterLifecycleStatus();
}

class InitialCounterStatus extends CounterLifecycleStatus {
  final String? message;
  const InitialCounterStatus({this.message = 'Here we go again!'});
}

class OngoingCounterStatus extends CounterLifecycleStatus {}

class FinishedCounterStatus extends CounterLifecycleStatus {
  final String message;
  const FinishedCounterStatus({this.message = 'Counter is going to reset!'});
}
