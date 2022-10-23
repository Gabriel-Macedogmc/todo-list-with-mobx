import 'package:mobx/mobx.dart';
import 'package:json_annotation/json_annotation.dart';
part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel extends _TodoModelBase with _$TodoModel {
  TodoModel({required super.id, required super.title, super.completed});

  factory TodoModel.fromMap(Map<String, dynamic> map) =>
      _$TodoModelFromJson(map);
}

abstract class _TodoModelBase with Store {
  _TodoModelBase({required this.id, required this.title, this.completed});

  @observable
  int? id;

  @observable
  String title;

  @observable
  bool? completed;

  @computed
  String get isCompleted => completed! ? "Concluida" : "Não Concluida";
}
