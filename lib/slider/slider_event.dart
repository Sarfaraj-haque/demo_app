import 'package:equatable/equatable.dart';

abstract class SliderEvent extends Equatable {
  const SliderEvent();
  @override
  List<Object> get props => [];
}

class SliderValueChanged extends SliderEvent {
  double value;
  SliderValueChanged({required this.value});
  @override
  List<Object> get props => [value];
}
