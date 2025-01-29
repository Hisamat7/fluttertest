import 'package:hive_flutter/adapters.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 1)
class Todo {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;
  @HiveField(2)
  DateTime createdAt;
  @HiveField(3)
  bool isCompleted;
  Todo({required this.title, required this.isCompleted,required this.description,required this.createdAt});
}
