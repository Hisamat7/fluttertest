import 'package:flutter/material.dart';
import 'package:flutter_application_1/WedHeart/WedHeartPhotos.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detailedpage extends StatelessWidget {
  Widget sechulelist(
      {required String title,
      required String image,
      required String subtitle}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(image),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }

  Widget bookingButton(
      {required String title, required Color color, required Color fontColor}) {
    return Container(
        child: ElevatedButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(fontSize: 15.sp, color: fontColor),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(13)),
      ),
    ));
  }

  Widget tabdetail({
    required String image1,
    required String name1,
    required String image2,
    required String name2,
  }) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      margin: EdgeInsets.only(bottom: 15),
      height: 140.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 130.h,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image1,
                    fit: BoxFit.cover,
                    height: 100.h,
                  ),
                ),
                Text(name1, style: TextStyle(fontSize: 15.sp)),
              ],
            ),
          ),
          Container(
            height: 130.h,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image2,
                    fit: BoxFit.cover,
                    height: 100.h,
                  ),
                ),
                Text(name2, style: TextStyle(fontSize: 15.sp)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget tabHeading({required String name, double fontsize = 18}) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        name,
        style: TextStyle(fontSize: fontsize),
      ),
    );
  }

  Widget itemDetail({required IconData icon, required String name}) {
    return Row(
      children: [
        Icon(icon, color: Colors.amber),
        SizedBox(
          width: 8.w,
        ),
        Text(name, style: TextStyle(fontSize: 15.sp)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Party Wala", style: TextStyle(fontSize: 16.sp)),
        actions: [Icon(Icons.share)],
      ),
      body: Column(
        children: [
          Container(
            height: 180.h,
            width: double.infinity.w,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                dec,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Text("Party Wala", style: TextStyle(fontSize: 18.sp)),
            trailing: Text(
              "4.5",
              style: TextStyle(color: Colors.amber, fontSize: 15),
            ),
          ),
          Container(
            height: 60.h,
            padding: EdgeInsets.only(left: 14),
            child: Column(
              children: [
                itemDetail(icon: Icons.location_on_outlined, name: "New Delhi"),
                SizedBox(
                  height: 10.h,
                ),
                itemDetail(icon: Icons.currency_rupee_sharp, name: "60000")
              ],
            ),
          ),
          Container(
            height: 350.h,
            child: DefaultTabController(
              length: 4,
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  bottom: TabBar(tabs: [
                    Tab(
                        child: Text(
                      "new style",
                      style: TextStyle(fontSize: 13.sp),
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
                body: TabBarView(
                  children: [
                    ListView(
                      children: [
                        tabdetail(
                            image1: dec,
                            name1: "Stage theme",
                            image2: invitecards,
                            name2: "Floral"),
                        tabHeading(name: "Wedding Theme"),
                        tabdetail(
                            image1: dec2,
                            name1: "Unique",
                            image2: gift,
                            name2: "Forver Frame"),
                        tabHeading(name: "Wedding Ceremony"),
                        tabdetail(
                            image1: hall,
                            name1: "Silver visual",
                            image2: hall2,
                            name2: "Bronze visual"),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        child: ListView(
                          children: [
                            tabdetail(
                                image1: hall2,
                                name1: "Rose garden",
                                image2: hall,
                                name2: "Grand hall"),
                            Align(
                              alignment: Alignment.topLeft,
                              child: tabHeading(
                                  name: "Communicate with Our Vendor",
                                  fontsize: 16),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                              ),
                              title: Text("Prakash raj"),
                              trailing: Icon(Icons.wechat_sharp),
                            ),
                            ListTile(
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 46),
                                child: Text(
                                    "Prakash is a friendly and experienced wedding coordinator at Royal Maharaja. He ensures every couple's special day is nothing short of perfection with 5+ years of expertise in wedding decor."),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        child: ListView(
                          children: [
                            sechulelist(
                                title: "Decoration",
                                image: entertainment,
                                subtitle: "Time : 3:00pm - 4:00pm"),
                            sechulelist(
                                title: "Lighting",
                                image: dec,
                                subtitle: "Time : 6:00pm - 12:00pm"),
                            sechulelist(
                                title: "Haldi",
                                image: dec1,
                                subtitle: "Time : 9:00am - 11:00am"),
                            sechulelist(
                                title: "Catering",
                                image: cater,
                                subtitle: "Time : 12:00pm - 2.30pm")
                          ],
                        )),
                    Icon(Icons.directions_boat),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  bookingButton(
                      fontColor: Colors.black,
                      title: "Pay Advance",
                      color: Colors.white),
                  bookingButton(
                      fontColor: Colors.white,
                      title: "Book Decorator",
                      color: const Color.fromARGB(255, 185, 107, 199))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
