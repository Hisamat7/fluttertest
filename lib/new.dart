import "package:flutter/material.dart";
import './widu.dart';
class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "zayan app",
      home: Scaffold(
        body: Center(
          child: NewWidu(),
        ),
      ),
    );
  }
}
