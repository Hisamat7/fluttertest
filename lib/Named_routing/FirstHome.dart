import 'package:flutter/material.dart';
import 'package:flutter_application_1/Named_routing/SecondHome.dart';

class Firsthome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Screen"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "second Screen");
                },
                child: Text(
                  "Second Screen",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
