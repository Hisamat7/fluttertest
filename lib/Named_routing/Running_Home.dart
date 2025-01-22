import 'package:flutter/material.dart';
import 'package:flutter_application_1/Named_routing/FirstHome.dart';
import 'package:flutter_application_1/Named_routing/SecondHome.dart';
import 'package:flutter_application_1/Named_routing/ThirdHome.dart';

class RunningHome extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
      "first Screen":(context)=> Firsthome(),
      "second Screen":(context)=> Secondhome(),
      "third Screen":(context)=> Thirdhome(),

     },
     initialRoute: "first Screen",
    );
  }
}