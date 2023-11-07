import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterpersonal/models/todo.dart';
import 'package:flutterpersonal/provider/todo_provider.dart';
import 'package:get/get.dart';


class UpdatePage extends StatelessWidget {
  final Todo todo;
  UpdatePage({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                Consumer(
                    builder: (context, ref, child) {
                      return TextFormField(
                        initialValue: todo.todo,
                        onFieldSubmitted: (val) {
                          if (val.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: Duration(seconds: 1),
                                content: Text('please provide value')
                            ));
                          } else {
                            ref.read(todoProvider.notifier).updateTodo(Todo(
                                DateTime: todo.DateTime, todo: val.trim()));
                            Get.back();
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'add some todo',
                            prefixIcon: Icon(Icons.abc)
                        ),
                      );
                    }
                ),
              ],
            )
        )
    );
  }
}