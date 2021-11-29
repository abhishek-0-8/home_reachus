import 'package:flutter/material.dart';
import 'package:home_reachus/CityInfo/Agra.dart';
import 'package:home_reachus/CityInfo/Bihar.dart';
import 'package:home_reachus/CityInfo/Chennai.dart';
import 'package:home_reachus/CityInfo/Delhi.dart';
import 'package:home_reachus/CityInfo/Gujrat.dart';
import 'package:home_reachus/CityInfo/Hyderabad.dart';
import 'package:home_reachus/CityInfo/Jaipur.dart';
import 'package:home_reachus/CityInfo/Kolkata.dart';
import 'package:home_reachus/CityInfo/Mumbai.dart';
import 'package:home_reachus/CityInfo/Uttrakhand.dart';
import 'package:home_reachus/Data/city_category.dart';

class CityList extends StatelessWidget {
  const CityList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CityCategory(
            image: "assets/images/Delhi.png",
            title: "Delhi",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => DelhiScreen()));
            },
          ),
          CityCategory(
            image: "assets/images/Mumbai.png",
            title: "Mumbai",
            press: () { Navigator.push(context,
                new MaterialPageRoute(builder: (context) => MumbaiScreen()));},
          ),
          CityCategory(
            image: "assets/images/Hyderabad.png",
            title: "Hyderabad",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => HyderabadScreen()));
            },
          ),
          CityCategory(
            image: "assets/images/Chennai.png",
            title: "Chennai",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => ChennaiScreen()));
            },
          ),
          CityCategory(
            image: "assets/images/Agra.png",
            title: "Agra",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => AgraScreen()));
            },
          ),
          CityCategory(
            image: "assets/images/Jaipur.png",
            title: "Jaipur",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => JaipurScreen()));
            },
          ),
          CityCategory(
            image: "assets/images/Kolkata.png",
            title: "Kolkata",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => KolkataScreen()));
            },
          ),
          CityCategory(
            image: "assets/images/Surat.png",
            title: "Surat",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => GujaratScreen()));
            },
          ),
          CityCategory(
            image: "assets/images/Bihar.png",
            title: "Patna",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => BiharScreen()));
            },
          ),
          CityCategory(
            image: "assets/images/Dehradun.png",
            title: "Dehradun",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => UttarakhandScreen()));
            },
          ),
        ],
      ),
    );
  }
}
