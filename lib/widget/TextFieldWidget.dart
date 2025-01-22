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
              labelStyle: TextStyle(color: Colors.black, fontSize: 17),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),
            ),
          ),
        ));
  }
}
