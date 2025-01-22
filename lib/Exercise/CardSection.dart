import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/AppBarButton.dart';
import 'package:flutter_application_1/Exercise/Avart.dart';
import 'package:flutter_application_1/Exercise/ImagesActor.dart';

class Cardsection extends StatelessWidget {
  final String labelText;
  final String story;
  final String profile;
  final bool createstorystatus;
  Cardsection(
      {this.labelText = "name",
      required this.story,
      required this.profile,
      this.createstorystatus = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 5, left: 5, bottom: 10, top: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 95,
            child: createstorystatus
                ? Appbarbutton(
                    iconColor: Colors.blue,
                    buttonIcon: Icons.add,
                    buttonAction: () {},
                  )
                : Avatar(
                    AvatarActor: profile,
                    StatusIndicator: false,
                    imageHeight: 40,
                    imageWidth: 40,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText ?? "name",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
