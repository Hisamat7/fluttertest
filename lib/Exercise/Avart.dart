import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/ImagesActor.dart';

class Avatar extends StatelessWidget {
  final String AvatarActor;
  final bool StatusIndicator;
  final double imageHeight;
  final double imageWidth;

  Avatar({required this.AvatarActor, required this.StatusIndicator, this.imageHeight = 50, this.imageWidth = 50});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 6, left: 3, right: 3),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              AvatarActor,
              fit: BoxFit.cover,
              width: imageWidth,
              height: imageHeight,
            ),
          ),
        ),
        StatusIndicator == true
            ? Positioned(
                bottom: 0,
                right: 2,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1)),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
