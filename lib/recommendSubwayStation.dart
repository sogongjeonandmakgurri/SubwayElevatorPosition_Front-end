import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kiosk/Kiosk/subwayAs.dart';
import 'package:kiosk/Kiosk/subwayAs3.dart';
import 'package:http/http.dart' as http;

class RecommendSubwayStation extends StatefulWidget {
  const RecommendSubwayStation({Key? key}) : super(key: key);

  @override
  State<RecommendSubwayStation> createState() => _RecommendSubwayStationState();
}

class _RecommendSubwayStationState extends State<RecommendSubwayStation> {

  var longitude;
  var latitude;

  @override
  Widget build(BuildContext context) {

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child:
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton
                          (
                          onPressed: () async {

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
                          child:
                          Text('시작', style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffD7D7FD), // 텍스트 버튼과 다르게 배경색 변경
                              minimumSize: Size(120,60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              elevation: 0.0,
                              side: BorderSide(
                                color: Colors.black,
                                width: 2,
                              )),
                        ),

                      ],
                    ),
                    //navigator button
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

    );

  }
}


Future<List<dynamic>> getPosition() async {
  Position currentPosition = await Geolocator
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);  // 스프링부트 연결해서 장소 가져오기
  print(currentPosition.latitude);

  String url='http://52.79.206.73:8080/api/subway/loc';

  print({
    'lat' : currentPosition.latitude,
    'lng' : currentPosition.longitude
  });
   Map data = { 'lat' : currentPosition.latitude,
    'lng' : currentPosition.longitude};

  var body = json.encode(data);

  var response=await http.post(Uri.parse(url), headers: {"Content-Type": "application/json"},  body: body);
  String responseBody = utf8.decode(response.bodyBytes);

  List<dynamic> list = jsonDecode(responseBody);

  return list;
}

