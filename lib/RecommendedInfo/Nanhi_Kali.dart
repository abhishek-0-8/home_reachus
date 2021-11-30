import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_reachus/RecommendedInfo/BottomButton.dart';
import 'package:home_reachus/Data/constants.dart';

class NanhiInfo extends StatefulWidget {
  @override
  _NanhiInfoState createState() => _NanhiInfoState();
}

class _NanhiInfoState extends State<NanhiInfo> {
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
                                  "https://digitallearning.eletsonline.com/wp-content/uploads/2016/04/nanni-kali.jpg"),
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
                              "NanhiKali",
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
                                        "Girl",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Child",
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
                                        "Girl",
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
                                        "Supports",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "School",
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
                          "In 1996, Anand Mahindra, Chairman of Mahindra Group began Project Nanhi Kali (which means ‘a little bud’) at the K.C. Mahindra Education Trust, with the objective of educating underprivileged girls in India. The project was incepted against the backdrop of spiralling population growth rate, low female literacy level and low female workforce participation. In addition, social issues such as child marriage and child labour were common place in many parts of India, especially rural areas.With the twin objective of positively impacting India’s development by educating girls and encouraging Indians to contribute to a worthy cause, Project Nanhi Kali was designed as a sponsorship program, wherein individuals and corporates could participate by sponsoring girls’ education for a minimum period of a year.",
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
                          "Over the years, Project Nanhi Kali has reached out to over 4,50,000 underprivileged girls across 14 states in India. From far-flung areas such as the hamlets of Krishnagiri in Tamil Nadu to the rural outskirts of Banaras, from the tribal hills of Araku in Andhra Pradesh to the sub-plan tribal district of Udaipur, and from the crowded slums of Mumbai, Delhi and Kolkata, to the more remote but cooler locations of Darjeeling, Project Nanhi Kali is ensuring that girls complete 10 years of formal schooling.\n",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 21),
                        ),
                        Text(
                          "1. 1,74,681 Girls Supported",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "2. 96,244 Girls in Primary Schools",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "3. 78,437 Girls in Secondary Schools",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "4. 5745 Community Associates",
                          style: GoogleFonts.mukta(
                              fontWeight: FontWeight.bold, fontSize: 22,color: Colors.purple),
                        ),
                        Text(
                          "5. 6805 Academic Support Centres",
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
            BottomButtons(
                "https://www.nanhikali.org/", "Kc Mahindra Education Trust")
          ],
        ));
  }
}
