import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kiosk/recommendSubwayStation.dart';

import 'Kiosk/subwayAs.dart';
import 'Kiosk/subwayAs3.dart';
import 'firstPage.dart';
import 'package:http/http.dart' as http;

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
            // () async {
            //   LocationPermission permission = await Geolocator
            //       .requestPermission();
            //
            //   // print('실행되나?');
            //   //스프링부트랑 연결
            //   void initState() {
            //     super.initState();
            //   }
            //   List<dynamic> subwayStation = await getPosition();
            //   print(subwayStation);
            //   if (subwayStation.isEmpty) {
            //     Navigator.of(context).push(
            //       //context,
            //       MaterialPageRoute(
            //           builder: (context) => SubwayAssistant3()), // 장소 정보
            //     );
            //   }
            //   else {
            //     Navigator.of(context).push(
            //       //context,
            //       MaterialPageRoute(builder: (context) =>
            //           SubwayAssistant(0, subwayStation)), // 장소 정보
            //     );
            //   }
            // }


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


// Future<List<dynamic>> getPosition() async {
//   LocationPermission permission = await Geolocator.requestPermission();
//   Position currentPosition = await Geolocator
//       .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);  // 스프링부트 연결해서 장소 가져오기
//   print(currentPosition.latitude);
//
//   String url='http://52.79.206.73:8080/api/subway/loc';
//
//   print({
//     'lat' : currentPosition.latitude,
//     'lng' : currentPosition.longitude
//   });
//   // Map data = { 'lat' : currentPosition.latitude,
//   //  'lng' : currentPosition.longitude};
//   Map data = { 'lat' : 37.49464868076315,
//     'lng' : 126.95864607740343 };  // 숭실대입구 근처
//
//   var body = json.encode(data);
//
//   var response=await http.post(Uri.parse(url), headers: {"Content-Type": "application/json"},  body: body);
//   String responseBody = utf8.decode(response.bodyBytes);
//
//   List<dynamic> list = jsonDecode(responseBody);
//
//   return list;
// }
//
