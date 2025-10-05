import 'package:demo_app/switch/switch_event.dart';
import 'package:demo_app/switch/switch_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<ToggleSwitchEvent>(_toggleSwitchEvent);
  }

  void _toggleSwitchEvent(ToggleSwitchEvent events, Emitter<SwitchState> emit) {
    return emit(state.copyWith(!state.isOn));
  }
}
