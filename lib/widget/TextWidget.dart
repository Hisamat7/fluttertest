import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "hisam",
        style: TextStyle(
            fontSize: 22,
            color: const Color.fromARGB(255, 26, 66, 27),
            letterSpacing: 3),
      ),
    );
  }
}
