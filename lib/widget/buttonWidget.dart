import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text("click"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.all(10),
                shape: CircleBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: OutlinedButton(
              onPressed: () {},
              child: Text("hello click"),
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2, color: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}
