import "package:flutter/material.dart";

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "umma develop",
      home: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.pink, width: 3)),
            child: Center(
              child: Text("umma develop"),
            ),
          ),
        ),
      ),
    );
  }
}
