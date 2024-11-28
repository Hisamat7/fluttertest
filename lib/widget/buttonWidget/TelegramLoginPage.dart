import 'package:flutter/material.dart';

class Telegramloginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 0, 38, 69),
      child: Stack(
        children: [
          Positioned(
            left: 50,
            top: 220,
            right: 70,
            child: Center(
              child: Text(
                "Enter your local passcode",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 70,
            right: 90,
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Your Passcode",
                labelStyle: TextStyle(
                  color: const Color.fromARGB(255, 237, 236, 236),
                ),
              ),
            ),
          ),
          Positioned(
            left: 70,
            right: 90,
            top: 370,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 33, 130, 209),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            right: 60,
            top: 435,
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Text(
                  "Log out",
                  style: TextStyle(
                      fontSize: 15,
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
