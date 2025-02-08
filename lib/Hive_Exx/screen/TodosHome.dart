import 'package:flutter/material.dart';
import 'package:flutter_application_1/Hive_Exx/model/TodosModel.dart';
import 'package:flutter_application_1/Hive_Exx/service/TodoService.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodosHome extends StatefulWidget {
  const TodosHome({super.key});

  @override
  State<TodosHome> createState() => _TodoshomeState();
}

class _TodoshomeState extends State<TodosHome> {
  TextEditingController addcontroller = TextEditingController();
  TodoService todoservice = TodoService();
  List<TodoModel>? _todo = [];

  Future<void> _loadTodo() async {
    _todo = await todoservice.getalltodo();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadTodo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: Text("TO DO"),
        elevation: 0,
      ),
      backgroundColor: Colors.yellow[200],
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: FloatingActionButton(
          onPressed: () {
            _addDailog();
          },
          backgroundColor: Colors.yellow[200],
          shape: CircleBorder(),
          child: Icon(Icons.add),
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: _todo!.length,
            itemBuilder: (context, index) {
              final todo = _todo![index];
              return listContainer(
                index: index, 
                iscomplete: todo.isCompleted,
                title: todo.title,
                onChanged: (value) {
                  setState(() {
                    todo.isCompleted = value!;
                    todoservice.updatetodo(index, todo);
                  });
                },
              );
            }),
      ),
    );
  }

  Future<void> _addDailog() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.yellow[200],
            content: Container(
              height: 80,
              padding: EdgeInsets.only(left: 10, right: 10, top: 6),
              child: Column(
                children: [
                  TextFormField(
                    controller: addcontroller,
                    decoration: InputDecoration(
                        hintText: "Add new task",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(
                                color:
                                    const Color.fromARGB(255, 255, 250, 203))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(
                                color:
                                    const Color.fromARGB(255, 255, 234, 42)))),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
                onPressed: () async {
                  if (addcontroller.text.isNotEmpty) {
                    TodoModel newTodo = TodoModel(
                      time: DateTime.now(),
                      title: addcontroller.text,
                      isCompleted: false,
                    );
                    await todoservice.addtodo(newTodo);
                    addcontroller.clear();
                    _loadTodo();
                    Navigator.of(context).pop();
                  }
                },
                child: Text(
                  "Save",
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Cancel",
                ),
              ),
            ],
          );
        });
  }

  Widget listContainer({
    required int index, 
    required String title,
    required bool iscomplete,
    required Function(bool?) onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              backgroundColor: Colors.red,
              icon: Icons.delete,
              label: "Delete",
              onPressed: (context) async {
                await todoservice.deletetodo(index); 
                _loadTodo();
              },
            ),
          ],
        ),
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Checkbox(
                value: iscomplete,
                onChanged: onChanged,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  title,
                  style: TextStyle(
                    decoration: iscomplete
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
              )
            ])),
      ),
    );
  }
}