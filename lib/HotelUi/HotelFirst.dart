import 'package:flutter/material.dart';
import 'package:flutter_application_1/HotelUi/hotelimage.dart';

class Hotelfirst extends StatelessWidget {
  Widget firstlist({required IconData logo}) {
    return Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(logo));
  }

  Widget rowContainer({required String name}) {
    return Container(
      height: 30,
      width: 70,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          name,
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 199, 198, 198), width: 1),
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromARGB(255, 248, 255, 248)),
    );
  }

  Widget detailslist({required String hotelname,required String location,required String hotelimage ,required String price}) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      height: 200,
      width: 200,
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.asset(
                hotelimage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(hotelname),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.yellow[300],
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(location),
                    ]),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    height: 16,
                    endIndent: 13,
                    indent: 13,
                  ),
                  ListTile(
                    title: Text("start from"),
                    subtitle: Text(price+"/night"),
                    trailing: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink[50],
                          borderRadius: BorderRadius.circular(10)),
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.favorite,
                        size: 20,
                        color: Colors.pink[400],
                      ),
                    ),
                  ),
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
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 250, 244),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            height: 60,
            child: ListTile(
              leading: firstlist(logo: Icons.person),
              trailing: firstlist(logo: Icons.email),
              title: Text(
                "Hello There",
                style: TextStyle(fontSize: 12),
              ),
              subtitle: Text("Muhammed"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            margin: EdgeInsets.only(bottom: 10),
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Serach Hotels",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          ListTile(
            leading: Text("Explore Hotel"),
            trailing: Text("See All"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              rowContainer(name: "Popular"),
              rowContainer(name: "Modern"),
              rowContainer(name: "Beach"),
              rowContainer(name: "Mountain")
            ],
          ),
          Container(
            height: 300,
            margin: EdgeInsets.only(left: 15, top: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
               
           detailslist(hotelname: "The Phoniex Hotel", location: "calicut", hotelimage: hotel1, price: "125"),
           detailslist(hotelname: "king Fort", location: "Kochi", hotelimage: hotel2, price:"130")
              ],
            ),
          )
        ],
      ),
    );
  }
}
