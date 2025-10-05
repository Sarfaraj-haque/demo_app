import 'package:demo_app/counter_app/counter_bloc.dart';
import 'package:demo_app/screens/counter_app_ui/counter_app_ui.dart';
import 'package:demo_app/screens/slider_ui.dart';
import 'package:demo_app/screens/switch/switch_ui.dart';
import 'package:demo_app/slider/slider_bloc.dart';
import 'package:demo_app/switch/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SwitchBloc()),
        BlocProvider(create: (_) => SliderBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: SliderUi()),
      ),
    );
  }
}
