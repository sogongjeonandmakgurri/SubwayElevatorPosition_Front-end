import 'dart:convert';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kiosk/ConvertJson.dart';
import 'package:kiosk/Kiosk/kioskAssistant.dart';
import 'package:kiosk/Kiosk/memoAssistant.dart';
import 'package:kiosk/Kiosk/subwayAs.dart';
import 'package:kiosk/Kiosk/subwayAs3.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  var longitude;
  var latitude;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // 앱 이름 수정
          '원하시는 기능을 선택해주세요',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      SingleChildScrollView(
      child:
          Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 15,
              // ),
              SizedBox(
                height: 210,
              ),
              //navigator button
              // IconButton(
              //   onPressed: () {
              //     Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => KioskAssistant()),
              //     );
              //   },
              //   icon: Image.asset("assets/kioskAssist.png"),
              //   iconSize: MediaQuery.of(context).size.height * 0.25,
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // IconButton(
              //   onPressed: () async {
              //     Navigator.of(context).push(
              //
              //       MaterialPageRoute(builder: (context) => MemoAssistant()),
              //     );
              //   },
              //   icon: Image.asset("assets/ocrAssist.png"),
              //   iconSize: MediaQuery.of(context).size.height * 0.25,
              // ),
              // //navigator button
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(width: 60,),
                  IconButton(
                    onPressed: () async {
                      LocationPermission permission = await Geolocator.requestPermission();  // 허가

                      // print('실행되나?');
                      //스프링부트랑 연결
                      void initState() {
                        super.initState();
                      }
                      List<dynamic> subwayStation= await getPosition();
                      print(subwayStation);
                      if(subwayStation.isEmpty){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SubwayAssistant3()),  // 장소 정보
                        );
                      }
                      else {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>
                              SubwayAssistant(0, subwayStation)), // 장소 정보
                        );
                      }
                    },
                    icon: Image.asset("assets/SubwayEle.png"),
                    iconSize: MediaQuery.of(context).size.height * 0.25,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(builder: (context) => SubwayAssistant1_1()),
                      // );
                    },
                  )
                ],
              ),
              //navigator button
            ],
          ),
      ),
        ],
      ),

    );
  }
}


Future<List<dynamic>> getPosition() async {
  // 현재 지하철역 위치 가져오기 (현재 위치에서 가까운 역들을 리스트로 가져오기)
  //
  LocationPermission permission = await Geolocator.requestPermission();
  Position currentPosition = await Geolocator
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);  // 스프링부트 연결해서 장소 가져오기
  print(currentPosition.latitude);

  String url='http://52.79.206.73:8080/api/subway/loc';  // 퍼블릭 주소 접근

  print({
    'lat' : currentPosition.latitude,
    'lng' : currentPosition.longitude
  });
  Map data = { 'lat' : currentPosition.latitude,
   'lng' : currentPosition.longitude};  // 현재 위치 위도, 경도
  // Map data = { 'lat' : 37.49464868076315,
  //   'lng' : 126.95864607740343 };  // 숭실대입구 근처

  var body = json.encode(data);  // json 타입으로 변경 (http body로 넘겨줄 데이터)

  var response=await http.post(Uri.parse(url), headers: {"Content-Type": "application/json"},  body: body);  // PostMapping
  String responseBody = utf8.decode(response.bodyBytes);

  List<dynamic> list = jsonDecode(responseBody);  // json 타입의 객체 -> list 타입으로 가져오기 (호선 line, 역이름 sub_name)

  return list;
}

