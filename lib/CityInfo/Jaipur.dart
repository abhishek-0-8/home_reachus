import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_reachus/Data/constants.dart';
import 'package:url_launcher/url_launcher.dart';
class JaipurScreen extends StatefulWidget {

  @override
  _JaipurScreenState createState() => _JaipurScreenState();
}

class _JaipurScreenState extends State<JaipurScreen> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text('Jaipur',
                  style:
                  GoogleFonts.lobster(color: Colors.white, fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  Text('Rajasthan, India',
                      style: GoogleFonts.rajdhani(
                        color: Colors.white,
                        fontSize: 24,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.30),
                    ),
                  ]),
              child: TextField(
                onChanged: (val) {
                  setState(() {
                    name = val.toLowerCase();
                  });
                },
                decoration: InputDecoration(
                  hintText: "Search!",
                  enabledBorder: InputBorder.none,
                  //adds borders to textField
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: (name != "" && name != null)
                    ? FirebaseFirestore.instance
                    .collection('jaipur')
                    .where("searchKeywords", arrayContains: name)
                    .snapshots()
                    : FirebaseFirestore.instance
                    .collection("jaipur").orderBy("name",descending: false)
                    .snapshots(),
                builder: (context, snapshot) {
                  return (snapshot.connectionState == ConnectionState.waiting)
                      ? Center(child: CircularProgressIndicator())
                      : Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(45),
                            topLeft: Radius.circular(45)),
                        color: Colors.white),
                    child: ListView.builder(
                      itemCount: snapshot.data.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot data = snapshot.data.docs[index];
                        return Card(
                          elevation: 5,
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Image.network(
                                data['imageUrl'],
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                data['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              GestureDetector(
                                onTap: () async {
                                  if (await canLaunch(data['website'])) {
                                    await launch(data['website']);
                                  } else {
                                    throw 'Could not launch $data[website]';
                                  }
                                },
                                child: Container(
                                  width: 111,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(15),
                                    color: kPrimaryColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        alignment: Alignment.center,
                                        icon: Icon(
                                          Icons.web_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Website",
                                        style: TextStyle(
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ]),
        ));
  }
}
