import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_reachus/RecommendedInfo/Akshaya_Patra.dart';
import 'package:home_reachus/RecommendedInfo/Care.dart';
import 'package:home_reachus/RecommendedInfo/Cry.dart';
import 'package:home_reachus/RecommendedInfo/Give_India.dart';
import 'package:home_reachus/RecommendedInfo/Iskcon.dart';
import 'package:home_reachus/RecommendedInfo/Nanhi_Kali.dart';
import 'package:home_reachus/RecommendedInfo/Sammaan.dart';
import 'package:home_reachus/RecommendedInfo/Smile.dart';
import 'package:home_reachus/Data/cityList.dart';
import 'package:home_reachus/Data/constants.dart';
import 'package:home_reachus/Screens/headerWithSearch.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //MediaQuery is used to get the current size of the Device

    return SingleChildScrollView(
      child: Column(
        children: [
          SearchButton(size: size),
          TitleDivider(
            text: "Choose your, City!",
          ),
          CityList(),
          TitleDivider(
            text: "Recommended",
          ),
          RecommendedList(),
        ],
      ),
    );
  }
}

class RecommendedList extends StatelessWidget {
  const RecommendedList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          RecommendedData(
            image: "assets/icons/IskconDelhi.png.jpg",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => IskconInfo()));
            },
          ),
          RecommendedData(
            image: "assets/icons/Care India.png",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => CareInfo()));
            },
          ),
          RecommendedData(
            image: "assets/icons/Give India.png",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => GiveInfo()));
            },
          ),
          RecommendedData(
            image: "assets/icons/Nanhi Kali.jfif",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => NanhiInfo()));
            },
          ),
          RecommendedData(
            image: "assets/icons/CRY India.png",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => CryInfo()));
            },
          ),
          RecommendedData(
            image: "assets/icons/Akshaya Patra.jpg",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => AkshayaInfo()));
            },
          ),
          RecommendedData(
            image: "assets/icons/sammaan.png",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => SammaanInfo()));
            },
          ),
          RecommendedData(
            image: "assets/icons/Smile foundation.jpg",
            press: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => SmileInfo()));
            },
          ),
        ],
      ),
    );
  }
}

class RecommendedData extends StatelessWidget {
  const RecommendedData({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
      ),
    );
  }
}

class TitleDivider extends StatelessWidget {
  const TitleDivider({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding),
      alignment: Alignment.centerLeft,
      height: 24,
      child: Stack(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
