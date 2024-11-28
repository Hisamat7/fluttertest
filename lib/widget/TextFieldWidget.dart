import 'package:flutter/material.dart';

class Textfieldwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 254, 253, 253),
      child: Center(
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 223, 50, 34),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(27)),
          ),
        ),
      ),
    );
  }
}
