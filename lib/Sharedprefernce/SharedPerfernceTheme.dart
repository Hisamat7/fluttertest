import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Sharedperferncetheme extends StatefulWidget {
  @override
  State<Sharedperferncetheme> createState() => _SharedperferncethemeState();
}

class _SharedperferncethemeState extends State<Sharedperferncetheme> {
  int? showint;
  String? showstring;
  bool? showbool;
  Widget sharedrow(
      {required String setvalue,
      required String getvalue,
      void Function()? tapset,
      void Function()? tapget}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: tapset, child: Text(setvalue)),
        ElevatedButton(onPressed: tapget, child: Text(getvalue))
      ],
    );
  }

  Future<void> setint() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt("first", 123);
  }

  Future<void> getint() async {
    SharedPreferences prefa = await SharedPreferences.getInstance();

    int? value = prefa.getInt("first");
    setState(() {
      showint = value;
    });
  }

  setstringvalue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("name", "hisam");
  }

  getstringvalue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    String? strvalue = pref.getString("name");
    setState(() {
      showstring = strvalue;
    });
  }

  setboolvalue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("bool", true);
  }

  getboolvalue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool? boolvalue = pref.getBool('bool');

    setState(() {
      showbool = boolvalue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sharedrow(
                setvalue: "setint",
                tapset: () {
                  setint();
                },
                getvalue: "getint",
                tapget: () {
                  getint();
                }),
            SizedBox(height: 20),
            Text(
              showint != null
                  ? "Stored Int Value: $showint"
                  : "No value stored",
              style: TextStyle(fontSize: 18),
            ),
            sharedrow(
                setvalue: "setstring",
                tapset: () {
                  setstringvalue();
                },
                getvalue: "getstring",
                tapget: () {
                  getstringvalue();
                }),
            SizedBox(height: 20),
            Text(
              showstring != null
                  ? "Stored String Value: $showstring"
                  : "No value stored",
              style: TextStyle(fontSize: 18),
            ),
            sharedrow(
                setvalue: "setbool",
                tapset: () {
                  setboolvalue();
                },
                getvalue: "getbool",
                tapget: () {
                  getboolvalue();
                }),
            SizedBox(
              height: 20,
            ),
            Text(
              showbool != null ? "stored value :$showbool " : "No value stored",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
