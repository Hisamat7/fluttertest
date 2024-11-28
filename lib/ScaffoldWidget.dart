import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/buttonWidget/buttonExample.dart';

class Scaffoldwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hisam dev",
      home: Scaffold(
        body: ButtonExample(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 193, 227, 255),
          title: Text("Login"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.music_video)),
            IconButton(onPressed: () {}, icon: Icon(Icons.account_box))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  "heading section",
                  style: TextStyle(
                    fontSize: 21,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 228, 237),
                ),
              ),
              ListTile(
                title: Text("home"),
                onTap: () {
                  print("home is printed");
                },
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Favourite"),
                onTap: () {},
                leading: Icon(Icons.favorite),
              ),
              ListTile(
                title: Text("Search"),
                onTap: () {},
                leading: Icon(Icons.search),
              )
            ],
          ),
        ),
      ),
    );
  }
}
