import 'package:flutter_application_1/Hive_Exx/model/TodosModel.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TodoService {
  Box<TodoModel>? _todos;

  Future<void> openbox() async {
    _todos = await Hive.openBox("todo");
  }

  Future<void> closebox() async {
    _todos!.close();
  }

  Future<void> addtodo(TodoModel todo) async {
    if (_todos == null) {
      await openbox();
    }
    await _todos!.add(todo);
  }

  Future<List<TodoModel>> getalltodo() async {
    if (_todos == null) {
      await openbox();
    }
    return _todos!.values.toList();
  }

  Future<void> updatetodo(int index, TodoModel todo) async {
    if (_todos == null) {
      await openbox();
    }
    await _todos!.putAt(index, todo);
  }

  Future<void> deletetodo(int index) async {
    if (_todos == null) {
      await openbox();
    }
    await _todos!.deleteAt(index);
  }
}
