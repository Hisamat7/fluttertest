import 'package:flutter/material.dart';

class Stackwidget2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 229, 219, 255),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            
            Positioned(
              left: 100,
              top: 200,
              child: Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 255, 228, 146),
              ),
            ),
            Positioned(
              left: 170,
              bottom: 250,
              child: Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 175, 255, 146),
              ),
            ),
            Positioned(
              left: 100,
              bottom: 130,
              child: Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 187, 236, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
