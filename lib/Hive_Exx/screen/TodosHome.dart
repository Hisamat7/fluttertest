import 'package:flutter/material.dart';

class TodosHome extends StatefulWidget {
  const TodosHome({super.key});

  @override
  State<TodosHome> createState() => _TodoshomeState();
}

class _TodoshomeState extends State<TodosHome> {
  TextEditingController addcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO DO"),
        elevation: 0,
      ),
      backgroundColor: Colors.yellow[200],
      floatingActionButton: FloatingActionButton(onPressed: () {
        _addDailog();
      },
      shape: CircleBorder(),
      child: Icon(Icons.add),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return ListTile();
            }),
      ),
    );
  }

  Future<void> _addDailog() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
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
                                color: const Color.fromARGB(255, 1, 99, 88))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 3, 105, 93)))),
                  )
                ],
              ),
            ),
          );
        });
  }
}
