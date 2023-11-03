import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterpersonal/models/todo.dart';

final todoProvider= StateNotifierProvider<TodoProvider, List<Todo>>((ref) => TodoProvider([]));

class TodoProvider extends StateNotifier<List<Todo>>{
  TodoProvider(super.state);

  void addTodo(Todo todo){
    state= [...state, todo];
  }

  void removeTodo(){

  }

  void updateTodo(){

  }

}

