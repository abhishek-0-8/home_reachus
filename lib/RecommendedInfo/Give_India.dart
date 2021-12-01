import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_reachus/RecommendedInfo/BottomButton.dart';
import 'package:home_reachus/Data/constants.dart';

class GiveInfo extends StatefulWidget {
  @override
  _GiveInfoState createState() => _GiveInfoState();
}

class _GiveInfoState extends State<GiveInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://pbs.twimg.com/profile_images/1169484985549516800/KD0PK4XE_400x400.jpg"),
                              fit: BoxFit.fill),
                        ))
                  ],
                )
              ],
            ),
            DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: 0.6,
              minChildSize: 0.6,
              builder: (context, controller) {
                return SingleChildScrollView(
                  controller: controller,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Give India",
                              style: GoogleFonts.lobster(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                          ],
                        ),
                        Text(
                          "Bengaluru",
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Government Verified ",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.verified_rounded,
                              color: Colors.purple,
                              size: 20,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 24,
                        ),

                        ///Container for information
                        Container(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.purple, width: 3)),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Fund",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Raisers",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.purple, width: 3)),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Monthly",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Giving",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.purple, width: 3)),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Corporate",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Giving",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 24,
                        ),

                        Text(
                          "About Us",
                          style: GoogleFonts.lobster(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),

                        SizedBox(
                          height: 4,
                        ),

                        Text(
                          "GiveIndia exists to alleviate poverty by enabling the world to give. Established in 2000, it is the largest and the most trusted giving platform in India. It enables individuals and organizations to raise and donate funds conveniently to any cause they care about, with offerings including crowdfunding, corporate giving, cause marketing, and philanthropy consulting.",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),

                        SizedBox(
                          height: 24,
                        ),

                        Text(
                          "Contributions",
                          style: GoogleFonts.lobster(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),

                        SizedBox(
                          height: 4,
                        ),

                        Text(
                          "GiveIndia’s community of 2M+ donors and 250+ partners have supported 2,200+ verified nonprofits, serving 15M+ people across the country.\n",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            BottomButtons("https://www.giveindia.org/", "Give India")
          ],
        ));
  }
}
