import 'package:flutter/material.dart';

class Appbarbutton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;

  Appbarbutton(
      {required this.buttonIcon,
      required this.buttonAction,
      this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonAction,
      child: Icon(
        buttonIcon,
        color: iconColor,
      ),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(20, 40),
          shape: CircleBorder(),
          backgroundColor: const Color.fromARGB(255, 229, 227, 227)),
    );
  }
}
