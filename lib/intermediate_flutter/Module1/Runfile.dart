import 'package:flutter/material.dart';
import 'package:flutter_application_1/intermediate_flutter/Module1/StatefulApp.dart';

class Runfile extends StatelessWidget {
  const Runfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Statefulapp(),),
    );
  }
}