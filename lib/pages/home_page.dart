import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import '../controllers/todo_controller.dart';
import '../widgets/todo_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final todoController = GetIt.I.get<TodoController>();

  @override
  void initState() {
    super.initState();
    todoController.getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => todoController.getTodos(),
            icon: const Icon(
              Icons.refresh,
            ),
          )
        ],
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: todoController.todoList.length,
            itemBuilder: (_, index) {
              final todo = todoController.todoList[index];
              return TodoItemWidget(todo: todo, todoController: todoController);
            },
          );
        },
      ),
    );
  }
}
