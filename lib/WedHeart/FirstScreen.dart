import 'package:flutter/material.dart';
import 'package:flutter_application_1/HotelUi/hotelimage.dart';
import 'package:flutter_application_1/WedHeart/VenueHome.dart';
import 'package:flutter_application_1/WedHeart/WedHeartPhotos.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Firstscreen extends StatelessWidget {
  Widget listitems({required String image, required String itemname}) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            child: ClipOval(
              child: Image.asset(
                width: double.infinity,
                height: double.infinity,
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(itemname)
        ],
      ),
    );
  }

  Widget packageitem({
    required String packagename,
    required String packageimage,
    required String packageprice,
    required String rating,
    required String location,
  }) {
    return Container(
      height: 215.h,
      width: 200.w,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.asset(
              height: 100.h,
              width: double.infinity,
              packageimage,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Text(packagename),
                    title: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(rating),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [Icon(Icons.location_on), Text(location)],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.currency_rupee_sharp),
                        Text(packageprice)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text("KaKinada"),
                subtitle: Text("cinema Road junction Andhra Pradesh"),
                trailing: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.purple[300],
                  ),
                ),
              ),
              Container(
                height: 150.h,
                width: double.infinity.w,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      banner,
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                height: 50.h,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Divider(
                      height: 20.h,
                      thickness: 1,
                      color: Colors.black,
                    ),
                    Text("Choose your Bliss"),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 220.h,
                  child: GridView.count(
                    childAspectRatio: .8,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                    crossAxisCount: 4,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Venuehome()));
                        },
                        child: listitems(image: banner, itemname: "Venue")),
                      listitems(image: catering, itemname: "Cateros"),
                      listitems(image: photo, itemname: "photo"),
                      listitems(image: bride, itemname: "bridal"),
                      listitems(image: entertainment, itemname: "Entermient"),
                      listitems(image: gift, itemname: "Gifts"),
                      listitems(image: invitecards, itemname: "Invite Cards"),
                      listitems(image: planner, itemname: "planner"),
                    ],
                  )),
              ListTile(
                leading: Text("Package"),
                trailing: Text("View All"),
              ),
              Container(
                height: 220.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    packageitem(
                      packagename: "Basic Package",
                      packageimage: banner,
                      packageprice: "1,89,000",
                      rating: "4.3",
                      location: "Kakinada",
                    ),
                    packageitem(
                      packagename: "Golden Package",
                      packageimage: hotel1,
                      packageprice: "1,00,000",
                      rating: "4.3",
                      location: "hyderabad",
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
