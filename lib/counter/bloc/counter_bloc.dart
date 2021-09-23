import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<Increment>((event, emit) {
      if (state.number == 14) {
        return emit(state.copyWith(
            number: state.number + 1,
            counterStatus: const FinishedCounterStatus()));
      } else if (state.number == 15) {
        return emit(state.copyWith(
            number: 0, counterStatus: const InitialCounterStatus()));
      }
      return emit(state.copyWith(
          number: state.number + 1, counterStatus: OngoingCounterStatus()));
    });
    on<ButtonActive>((event, emit) {
      return emit(state.copyWith(buttonActive: true));
    });
    on<ButtonInActive>((event, emit) {
      return emit(state.copyWith(buttonActive: false));
    });
  }

  @override
  void onChange(Change<CounterState> change) {
    super.onChange(change);
    // print(change.nextState.counterStatus);
  }
}
