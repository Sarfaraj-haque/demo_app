import 'package:demo_app/slider/slider_bloc.dart';
import 'package:demo_app/slider/slider_event.dart';
import 'package:demo_app/slider/slider_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderUi extends StatelessWidget {
  const SliderUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Slider Example"),
          BlocBuilder<SliderBloc, SliderState>(
            buildWhen: (previous, current) =>
                previous.initialValue != current.initialValue,
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue.withValues(alpha: state.initialValue),
                    ),
                  ),
                  Text("Value:${state.initialValue.toStringAsFixed(1)}"),
                  Center(
                    child: Slider(
                      value: state.initialValue,
                      onChanged: (e) {
                        context.read<SliderBloc>().add(
                          SliderValueChanged(value: e),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
