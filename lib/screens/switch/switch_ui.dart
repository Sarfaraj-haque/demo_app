import 'package:demo_app/switch/switch_bloc.dart';
import 'package:demo_app/switch/switch_event.dart';
import 'package:demo_app/switch/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchUi extends StatelessWidget {
  const SwitchUi({super.key});

  @override
  Widget build(BuildContext context) {
    print("Widget tree rebuilding");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Switch Bloc Example'),
            BlocBuilder<SwitchBloc, SwitchState>(
              builder: (context, state) {
                return Switch(
                  value: state.isOn,
                  onChanged: (e) {
                    print(e);
                    context.read<SwitchBloc>().add(ToggleSwitchEvent());
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
