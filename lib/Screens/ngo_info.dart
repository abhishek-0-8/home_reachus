import 'package:flutter/material.dart';
import 'package:home_reachus/Data/constants.dart';
import 'package:home_reachus/Screens/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
          ),
          ListTile(
            title: Text(
              "",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            onTap: () => {},
          ),
        ]),
      ),
      appBar: AppBar(
        elevation: 0,
      ),
      body: Body(),
    );
  }
}
