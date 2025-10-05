import 'package:equatable/equatable.dart';

class SliderState extends Equatable {
  double initialValue;
  SliderState({this.initialValue = 1.0});
  SliderState copyWith(double? initialValue) {
    return SliderState(initialValue: initialValue ?? this.initialValue);
  }

  @override
  List<Object> get props => [initialValue];
}
