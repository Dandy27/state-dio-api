import 'package:flutter/cupertino.dart';
import 'package:triple/app/models/model/todo_model.dart';
import 'package:triple/app/repositories/todo_repository.dart';

class HomeControllers {
  List<TodoModel> todos = [];
  final repository = TodoRepository();
  final state = ValueNotifier<HomeState>(HomeState.start);
  // HomeState state. = HomeState.start;


  Future start() async {
    state.value = HomeState.loading;
    try {
      todos = await repository.fetchTodos();
      state.value = HomeState.success;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, success, error }
