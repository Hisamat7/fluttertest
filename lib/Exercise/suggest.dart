import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/ImagesActor.dart';
import 'package:flutter_application_1/Exercise/SuggestionSection.dart';

class Suggest extends StatelessWidget {
  const Suggest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            leading: Text("People You May Know"),
            trailing: Icon(Icons.more_horiz),
          ),
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Suggestionsection(
                  friendname: "cristano",
                  friendImage: cristano,
                  mutualFriend: " 400 Mutual friend",
                ),
                Suggestionsection(friendname: "messi", friendImage: messi),
                Suggestionsection(
                  friendname: "neymar",
                  friendImage: neymar,
                  mutualFriend: " 100 Mutual friend",
                ),
                Suggestionsection(
                    friendname: "kylian mbappe", friendImage: kylian),
                    
              ],
            ),
          ),
        ],
      ),
    );
  }
}
