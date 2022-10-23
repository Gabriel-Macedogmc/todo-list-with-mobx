// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => TodoModel(
      id: json['id'] as int?,
      title: json['title'] as String,
      completed: json['completed'] as bool?,
    );

Map<String, dynamic> _$TodoModelToJson(TodoModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoModel on _TodoModelBase, Store {
  late final _$idAtom = Atom(name: '_TodoModelBase.id', context: context);

  @override
  int? get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int? value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$titleAtom = Atom(name: '_TodoModelBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$completedAtom =
      Atom(name: '_TodoModelBase.completed', context: context);

  @override
  bool? get completed {
    _$completedAtom.reportRead();
    return super.completed;
  }

  @override
  set completed(bool? value) {
    _$completedAtom.reportWrite(value, super.completed, () {
      super.completed = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
title: ${title},
completed: ${completed}
    ''';
  }
}
