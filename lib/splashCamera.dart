import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiosk/Kiosk/memoAssistant.dart';
import 'package:rive/rive.dart';

import 'firstPage.dart';

class SplashCamera extends StatefulWidget {
  @override
  _SplashCameraState createState() => _SplashCameraState();
}

class _SplashCameraState extends State<SplashCamera> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MemoAssistant()),
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width *0.5,
                    height: MediaQuery.of(context).size.width *0.5,
                    child: RiveAnimation.asset('assets/live.riv'),),
                  Text('잠시만 기다려 주세요',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black
                  ),)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}