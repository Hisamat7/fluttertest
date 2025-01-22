import 'package:flutter/material.dart';
import 'package:flutter_application_1/WedHeart/DetailShowMainWidget.dart';
import 'package:flutter_application_1/WedHeart/WedHeartPhotos.dart';

class Venuehome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailShowMainWidget(
          rating: "4.2",
          ratingRecommended: "4.3",
          ratingpopular: "4.4",
          title: "Venue",
          image: dec,
          name: "Grand Venue",
          imagerecommended: hall2,
          namerecommended: "Cc Hall",
          imagepopular: hall,
          namepopular: "Grand Hall",
          location1: "Calicut",
          locationRecommended: "Kochi",
          locationpopular: "Calicut",
          price: "1200000",
          pricerecommended: "900000",
          pricepopular: "1200000",
          titlerecommended: "Recommended venue",
          titlepopular: "Popular venue"),
    );
  }
}
