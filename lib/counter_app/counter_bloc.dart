import 'package:bloc/bloc.dart';
import 'package:demo_app/counter_app/counter_event.dart';
import 'package:demo_app/counter_app/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementEvent>((event, emit) => emit(state.copyWith(state.value + 1)));
    on<DecrementEvent>((event, emit) => emit(state.copyWith(state.value - 1)));
  }
}
