import 'package:flutter/material.dart';

class HMex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: "hisam dev",
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 245, 224, 242),
            title: Text("Login Page"),
          ),
          drawer: Drawer(
            backgroundColor: const Color.fromARGB(255, 255, 236, 242),
            child: ListView(
              children: [
                DrawerHeader(
                  child: Text(
                    "CRISTIANO RONALDO",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 47, 97, 69),
                        fontSize: 21),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.group,
                    color: Colors.black,
                  ),
                  title: Text(
                    "New group",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(
                    Icons.speaker_group,
                    color: Colors.black,
                  ),
                  title: Text("New Channel"),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text("Contact"),
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text("Call"),
                  leading: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text("Saved Message"),
                  leading: Icon(
                    Icons.bookmark,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text("Settings"),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text("Night mode"),
                  leading: Icon(
                    Icons.nights_stay_sharp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Welcome back ",
                    style: TextStyle(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "User Name",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
