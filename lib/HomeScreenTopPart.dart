import 'package:flutter/material.dart';
import 'package:travelapp/Chips.dart';
import 'package:travelapp/Colors.dart';
import 'package:travelapp/custom_shape_clipper.dart';

class HomeScreenTopPart extends StatefulWidget {
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  var selectedLocationIndex = 0;
  bool isChipSelected = true;

  TextEditingController _searchPlace = TextEditingController();

  String location = "Golan";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 350.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  firstColor,
                  secondColor,
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        location,
                        style: dropDownStyle,
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Mau kemana\nkamu hari ini?',
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    child: TextField(
                      controller: _searchPlace,
                      style: dropDownMenuItemStyle,
                      cursorColor: appTheme.primaryColor,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 13.0),
                        border: InputBorder.none,
                        suffixIcon: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        hintText: "Cari tempat...",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Chips(
                      Icons.landscape,
                      "Wisata Alam",
                      isChipSelected,
                      onTap: () {
                        setState(() {
                          isChipSelected = true;
                        });
                      },
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Chips(
                      Icons.fastfood,
                      "Kuliner",
                      !isChipSelected,
                      onTap: () {
                        setState(() {
                          isChipSelected = false;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
