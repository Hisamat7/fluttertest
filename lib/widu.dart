import 'package:flutter/material.dart';

class NewWidu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width * 0.6,
      height:MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.yellow, width: 2),
      ),
      child: Center(
        child: Text("zayan app"),
      ),
    );
  }
}
