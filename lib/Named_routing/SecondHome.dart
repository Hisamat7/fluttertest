import 'package:flutter/material.dart';
import 'package:flutter_application_1/Named_routing/ThirdHome.dart';

class Secondhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Second Screen"),
            ElevatedButton(
                onPressed: () {
                 Navigator.pushReplacementNamed(context, "third Screen");
                },
                child: Text(
                  "Third Screen",
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Go Back",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
