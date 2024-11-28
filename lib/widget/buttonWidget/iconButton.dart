import 'package:flutter/material.dart';

class Iconbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat,
                size: 50,
                color: Colors.yellow,
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
