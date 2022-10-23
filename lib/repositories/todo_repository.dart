import 'package:dio/dio.dart';
import 'package:todo_list_with_mobx/models/todo_model.dart';

abstract class ITodoRepository {
  Future<List<TodoModel>> getTodoList();
}

class TodoRepository implements ITodoRepository {
  final Dio _dio;

  TodoRepository(this._dio);

  @override
  Future<List<TodoModel>> getTodoList() async {
    final response =
        await _dio.get("https://jsonplaceholder.typicode.com/todos");

    return (response.data as List).map((e) => TodoModel.fromMap(e)).toList();
  }
}
