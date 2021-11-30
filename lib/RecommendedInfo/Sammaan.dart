import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_reachus/RecommendedInfo/BottomButton.dart';
import 'package:home_reachus/Data/constants.dart';

class SammaanInfo extends StatefulWidget {
  @override
  _SammaanInfoState createState() => _SammaanInfoState();
}

class _SammaanInfoState extends State<SammaanInfo> {
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
                                  "https://www.bing.com/th?id=AWVuaOC4MmS1b7Q480x360&w=316&h=180&rs=1&qlt=90&o=6&pid=3.1&rm=2"),
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
                              "Sammaan",
                              style: GoogleFonts.lobster(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                          ],
                        ),
                        Text(
                          "Patna",
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
                                        "Rural",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Development",
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
                                        "Skill",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Development",
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
                                        "Livelihood",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Betterment",
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
                          "Sammaan Foundation is a ‘not for profit’ organization, registered under section 25 of the Indian Company’s Act 1956.\nSammaan has a long history of working in financial inclusion, livelihood, micro-entrepreneurship, health and agriculture.Founded in year 2007, we have been actively engaged in community service through many grassroot initiatives including extensive work with rickshaw-pullers and street vendors.  Later on, we expanded into health services by launching Mobile Medical Unit, Medical Ambulances and Mortuary vans with the support of State Health Society, Govt. of Bihar under National Health Mission, Government of India.",
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
                          "1. Leadership And SKILL Development",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.purple),
                        ),
                        Text(
                          "We extensively carryout skill building and educational activities – both in formal as well as informal manner.",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "2. Grow Agriculture & Rural ENTREPRENEURSHIP",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.purple),
                        ),
                        Text(
                          "We motivate and train people to think like entrepreneurs and overcome poverty. We are transforming the lives of tribal and rural women communities through sustainable agriculture.",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "3. Sustainable LIVELIHOOD And Financial Inclusion",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.purple),
                        ),
                        Text(
                          "We work extensively with the marginalized communities especially rickshaw-pullers and street vendors for their livelihood, financial and social inclusion.",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "4. Better HEALTH",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.purple),
                        ),
                        Text(
                          "Public health at its core most of our health interventions are in the area of emergency healthcare. We operate Emergency Ambulances (Advanced and Basic Life Support Ambulances), Mobile Medical Units (MMUs) and Mortuary Vans across Bihar State.\n",
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
            BottomButtons("http://sammaan.org/", "Sammaan Foundation")
          ],
        ));
  }
}
