import 'dart:convert';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kiosk/ConvertJson.dart';
import 'package:kiosk/Kiosk/kioskAssistant.dart';
import 'package:kiosk/Kiosk/memoAssistant.dart';
import 'package:kiosk/Kiosk/subwayAs.dart';
import 'package:kiosk/Kiosk/subwayAs3.dart';
import 'package:kiosk/highlightedText.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;

import 'highlightedTextt.dart';

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
                  // Text('지하철 엘리베이터 찾기',
                  // style: TextStyle(
                  //   fontSize: 50,
                  //   fontWeight: FontWeight.bold,
                  //   color: Colors.black
                  // ),)
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
                    // SizedBox(
                    //   height: 15,
                    // ),
                    SizedBox(
                      height: 20,
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
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 60,),
                        ElevatedButton
                          (
                          onPressed: () async {
                            LocationPermission permission = await Geolocator.requestPermission();

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
                          child:
                          Text('시작', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffDCCBEE), // 텍스트 버튼과 다르게 배경색 변경
                              minimumSize: Size(120,60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),

                              ),
                              elevation: 0.0),
                          //child: HighLightedTextt('시작', color: Color(0xff946CEE),fontSize: 20),

                          //icon: Image.asset("assets/SubwayEle.png"),
                          //iconSize: MediaQuery.of(context).size.height * 0.25,
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
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Column(
//                 children: [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width*0.8,
//                     child: Text('시작하시려면 화면을 터치하세요',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.grey,
//                           fontSize: 20,
//                         )),
//                   ),
//                 ],
//               ),
// ],
//           )

        ],
      ),

    );

  }
}


Future<List<dynamic>> getPosition() async {
  LocationPermission permission = await Geolocator.requestPermission();
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
  //Map data = { 'lat' : 37.49464868076315,
    //'lng' : 126.95864607740343 };  // 숭실대입구 근처

  var body = json.encode(data);

  var response=await http.post(Uri.parse(url), headers: {"Content-Type": "application/json"},  body: body);
  String responseBody = utf8.decode(response.bodyBytes);

  List<dynamic> list = jsonDecode(responseBody);

  return list;
}

