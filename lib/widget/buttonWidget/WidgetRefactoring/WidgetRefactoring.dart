import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/buttonWidget/WidgetRefactoring/RefactorUsingClass.dart';

class Widgetrefactoring extends StatelessWidget {
  @override
  Widget SportButton() {         //FunctionRefactoring 
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        "click me",
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0,),
          minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
          ))
    );
  }

  Widget build(BuildContext context) {
    Widget football = Icon(Icons.sports_football); //WidgetRefactoring
    Widget circket = Icon(Icons.sports_cricket); //WidgetRefactoring
    Widget basketball = Icon(Icons.sports_basketball); //WidgetRefactoring
    Widget sports = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [football, circket, basketball],
    );
    return MaterialApp(
      title: "Widget refactoring",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 217, 217),
          title: Text(
            "Sports",
          ),
        ),
        body: ListView(
          children: [
            sports //calling the Widgetrefactoring variable
            ,
            SizedBox(
              height: 30,
            ),
           
            SportButton()  //calling the WidgetRefactoring function
            ,
            SizedBox(
              height: 30,
            ),
             Refactorusingclass()   // calling the WidgetRefactoring form another file 
          ],

        ),
      ),
    );
  }
}
