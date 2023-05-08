import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiosk/recommendSubwayStation.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () =>

              Navigator.pushReplacement(
        context,


        MaterialPageRoute(builder: (context) => RecommendSubwayStation()),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset('assets/LogoSubway.png'),
                ],
              ),

            ],

          ),

        ],
      ),
    );
  }
}


