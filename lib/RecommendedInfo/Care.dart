import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_reachus/RecommendedInfo/BottomButton.dart';
import 'package:home_reachus/Data/constants.dart';

class CareInfo extends StatefulWidget {
  @override
  _CareInfoState createState() => _CareInfoState();
}

class _CareInfoState extends State<CareInfo> {
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
                                  "https://scontent.fbho1-1.fna.fbcdn.net/v/t1.6435-9/p206x206/78623385_10162922569435624_4292321853843701760_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=CY_QRGppU08AX-PlBvr&_nc_ht=scontent.fbho1-1.fna&oh=deab1d66bd4c5c49710676ad665cdeb7&oe=61C9F10E"),
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
                              "Care India",
                              style: GoogleFonts.lobster(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                          ],
                        ),
                        Text(
                          "Delhi",
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
                                        "Health",
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
                                        "Livelihood",
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
                          "We are a not-for-profit organisation that builds capacity of communities to ensure empowerment for marginalised women and girls. Our sustainable and holistic interventions in Health, Livelihood, Education and Disaster Relief & Resilience, provide innovative solutions to deep-rooted development problems.",
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
                          "1. Health",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "CARE India’s Health interventions work to improve the access to quality healthcare services for the poor and marginalised communities. By identifying the root causes of healthcare challenges, we work at the individual, community, and systemic levels to develop innovative solutions and help implement quality healthcare services.",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "2. Education",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "CARE India’s ‘Girl Education Program’ (GEP) has been working for 25 years to ensure quality elementary education for children, especially girls and those from marginalized communities, to help them become the leaders and changemakers of the future. We see education as an imperative tool for girls to realize their maximum potential by gaining crucial skills and dispositions that set them on the path of social and economic empowerment.",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "3. Livelihood",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "CARE India’s Livelihood mandate works with the women engaged in smallholder agriculture, small businesses or employed as farm or non-farm labour. Implementing a range of innovative initiatives, we help women build secure and resilient livelihoods and climb out of poverty permanently. The key approaches adopted in livelihood sector initiatives include capability enhancement, asset building, collectivisation, inclusive value chain development and engagement of men and other influential actors.",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "4. Disaster Management",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "CARE India’s Disaster Management initiative works to provide rapid and effective relief measures to the regions impacted by natural calamities. Our strategy encompasses Preparedness, Response, Recovery, and Rehabilitation with an approach of ‘Building Back Safer’. We use post disaster recovery programming to increase the resilience of buildings and communities to future hazards.\n",
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
            BottomButtons("https://www.careindia.org/",
                "Care India Bhilwara Towers, A-12, 3rd & 4th Floor Tower II, Sector 1, Noida, Uttar Pradesh 201301")
          ],
        ));
  }
}
