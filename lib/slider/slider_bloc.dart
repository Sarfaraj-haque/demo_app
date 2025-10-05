import 'package:demo_app/slider/slider_event.dart';
import 'package:demo_app/slider/slider_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderState()) {
    on<SliderValueChanged>(_sliderValueChaned);
  }
  void _sliderValueChaned(SliderValueChanged event, Emitter<SliderState> emit) {
    return emit(state.copyWith(event.value));
  }
}
