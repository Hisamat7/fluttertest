import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Study extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: const Color.fromARGB(255, 196, 222, 197))),
            ),
          ),
        ),
      ),
    );
  }
}
