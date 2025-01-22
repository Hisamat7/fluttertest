import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/Avart.dart';
import 'package:flutter_application_1/Exercise/ImagesActor.dart';

class Statussection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Avatar(AvatarActor: dulqar,StatusIndicator: false,),
      title: TextField(
        decoration: InputDecoration(
            hintText: "What's on your mind ?",
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: InputBorder.none),
      ),
    );
  }
}
