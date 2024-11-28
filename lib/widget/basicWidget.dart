import 'package:flutter/material.dart';

class IndianFlag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 255, 240, 240),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 230,
              height: 90,
              color: Colors.orange,
            ),
            Container(
              width: 230,
              height: 90,
              color: Colors.white,
              child: Image.asset('image/asokachakra1.jpg'),
            ),
            Container(
              width: 230,
              height: 90,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
