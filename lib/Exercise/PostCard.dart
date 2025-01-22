import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/Avart.dart';
import 'package:flutter_application_1/Exercise/ImagesActor.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final bool verified;
  final String published;
  final String title;
  final String postImage;
  final String likeCount;
  final String commentCount;
  final String shareCount;
  final String smallImage;
  PostCard(
      {required this.avatar,
      required this.name,
      required this.verified,
      required this.published,
      required this.title,
      required this.postImage,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount,
      required this.smallImage});

  Widget postTopSection() {
    return ListTile(
      leading: Avatar(AvatarActor: avatar, StatusIndicator: false),
      title: Row(
        children: [
          Text(name),
          SizedBox(
            width: 7,
          ),
          verified
              ? Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 19,
                )
              : SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(published == null ? "" : published),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.public,
            size: 15,
          )
        ],
      ),
      trailing: Icon(Icons.more_horiz_rounded),
    );
  }

  Widget postTitleSection() {
    return Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          title,
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ));
  }

  Widget postImageSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Image.asset(postImage),
    );
  }

  Widget postBottomSection() {
    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.lightBlue),
              child: Icon(
                Icons.thumb_up_sharp,
                color: Colors.white,
                size: 10,
              ),
            ),
            displayText(label: likeCount),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 40),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              displayText(label: commentCount),
              displayText(label: "Comments"),
              SizedBox(
                width: 7,
              ),
              displayText(label: shareCount),
              displayText(label: "Shares"),
              SizedBox(
                width: 10,
              ),
              Avatar(
                AvatarActor:smallImage,
                StatusIndicator: false,
                imageHeight: 25,
                imageWidth: 25,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.arrow_drop_down)
            ],
          ),
        )
      ]),
    );
  }

  Widget displayText({String label = " "}) {
    return Text(
      label,
      style: TextStyle(color: Colors.grey),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        postTopSection(),
        postTitleSection(),
        postImageSection(),
        postBottomSection()
      ],
    );
  }
}
