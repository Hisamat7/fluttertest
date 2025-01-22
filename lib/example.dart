import 'package:flutter/material.dart';

class Ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              width: 120,
              color: Colors.orange,
            ),
            Container(
              height: 60,
              width: 120,
              color: Colors.white,
            ),
            Container(height: 60, width: 120, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
