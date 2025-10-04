import 'package:demo_app/counter_app/counter_bloc.dart';
import 'package:demo_app/counter_app_ui/counter_app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: CounterApp(),

          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text('Welcom to Learning the bloc State managment'),
          //       IconButton(
          //         onPressed: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(builder: (context) => CounterApp()),
          //           );
          //         },
          //         icon: Icon(Icons.forward),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
