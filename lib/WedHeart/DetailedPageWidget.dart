import 'package:flutter/material.dart';
import 'package:flutter_application_1/WedHeart/WedHeartPhotos.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detailedpagewidget extends StatelessWidget {
  Widget tabbarContainer({required String name, required String image}) {
    return Container(
      height: 100.h,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              height: 75.h,
              image,
              fit: BoxFit.cover,
            ),
          ),
          Text(name)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leela palace"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            height: 200.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                hall,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Text(
              "Leela palace",
              style: TextStyle(fontSize: 16),
            ),
            trailing: SizedBox(
              width: 130.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "4.6",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text("(22k)")
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 30.h,
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text("calicut")
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(planner),
              ),
              title: Text("Santish"),
              subtitle: Text("Wedding Planner"),
              trailing: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.red)),
                height: 40,
                width: 40,
                child: Icon(Icons.call),
              ),
            ),
          ),
          Expanded(
              child: DefaultTabController(
                  length: 4,
                  child: Scaffold(
                    appBar: AppBar(
                      automaticallyImplyLeading: false,
                      bottom: TabBar(tabs: [
                        Tab(
                            child: Text(
                          "Decoration",
                          style: TextStyle(fontSize: 11.sp),
                        )),
                        Tab(
                            child: Text(
                          "Your idea",
                          style: TextStyle(fontSize: 13.sp),
                        )),
                        Tab(
                            child: Text(
                          "Schedule",
                          style: TextStyle(fontSize: 13.sp),
                        )),
                        Tab(
                            child: Text(
                          "Contact",
                        )),
                      ]),
                    ),
                    body: TabBarView(children: [
                      ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                              child: Column(
                            children: [
                              ListTile(
                                title: Text('Engagment Decoration'),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  tabbarContainer(
                                      name: "Sri kalyan", image: hall),
                                  tabbarContainer(
                                      name: "sea view", image: hall2),
                                  tabbarContainer(
                                      name: "Royal palace", image: dec)
                                ],
                              ),
                            ],
                          ));
                        },
                      ),
                      Text("hello"),
                      Text("hai"),
                      Text("ge")
                    ]),
                  )))
        ],
      ),
    );
  }
}
