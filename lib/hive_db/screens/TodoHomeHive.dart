import 'package:flutter/material.dart';
import 'package:flutter_application_1/hive_db/model/todo_model.dart';
import 'package:flutter_application_1/hive_db/service/TodoService.dart';

class Todohomehive extends StatefulWidget {
  const Todohomehive({super.key});

  @override
  State<Todohomehive> createState() => _TodohomehiveState();
}

class _TodohomehiveState extends State<Todohomehive> {
  final TextEditingController titlecontroller = TextEditingController();
  final TextEditingController descriptioncontoller = TextEditingController();
  final Todoservice _todoService = Todoservice();
  List<Todo>? _todos = [];

  Future<void> loadtodo() async {
    _todos = await _todoService.getalltodo();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadtodo();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 60,
        ),
        child: FloatingActionButton(
            backgroundColor: Colors.green[200],
            child: Icon(
              Icons.add,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              _showAddDialog();
            }),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Text("Todo List"),
      ),
      backgroundColor: const Color.fromARGB(255, 246, 254, 254),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: _todos!.length,
            itemBuilder: (context, index) {
              final todo = _todos![index];
              return ListTile(
                title: Text(todo.title),
                subtitle: Text(todo.description),
                trailing: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        value: todo.isCompleted,
                        onChanged: (value) {
                          setState(() {
                            todo.isCompleted = value!;
                            _todoService.updatetodo(index, todo);
                            setState(() {
                              
                            });
                          });
                        }),
                        IconButton(
                          icon :Icon(Icons.delete),
                          color: Colors.red,
                          onPressed: () async{
                          await  _todoService.deletetodo(index);
                            loadtodo();
                          }
                        ),
                  ],
                ),
              );
            }),
      ),
    );
  }

  Future<void> _showAddDialog() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("New Task"),
            backgroundColor: const Color.fromARGB(255, 249, 252, 249),
            content: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              height: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: titlecontroller,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 72, 136, 103))),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 205, 154),
                            ),
                          ),
                          hintText: "Title",
                          labelText: "Title"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
                    child: TextField(
                      controller: descriptioncontoller,
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: "Description",
                        labelText: "Description",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 72, 136, 103),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 92, 205, 154),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "cancel",
                  style:
                      TextStyle(color: const Color.fromARGB(255, 28, 112, 74)),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[50],
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(10))),
              ),
              ElevatedButton(
                onPressed: () async {
                  final newtodo = Todo(
                      createdAt: DateTime.now(),
                      description: descriptioncontoller.text,
                      isCompleted: false,
                      title: titlecontroller.text);
                  await _todoService.addTodo(newtodo);
                  loadtodo();
                  Navigator.pop(context);
                },
                child: Text(
                  "add",
                  style:
                      TextStyle(color: const Color.fromARGB(255, 28, 112, 74)),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[50],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.teal))),
              ),
            ],
          );
        });
  }
}
