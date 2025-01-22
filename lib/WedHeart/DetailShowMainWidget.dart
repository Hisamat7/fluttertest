import 'package:flutter/material.dart';
import 'package:flutter_application_1/WedHeart/WedHeartPhotos.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailShowMainWidget extends StatelessWidget {
  final String title;
  final String titlerecommended;
  final String titlepopular;
  final String image;
  final String name;
  final String imagerecommended;
  final String namerecommended;
  final String imagepopular;
  final String namepopular;
  final String location1;
  final String locationRecommended;
  final String locationpopular;
  final String price;
  final String pricerecommended;
  final String pricepopular;
  final String rating;
  final String ratingRecommended;
  final String ratingpopular;

  DetailShowMainWidget(
      {super.key,
      required this.rating,
      required this.ratingRecommended,
      required this.ratingpopular,
      required this.title,
      required this.image,
      required this.name,
      required this.imagerecommended,
      required this.namerecommended,
      required this.imagepopular,
      required this.namepopular,
      required this.location1,
      required this.locationRecommended,
      required this.locationpopular,
      required this.price,
      required this.pricerecommended,
      required this.pricepopular,
      required this.titlerecommended,
      required this.titlepopular});

  Widget listheading({required String title, String subtitle = " "}) {
    return ListTile(
      leading: Text(title, style: TextStyle(fontSize: 18.sp)),
      trailing: Text(
        subtitle,
        style: TextStyle(color: Colors.purple[200], fontSize: 15.sp),
      ),
    );
  }

  Widget packageList(
      {required String name,
      required String location,
      required String price,
      required String rating,
      required String image}) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(top: 10),
      height: 230.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 15, left: 15),
            height: 200.h,
            width: 200.w,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    height: 100.h,
                    width: double.infinity.w,
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 100.h,
                  decoration: BoxDecoration(
                    color: Colors.cyan[50],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 7.h,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(rating)
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
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
                            Text(
                              location,
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                price,
                                style: TextStyle(
                                    fontSize: 17,
                                    color: const Color.fromARGB(
                                        255, 130, 223, 133)),
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
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                    ),
                  ),
                ),
              ),
              trailing: Icon(
                Icons.favorite_border,
                color: Colors.pink[300],
              )),
        ),
        listheading(title: title, subtitle: "view all"),
        packageList(
            name: name,
            location: location1,
            price: price,
            rating: rating,
            image: dec),
        listheading(title: titlerecommended),
        packageList(
            name: namerecommended,
            location: locationRecommended,
            price: pricerecommended,
            rating: ratingRecommended,
            image: hall),
        listheading(title: titlepopular),
        packageList(
            name: namepopular,
            location: locationpopular,
            price: pricepopular,
            rating: ratingpopular,
            image: hall2),
      ],
    );
  }
}
