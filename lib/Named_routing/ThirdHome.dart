import 'package:flutter/material.dart';

class Thirdhome extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Third Screen"),
        ElevatedButton(onPressed: (){}, child: Text("Go Back",style: TextStyle(fontSize: 20),)),
        ElevatedButton(onPressed: (){}, child: Text("First Screen",style: TextStyle(fontSize: 20),)),
      ],),
    ),);
  }
}