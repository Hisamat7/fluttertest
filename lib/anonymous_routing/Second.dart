import 'package:flutter/material.dart';
import 'package:flutter_application_1/anonymous_routing/Third.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Second Screen",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Third()),
                );
              },
              child: Text("Go to third Screen"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 204, 202),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);// return to previous page
                },
                child: Text("Go to back"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 235, 204, 202),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),),),)
          ],
        ),
      ),
    );
  }
}
