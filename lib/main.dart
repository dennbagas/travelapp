import 'package:flutter/material.dart';
import 'package:travelapp/Colors.dart';
import 'package:travelapp/HomeScreenTopPart.dart';

void main() => runApp(MaterialApp(
      title: "Flight List Mock UI",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: appTheme,
    ));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HomeScreenTopPart(),
          HomeScreenBottomPart(),
        ],
      ),
    );
  }
}

class HomeScreenBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Tempat Populer", style: dropDownMenuItemStyle),
              Text("VIEW ALL(16)", style: primaryTextColor),
            ],
          ),
        ),
        Container(
          height: 140.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: placeCards,
          ),
        ),
      ],
    );
  }
}

List<PlaceCards> placeCards = [
  PlaceCards("assets/images/coban_lawe.jpg", "Coban Lawe", "Kec. Pudak"),
  PlaceCards("assets/images/mnt_beruk.jpg", "Gunung Beruk", "Kec. Balong"),
  PlaceCards("assets/images/mnt_cumbri.jpg", "Gunung Cumbri", "Kec. Sampung"),
  PlaceCards(
      "assets/images/mnt_pringgitan.jpg", "Gunung Pringgitan", "Kec. Slahung"),
  PlaceCards("assets/images/ngebel_lake.jpg", "Telaga Ngebel", "Kec. Ngebel"),
];

class PlaceCards extends StatelessWidget {
  final String imgPath, placeName, location;
  const PlaceCards(this.imgPath, this.placeName, this.location);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        child: Stack(
          children: <Widget>[
            Container(
              height: 95,
              width: 200,
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: 200.0,
                height: 45.0,
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      placeName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16.0),
                    ),
                    Text(
                      location,
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
