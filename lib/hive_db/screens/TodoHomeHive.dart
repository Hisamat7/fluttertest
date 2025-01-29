import 'package:flutter/material.dart';

class Todohomehive extends StatefulWidget {
  const Todohomehive({super.key});

  @override
  State<Todohomehive> createState() => _TodohomehiveState();
}

class _TodohomehiveState extends State<Todohomehive> {
  List<bool> checkboxStates = List.generate(5, (index) => false);
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
            onPressed: () {}),
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
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("heading"),
                subtitle: Text("description"),
                trailing: Checkbox(
                    value: checkboxStates[index],
                    onChanged: (value) {
                      setState(() {
                        checkboxStates[index] = value ?? false;
                      });
                    }),
              );
            }),
      ),
    );
  }
}
