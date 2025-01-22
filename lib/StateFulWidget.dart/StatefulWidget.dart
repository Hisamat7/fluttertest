import 'package:flutter/material.dart';

class Statefulwidget extends StatefulWidget {
  @override
  State<Statefulwidget> createState() => StatefulwidgetState();
}

class StatefulwidgetState extends State<Statefulwidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Count: $count"),

          ),
          ElevatedButton(onPressed: (){
            setState(() {
              count++;
            });
          }, child: Text("Click Me")),
        ],
      ),
    );
  }
}
