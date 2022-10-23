import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../controllers/todo_controller.dart';
import '../models/todo_model.dart';

class TodoItemWidget extends StatelessWidget {
  const TodoItemWidget({
    Key? key,
    required this.todo,
    required this.todoController,
  }) : super(key: key);

  final TodoModel todo;
  final TodoController todoController;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 3,
            color: todo.completed! ? Colors.green : Colors.red,
            child: ListTile(
              title: Text(
                todo.title,
              ),
              subtitle: Text(
                todo.isCompleted,
              ),
              leading: Checkbox(
                value: todo.completed,
                onChanged: (bool? value) {
                  todo.completed = value;
                },
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete, size: 32),
                onPressed: () {
                  todoController.removeTodo(todo.id!);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
