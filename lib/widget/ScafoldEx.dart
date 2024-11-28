import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/buttonWidget/buttonExample.dart';

class ScafoldEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ButtonExample(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 21, 72, 114),
          title: Text(
            "Search in emails",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  size: 42,
                  color: const Color.fromARGB(255, 214, 242, 255),
                ))
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 12, 42, 72),
          child: ListView(
            children: [
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 300,
                    child: Text(
                      "Gmail",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 0.4, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    child: Text(
                      "All inboxes",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 0.4, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Primary",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              ListTile(
                title: Text(
                  "promotion",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.ads_click,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              ListTile(
                title: Text(
                  "Social",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "All label",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Starred",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Snoozed",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.timer_off,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              ListTile(
                title: Text(
                  "important",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.label_important,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              ListTile(
                title: Text(
                  "Sent",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              ListTile(
                title: Text(
                  "Scheduled",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.schedule_send,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              ListTile(
                title: Text(
                  "Outbox",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.outbox,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              ListTile(
                title: Text(
                  "Darft",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.drafts,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              ListTile(
                title: Text(
                  "All mail",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mail,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              ListTile(
                title: Text(
                  "Spam",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.report,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
