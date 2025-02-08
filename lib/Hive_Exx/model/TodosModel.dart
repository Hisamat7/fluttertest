import 'package:hive_flutter/hive_flutter.dart';

part 'TodosModel.g.dart';

@HiveType(typeId: 1)
class TodoModel {
  @HiveField(0)
  late String title;
  @HiveField(1)
  late DateTime time;
  @HiveField(2)
  late bool isCompleted;

  TodoModel(
      {required this.isCompleted, required this.time, required this.title});
}
