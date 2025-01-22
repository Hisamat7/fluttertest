import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/CardSection.dart';
import 'package:flutter_application_1/Exercise/ImagesActor.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Cardsection(
            labelText: "add to story",
            profile: dulqar,
            story: dulqarstory,
            createstorystatus: true,
          ),
          Cardsection(
            labelText: "mohalal",
            profile: mohalal,
            story: mohalalstory,
            createstorystatus: false,
          ),
          Cardsection(
            labelText: "naslen",
            profile: naslen,
            story: naslenstory,
            createstorystatus: false,
          ),
          Cardsection(
            labelText: "fishingfreak",
            profile: fishingfreak,
            story: fishingfreakstory,
            createstorystatus: false,
          ),
          Cardsection(
            labelText: "Mammooty",
            profile: mammooty,
            story: mammootystory,
            createstorystatus: false,
          ),
          Cardsection(
            story: pritirajstory,
            profile: pritiraj,
            labelText: "Pritiraj",
            createstorystatus: false,
          )
        ],
      ),
    );
  }
}
