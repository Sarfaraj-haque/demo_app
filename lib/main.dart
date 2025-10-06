import 'package:demo_app/counter_app/counter_bloc.dart';
import 'package:demo_app/image_picker/image_picker_bloc.dart';
import 'package:demo_app/screens/counter_app_ui/counter_app_ui.dart';
import 'package:demo_app/screens/image_picker_ui.dart';
import 'package:demo_app/screens/slider_ui.dart';
import 'package:demo_app/screens/switch/switch_ui.dart';
import 'package:demo_app/screens/todo_ui.dart';
import 'package:demo_app/slider/slider_bloc.dart';
import 'package:demo_app/switch/switch_bloc.dart';
import 'package:demo_app/todo_list/todo_bloc.dart';
import 'package:demo_app/utils/image_picker_utils.dart';
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
        BlocProvider(create: (_) => ImagePickerBloc(ImagePickerUtils())),
        BlocProvider(create: (_) => TodoBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: TodoUi()),
      ),
    );
  }
}
