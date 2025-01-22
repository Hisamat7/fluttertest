import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/AppBarButton.dart';
import 'package:flutter_application_1/Exercise/HeaderSectionButton.dart';
import 'package:flutter_application_1/Exercise/ImagesActor.dart';
import 'package:flutter_application_1/Exercise/PostCard.dart';
import 'package:flutter_application_1/Exercise/RoomSection.dart';
import 'package:flutter_application_1/Exercise/StatusSection.dart';
import 'package:flutter_application_1/Exercise/StorySection.dart';
import 'package:flutter_application_1/Exercise/SuggestionSection.dart';
import 'package:flutter_application_1/Exercise/suggest.dart';

class Facebookui extends StatelessWidget {
  Widget bottomSection() {
    return Headersectionbutton(
        text1: "Like",
        icon1: Icons.thumb_up,
        color1: const Color.fromARGB(255, 195, 193, 193),
        text2: "Comment",
        icon2: Icons.comment_rounded,
        color2: const Color.fromARGB(255, 195, 193, 193),
        text3: "Share",
        icon3: Icons.share,
        color3: const Color.fromARGB(255, 195, 193, 193));
  }

  Widget divide() {
    return Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
  }

  const Facebookui({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Facebook",
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 23,
            ),
          ),
          actions: [
            Appbarbutton(
              buttonIcon: Icons.search,
              buttonAction: () {},
            ),
            Appbarbutton(buttonIcon: Icons.message, buttonAction: () {})
          ],
        ),
        body: ListView(
          children: [
            Statussection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            Headersectionbutton(
              color1: const Color.fromARGB(255, 234, 15, 15),
              icon1: Icons.emergency_recording,
              text1: "Live",
              color2: Colors.lightGreen,
              icon2: Icons.photo_library_rounded,
              text2: "Photo",
              color3: Colors.purple,
              icon3: Icons.video_call,
              text3: "Room",
            ),
            divide(),
            Roomsection(),
            divide(),
            StorySection(),
            divide(),
            PostCard(
              avatar: mohalal,
              name: "mohalal",
              verified: true,
              published: "7h",
              title: "Happy chritmas",
              postImage: christmas,
              commentCount: "2.5k",
              likeCount: "10k",
              shareCount: "3k",
              smallImage: mohalal,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            bottomSection(),
            divide(),
            PostCard(
              name: "Mammooty",
              avatar: mammooty,
              commentCount: "15k",
              likeCount: "50k",
              postImage: eidmubarak,
              published: "1hr",
              shareCount: "10k",
              title: "Eid Mubarak",
              verified: true,
              smallImage: mammooty,
            ),
            bottomSection(),
            divide(),
            Suggest(),
            divide(),
            PostCard(
                avatar: dulqar,
                name: "dulqar",
                verified: true,
                published: "2 day ago",
                title: "Happy ramadan",
                postImage: ramadan,
                likeCount: "20k",
                commentCount: "3k",
                shareCount: "500",
                smallImage: dulqar),
            bottomSection(),
            divide(),
            PostCard(
                avatar: pritiraj,
                name: "pritiraj",
                verified: true,
                published: "2 day ago",
                title: "Children's day",
                postImage: childrensDay,
                likeCount: "20k",
                commentCount: "3k",
                shareCount: "500",
                smallImage: pritiraj),
            bottomSection(),
            divide(),
          ],
        ),
      ),
    );
  }
}
