part of 'counter_cubit.dart';

class CounterCubitState {
  bool buttonActive;
  int number;

  CounterCubitState({
    required this.buttonActive,
    required this.number,
  });

  List<Object> get props => [buttonActive, number];

  bool get isFinished => number == 15;
}

class CounterCubitInitial extends CounterCubitState {
  CounterCubitInitial()
      : super(
          number: 0,
          buttonActive: false,
        );
}

class CounterCubitFinal extends CounterCubitState {
  CounterCubitFinal()
      : super(
          number: 15,
          buttonActive: false,
        );
}
