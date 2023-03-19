import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kiosk/Kiosk/subwayAs2.dart';
import 'package:kiosk/firstPage.dart';
import 'package:rive/rive.dart';
import 'package:http/http.dart' as http;



class SubwayAssistant4 extends StatefulWidget {
  const SubwayAssistant4( {Key? key}) : super(key: key);  // const 삭제함

  @override
  State<SubwayAssistant4> createState() => _SubwayAssistantState();
}

class _SubwayAssistantState extends State<SubwayAssistant4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text(
          // 앱 이름 수정
          '역에서 가까운 엘레베이터 위치',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children:
                [
                  SizedBox(
                  height: 50,
                ),
                  SizedBox(
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.width/2,
                  child: Image.asset(
                    'assets/subway/construction.png',
                  ),
                ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text('이용에 불편을 드려 죄송합니다.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text('현재 엘리베이터 위치 정보가 없습니다.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                  ),


                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
