import 'package:flutter/material.dart';

class Refactorusingclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: const Color.fromARGB(255, 175, 205, 231)),
      width: 260,
      height: 140,
      child: ListTile(
        title: Text(
          "WELCOME",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        subtitle: ElevatedButton(
          onPressed: () {},
          child: Text("click me "),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7))),
        ),
      ),
    );
  }
}
