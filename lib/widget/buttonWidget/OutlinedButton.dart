import 'package:flutter/material.dart';

class Outlinedbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: OutlinedButton(
        onPressed: () {},
        child: Text("click me"),
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
