import 'dart:developer';

import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterStateInitial()) {
    on<CounterIncrement>(_increment);
    on<CounterDecrement>(_decrement);
  }

  _increment(CounterIncrement event, Emitter<CounterState> emit) {
    emit(CounterStateData(state.counter + 1));
  }

  _decrement(CounterDecrement event, Emitter<CounterState> emit) {
    emit(CounterStateData(state.counter - 1));
  }
}
