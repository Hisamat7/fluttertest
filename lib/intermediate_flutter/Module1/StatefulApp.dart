import 'package:flutter/material.dart';

class Statefulapp extends StatefulWidget {
  @override
  StatefulappState createState() {
    return StatefulappState();
  }
}

class StatefulappState extends State<Statefulapp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Count: $counter',
            style: TextStyle(fontSize: 24),
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                      
                    }
                    );    
                    print(counter);
                  },
                  child: Text("Click Me"))),
        ],
      ),
    );
  }
}
