import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:home_reachus/Data/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class CloudFirestoreSearch extends StatefulWidget {
  @override
  _CloudFirestoreSearchState createState() => _CloudFirestoreSearchState();
}

class _CloudFirestoreSearchState extends State<CloudFirestoreSearch> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1)),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.white, fontSize: 18)),
          onChanged: (val) {
            setState(() {
              name = val.toLowerCase();
            });
          },
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: (name != "" && name != null)
            ? FirebaseFirestore.instance
                .collection('items')
                .where("searchKeywords", arrayContains: name)
                .snapshots()
            : FirebaseFirestore.instance.collection("items").snapshots(),
        builder: (context, snapshot) {
          return (snapshot.connectionState == ConnectionState.waiting)
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot data = snapshot.data.docs[index];
                    return Card(
                      elevation: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              width: 110 ,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: kPrimaryColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
