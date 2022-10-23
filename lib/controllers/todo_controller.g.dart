// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoController on _TodoControllerBase, Store {
  late final _$todoListAtom =
      Atom(name: '_TodoControllerBase.todoList', context: context);

  @override
  ObservableList<TodoModel> get todoList {
    _$todoListAtom.reportRead();
    return super.todoList;
  }

  @override
  set todoList(ObservableList<TodoModel> value) {
    _$todoListAtom.reportWrite(value, super.todoList, () {
      super.todoList = value;
    });
  }

  late final _$getTodosAsyncAction =
      AsyncAction('_TodoControllerBase.getTodos', context: context);

  @override
  Future getTodos() {
    return _$getTodosAsyncAction.run(() => super.getTodos());
  }

  late final _$_TodoControllerBaseActionController =
      ActionController(name: '_TodoControllerBase', context: context);

  @override
  dynamic removeTodo(int id) {
    final _$actionInfo = _$_TodoControllerBaseActionController.startAction(
        name: '_TodoControllerBase.removeTodo');
    try {
      return super.removeTodo(id);
    } finally {
      _$_TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todoList: ${todoList}
    ''';
  }
}
