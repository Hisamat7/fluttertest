import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/Avart.dart';
import 'package:flutter_application_1/Exercise/ImagesActor.dart';

class Roomsection extends StatelessWidget {
  const Roomsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.horizontal,
        children: [
          OutlinedButton.icon(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(StadiumBorder()),
                minimumSize: MaterialStateProperty.all(Size(80, 50)),
              ),
              onPressed: () {},
              icon: Icon(
                Icons.emergency_recording,
                color: Colors.purple,
              ),
              label: Text("create \nRoom")),
          SizedBox(
            width: 10,
          ),
          Avatar(
            AvatarActor: dulqar,
            StatusIndicator: true,
          ),
          Avatar(
            AvatarActor: mammooty,
            StatusIndicator: true,
          ),
          Avatar(
            AvatarActor: naslen,
            StatusIndicator: true,
          ),
          Avatar(
            AvatarActor: mohalal,
            StatusIndicator: true,
          ),
          Avatar(
            AvatarActor: pritiraj,
            StatusIndicator: true,
          ),
          Avatar(
            AvatarActor: fishingfreak,
            StatusIndicator: true,
          ),
        ],
      ),
    );
  }
}
