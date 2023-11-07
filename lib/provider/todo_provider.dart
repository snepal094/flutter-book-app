import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/todo.dart';



final todoProvider = StateNotifierProvider<TodoProvider, List<Todo>>((ref) {
  return TodoProvider([
    Todo(DateTime: DateTime.now().toString(), todo: 'This is my Task'),
    Todo(DateTime: DateTime.now().toString(), todo: 'This is my Task on Staring New'),
  ]);
});


class TodoProvider extends StateNotifier<List<Todo>>{
  TodoProvider(super.state);


  void addTodo(Todo todo){
    state = [...state, todo];
  }


  void removeTodo(int index){
    state.removeAt(index);
    state = [...state];
  }

  void updateTodo(Todo todo){
    state = [
      for(final t in state) t.DateTime == todo.DateTime ? todo : t
    ];
  }





}

