import 'package:bloc/bloc.dart';

part 'counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterCubitInitial());

  void increment() {
    if (!state.isFinished) {
      if (state.number < 14) {
        emit(CounterCubitState(
            buttonActive: state.buttonActive, number: state.number + 1));
      } else if (state.number == 14) {
        emit(CounterCubitFinal());
      }
    } else {
      emit(CounterCubitInitial());
    }
  }

  void isPressed() =>
      emit(CounterCubitState(buttonActive: true, number: state.number));

  void notPressed() {
    Future.delayed(
      const Duration(milliseconds: 150),
      () => emit(
        CounterCubitState(buttonActive: false, number: state.number),
      ),
    );
  }
}
