import 'package:flutter/material.dart';
import 'package:home_reachus/Data/constants.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomButtons extends StatelessWidget {
  BottomButtons(this.website, this.map);

  final String website;
  final String map;

  _launchURLBrowser() async {
    var url = website;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 0.4,
            height: 60,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: kPrimaryColor.withOpacity(0.3),
                      offset: Offset(0, 10),
                      blurRadius: 10)
                ]),
            child: GestureDetector(
              onTap: () => MapsLauncher.launchQuery(map),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    (Icons.place_outlined),
                    color: Colors.white,
                  ),
                  Text(
                    ' Reach',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: _launchURLBrowser,
            child: Container(
              width: size.width * 0.4,
              height: 60,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: kPrimaryColor.withOpacity(0.3),
                        offset: Offset(0, 10),
                        blurRadius: 10)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    (Icons.web_rounded),
                    color: Colors.white,
                  ),
                  Text(
                    '  Website',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
