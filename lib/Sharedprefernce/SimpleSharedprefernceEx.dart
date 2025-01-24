import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SimplesharedprefernceEx extends StatefulWidget {
  @override
  State<SimplesharedprefernceEx> createState() =>
      _SimplesharedprefernceexState();
}

class _SimplesharedprefernceexState extends State<SimplesharedprefernceEx> {
  int? intvalue;

  Widget button(
      {required String name1,
      void Function()? tapset,
      required String name2,
      void Function()? tapget}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: tapset,
          child: Text(name1),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal[50],
              shape: RoundedRectangleBorder()),
        ),
        ElevatedButton(
          onPressed: tapget,
          child: Text(name2),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal[50],
              shape: RoundedRectangleBorder()),
        ),
      ],
    );
  }

  setintvalue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setInt('firstnumber', 256);
  }

  getintvalue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int? value = pref.getInt('firstnumber');
    setState(() {
      intvalue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          button(
              name1: "setint",
              tapset: () {
                setintvalue();
              },
              name2: "getint",
              tapget: () {
                getintvalue();
              }),
          SizedBox(
            height: 20,
          ),
          Text(
            intvalue != null ? "stored value :$intvalue " : "No value stored",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
