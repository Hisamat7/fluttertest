import 'package:flutter_application_1/hive_db/model/todo_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Todoservice {
  Box<Todo>? _todoBox;
  Future<void> openBox() async {
    _todoBox = await Hive.openBox<Todo>("todo");
  }

  Future<void> closeBox() async {
    await _todoBox!.close();
  }

  Future<void> addTodo(Todo todo) async {
    if (_todoBox == null) {
      await openBox();
    }
    await _todoBox!.add(todo);
  }
  Future<List<Todo>> getalltodo() async {
    if (_todoBox == null) {
      await openBox();
    }
    return _todoBox!.values.toList();
  }

  Future<void> updatetodo(int index, Todo todo) async {
    if (_todoBox == null) {
      await openBox();
    }
    await _todoBox!.putAt(index, todo);
  }

  Future<void> deletetodo(int index) async {
    if (_todoBox == null) {
      await openBox();
    }
    await _todoBox!.deleteAt(index);
  }
} 
