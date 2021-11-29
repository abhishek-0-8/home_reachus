import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_reachus/Data/constants.dart';
import 'package:home_reachus/Screens/firebaseSearch.dart';

// ------------------------ Header Design ---------------------------------//
class SearchButton extends StatelessWidget {
  const SearchButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2, //Covers 20% of height
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding + 36),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
            child: Row(
              children: [
                Text("Let's, Reach!",
                    style: GoogleFonts.lobster(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 38)),
              ],
            ),
          ),
          Positioned(
            //Positioned is used to arrange widgets in stacks upon each other
            bottom: 0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => CloudFirestoreSearch()));
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.30),
                      ),
                    ]),
                child: Text("Tap to Search! ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.timmana(
                        fontSize: 28,
                        fontWeight: FontWeight.w200,
                        height: 2.3)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// ------------------------ Header Design ---------------------------------//
