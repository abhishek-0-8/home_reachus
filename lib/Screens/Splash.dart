import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_reachus/Data/constants.dart';
import 'package:home_reachus/Screens/ngo_info.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Container(
            alignment: Alignment.center,
            child: Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Lottie.asset('assets/lf30_editor_gf0k1gqg.json'),
                    Text(
                      "ReachUS",
                      style: GoogleFonts.lobster(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                          color: Colors.white),
                    ),
                  ]),
            )),
      ),
    );
  }
}
