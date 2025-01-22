import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/FacebookUi.dart';

class RunningUi extends StatelessWidget {
  const RunningUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      title: "facebook ui",
      home: Facebookui(),

    );
  }
}