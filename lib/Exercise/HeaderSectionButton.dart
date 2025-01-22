import 'package:flutter/material.dart';

class Headersectionbutton extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  final Color color1;
  final Color color2;
  final Color color3;

   Headersectionbutton({
   
    required this.text1,
    required this.text2,
    required this.text3,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.color1,
    required this.color2,
    required this.color3,
  }) ;

  Widget HeaderButton({
    required String buttonText,
    required IconData buttonicon,
    required Color buttoncolor,
    required void Function() buttonAction,
  }) {
    return ElevatedButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonicon,
        color: buttoncolor,
      ),
      label: Text(buttonText),
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HeaderButton(
            buttonText: text1,
            buttonicon:icon1,
            buttoncolor: color1,
            buttonAction: () {},
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButton(
              buttonText:text2,
              buttonicon: icon2,
              buttoncolor: color2,
              buttonAction: () {}),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButton(
              buttonText: text3,
              buttonicon: icon3,
              buttoncolor: color3,
              buttonAction: () {})
        ],
      ),
    );
  }
}
