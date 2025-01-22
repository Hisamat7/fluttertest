import 'package:flutter/material.dart';
import 'package:flutter_application_1/HotelUi/hotelimage.dart';
import 'package:flutter_application_1/WedHeart/DetailedPage.dart';
import 'package:flutter_application_1/WedHeart/WedHeartPhotos.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Searchhome extends StatelessWidget {
  Widget packageheading({required String title}) {
    return ListTile(
      leading: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
      trailing: Text("view all",
          style: TextStyle(color: Colors.purple[200], fontSize: 15)),
    );
  }

  Widget packageList(
      {required String name,
      required String location,
      required String price,
      required String rating,
      required String image}) {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
      ),
      height: 200.h,
      width: 300.w,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              height: 170.h,
              width: double.infinity.w,
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 130.h,
            width: 300.w,
            decoration: BoxDecoration(
              color: Colors.brown[50],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    name,
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Text(
                    rating,
                    style: TextStyle(color: Colors.amber, fontSize: 15),
                  ),
                ),
                Container(
                  height: 30.h,
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        location,
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text("Starts from"),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          price,
                          style: TextStyle(
                              fontSize: 17,
                              color: const Color.fromARGB(255, 130, 223, 133)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 60.h,
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: ListTile(
              leading: Icon(Icons.arrow_back_ios),
              title: Container(
                height: 40.h,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 232, 228, 228),
                      width: 0.5),
                ))),
              ),
              trailing: Icon(Icons.favorite_border),
            ),
          ),
          packageheading(title: "Wedding planner"),
          Container(
            height: 300.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                packageList(
                    name: "Color planner",
                    location: "chennai",
                    price: "75000",
                    rating: "4.5",
                    image: decoration),
                packageList(
                    name: "Iconic Events",
                    location: "Mumbai",
                    price: "80000",
                    rating: "3.9",
                    image: invitecards)
              ],
            ),
          ),
          packageheading(title: "Recommended Decorators"),
          Container(
            height: 300.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailedpage(),
                        ));
                  },
                  child: packageList(
                      name: "Party Wala",
                      location: "banagalore",
                      price: "60000",
                      rating: "3.9",
                      image: deco),
                ),
                packageList(
                    name: "Iconic Events",
                    location: "Mumbai",
                    price: "80000",
                    rating: "3.9",
                    image: invitecards)
              ],
            ),
          )
        ],
      ),
    );
  }
}
