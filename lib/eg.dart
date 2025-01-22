import 'package:flutter/material.dart';

class Eg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 300,
            color: Colors.yellow,
            // padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // margin: EdgeInsets.all(20),
                  height: 150,
                  width: 250,
                  color: Colors.red,

                  child: Text("hisam"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
