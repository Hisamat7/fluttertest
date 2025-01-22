import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/ImagesActor.dart';
import 'package:flutter_application_1/Exercise/suggest.dart';

class Suggestionsection extends StatelessWidget {
  final String friendname;
  final String friendImage;
  final String mutualFriend;

  Suggestionsection(
      {required this.friendname,
      required this.friendImage,
      this.mutualFriend = "No mutual friends "});

  Widget friendSuggestion() {
    return Container(
        // padding: EdgeInsets.all(17),
        width: 300,
        margin: EdgeInsets.only(right: 20, left: 10),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  friendImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 150,
                  decoration:BoxDecoration(border: Border.all(
                    width: 1,
                    color: const Color.fromARGB(255, 210, 210, 210),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  ),
                  color: Colors.grey[100],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(friendname),
                        subtitle: Text(mutualFriend),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Add Friend",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightBlue,
                                shape: RoundedRectangleBorder()),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "Remove",
                              style: TextStyle(color: Colors.grey),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder()),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return friendSuggestion();
  }
}
