import 'package:mobx/mobx.dart';
import 'package:todo_list_with_mobx/models/todo_model.dart';
import 'package:todo_list_with_mobx/repositories/todo_repository.dart';
part 'todo_controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {
  final TodoRepository repository;

  @observable
  ObservableList<TodoModel> todoList = ObservableList<TodoModel>();

  _TodoControllerBase(this.repository);

  @action
  getTodos() async {
    todoList = ObservableList.of(await repository.getTodoList());
  }

  @action
  removeTodo(int id) {
    todoList.removeWhere((element) => element.id == id);
  }
}
