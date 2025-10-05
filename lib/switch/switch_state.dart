import 'package:equatable/equatable.dart';

 class SwitchState extends Equatable {
   bool isOn;
  SwitchState({this.isOn = false});

  SwitchState copyWith(bool? isOn) {
    return SwitchState(isOn: isOn ?? this.isOn);
  }

  @override
  List<Object> get props => [isOn];
}
