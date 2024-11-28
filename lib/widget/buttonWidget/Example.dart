import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ajay app",
        home: Scaffold(
          body: Center(
            child: Container(
              child: Center(
                child: Text(
                  "hisam",
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                ),
              ),
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ));
  }
}
