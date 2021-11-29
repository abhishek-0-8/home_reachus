import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_reachus/RecommendedInfo/BottomButton.dart';
import 'package:home_reachus/Data/constants.dart';

class CryInfo extends StatefulWidget {
  @override
  _CryInfoState createState() => _CryInfoState();
}

class _CryInfoState extends State<CryInfo> {
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
                                  "https://scontent.fbho4-1.fna.fbcdn.net/v/t1.6435-9/155364906_10157549901001949_8145561909103406683_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=973b4a&_nc_ohc=8RjMqi8mFVcAX8KTZ1i&_nc_ht=scontent.fbho4-1.fna&oh=4e16c147775e0a23ee120a59f3d226a0&oe=617ECF49"),
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
                              "Cry India",
                              style: GoogleFonts.lobster(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                          ],
                        ),
                        Text(
                          "Mumbai",
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
                                        "Children",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Food",
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
                                        "Children",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Education",
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
                                        "Children",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Health",
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
                          "CRY was born of a dream to ensure happier childhoods for all children. In 1979, Rippan Kapur – an Indian Airlines purser – started CRY with 6 friends and just Rs. 50. Today, over 4 decades later, CRY works with 102 local NGOs across 19 states in India and has impacted the lives of over 3 million children.",
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
                          "1. 6,61,752 children impacted overall",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "2. 1,46,467 children in CRY project areas, between the ages of 6-18 years, in school",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "3. 19,652 children in CRY project areas, under the age of 1 year, immunized",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "4. 2,176 children in CRY project areas, under the age of 5 years, free from malnutrition",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "5. 7,582 children in CRY project areas rescued from child labour, child marriage & child trafficking\n",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
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
            BottomButtons("https://www.cry.org/",
                "Child Rights and You 189/A Anand Estate, Sane Guruji Marg, Mumbai, Maharashtra 400011")
          ],
        ));
  }
}
