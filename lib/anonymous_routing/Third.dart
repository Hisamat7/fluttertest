import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Third Screen",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go back to Second Screen"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 235, 204, 202),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),),),),
          
          ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go to back to First Screen"),
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