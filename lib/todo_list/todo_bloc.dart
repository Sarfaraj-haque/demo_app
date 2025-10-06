import 'package:demo_app/todo_list/todo_event.dart';
import 'package:demo_app/todo_list/todo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<String> todos = [];
  TodoBloc() : super(const TodoState()) {
    on<AddTodoEvent>(_addTodo);
    on<RemoveTodoEvent>(_removeTodo);
  }
  void _addTodo(AddTodoEvent event, Emitter<TodoState> emit) {
    todos.add(event.todo);
    emit(state.copyWith(todos: List.from(todos)));
  }

  void _removeTodo(RemoveTodoEvent event, Emitter<TodoState> emit) {
    todos.remove(event.todo);
    emit(state.copyWith(todos: List.from(todos)));
  }
}
