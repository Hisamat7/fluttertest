import 'package:flutter/material.dart';

class TelegramUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 8, 37, 61),
      child: Stack(
        children: [
          Positioned(
            right: 60,
            left: 50,
            top: 177,
            child: Center(
              child: Text(
                "Enter Your local passcode",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
          Positioned(
            left: 55,
            right: 72,
            top: 252,
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Your passcode",
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 237, 236, 236))),
            ),
          ),
          Positioned(
            left: 58,
            right: 75,
            top: 342,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 26, 123, 202),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),
          ),
          Positioned(
            left: 58,
            right: 75,
            top: 408,
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Text(
                  "Log out",
                  style: TextStyle(
                      fontSize: 17,
                      color: const Color.fromARGB(255, 93, 169, 231)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
