import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_list_with_mobx/controllers/todo_controller.dart';
import 'package:todo_list_with_mobx/pages/home_page.dart';
import 'package:todo_list_with_mobx/repositories/todo_repository.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<TodoRepository>(TodoRepository(getIt.get<Dio>()));
  getIt.registerSingleton<TodoController>(
      TodoController(getIt.get<TodoRepository>()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
