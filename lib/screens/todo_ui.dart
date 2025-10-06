import 'package:demo_app/todo_list/todo_bloc.dart';
import 'package:demo_app/todo_list/todo_event.dart';
import 'package:demo_app/todo_list/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoUi extends StatelessWidget {
  const TodoUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < 5; i++) {
            context.read<TodoBloc>().add(AddTodoEvent("Task $i"));
          }
        },
        child: Icon(Icons.add),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state.todos.isEmpty) {
            return Center(child: Text("No todos available"));
          } else if (state.todos.isNotEmpty) {
            return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.todos[index]),
                  trailing: IconButton(
                    onPressed: () {
                      context.read<TodoBloc>().add(
                        RemoveTodoEvent(state.todos[index]),
                      );
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              },
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
