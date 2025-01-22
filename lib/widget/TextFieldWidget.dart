import 'package:flutter/material.dart';

class Textfieldwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              labelText: "email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )),
        ),
      ),
    );
  }
}
