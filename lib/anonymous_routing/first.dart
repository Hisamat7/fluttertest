import 'package:flutter/material.dart';
import 'package:flutter_application_1/anonymous_routing/Second.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Fisrt Screen",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Second(),  // push to second page
                  ));
                },
                child: Text("Second Screen"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 235, 204, 202),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7))))
          ],
        ),
      ),
    );
  }
}
