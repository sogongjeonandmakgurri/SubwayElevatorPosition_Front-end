import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kiosk/Kiosk/subwayAs2.dart';
import 'package:kiosk/Kiosk/subwayAs3.dart';
import 'package:kiosk/Kiosk/subwayAs4.dart';
import 'package:kiosk/firstPage.dart';
import 'package:rive/rive.dart';
import 'package:http/http.dart' as http;



class SubwayAssistant extends StatefulWidget {
  List<dynamic> subwaySt;
  int index;
  SubwayAssistant(this.index, this.subwaySt, {Key? key}) : super(key: key);  // const 삭제함

  @override
  State<SubwayAssistant> createState() => _SubwayAssistantState();
}

class _SubwayAssistantState extends State<SubwayAssistant> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffD7D7FD),
        title: Text(
          // 앱 이름 수정
          '역에서 가까운 엘레베이터 위치',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      body:
      SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Column(children: [

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    '현재 위치',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      //color: Color(0xff595B5C),
                      color: Colors.black
                    ),
                      textAlign: TextAlign.center
                  ),
                ),

                Stack(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    child: RiveAnimation.asset(
                      'assets/subway/subway_line0'+widget.subwaySt[widget.index]['line'].toString()+'.riv',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 21,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(flex: 2),
                            SizedBox(
                              height: 27,
                            ),
                            Text(
                              "${widget.subwaySt[widget.index]['sub_name']}",  // 숭실대학교
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${widget.subwaySt[widget.index]['line']}"+"호선",  // 호선
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   height: 180,
                            // ),
                            Spacer(flex: 2),
                            Text('이(가) 맞습니까?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  //color: Color(0xff595B5C),
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    //width: MediaQuery.of(context).size.width * 0.9,

                  ),
                ]),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                //   child: Text('이(가) 맞습니까?',
                // style: TextStyle(
                // fontWeight: FontWeight.bold,
                // fontSize: 20,
                //     color: Color(0xff595B5C),
                // ),
                //       textAlign: TextAlign.center
                //   ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () async {
                        List<dynamic> outerElevator=await getOuterElevatorPosition(widget.index, widget.subwaySt);
                        List<dynamic> innerElevator=await getInnerElevatorPosition(widget.index, widget.subwaySt);
                        print(outerElevator);
                        print(innerElevator);
                        if(outerElevator.isEmpty&&innerElevator.isEmpty){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => SubwayAssistant4()));
                        }
                        else{
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => SubwayAssistant2(widget.index,widget.subwaySt[widget.index]['line'], outerElevator, innerElevator)));
                        }

                      },
                      icon: Image.asset('assets/subway/yes.png'),
                      iconSize: MediaQuery.of(context).size.width * 0.4,
                        //padding: EdgeInsets.zero,
                      //constraints: BoxConstraints(),
                    ),
                    IconButton(
                      onPressed: () {
                        if(widget.index+1==widget.subwaySt.length){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => SubwayAssistant3()));
                        }
                        else{
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => SubwayAssistant(widget.index+1, widget.subwaySt)));

                         }
                        },
                      icon: Image.asset('assets/subway/no.png'),
                      iconSize: MediaQuery.of(context).size.width * 0.4,
                        //padding: EdgeInsets.zero,
                      //constraints: BoxConstraints(),

                    ),

                  ],
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



Future<List<dynamic>> getOuterElevatorPosition(int index, List<dynamic> subwaySt) async {  // 출구측 엘리베이터 위치
  String url='http://52.79.206.73:8080/api/elevator/in';

  Map data = { 'line' :  subwaySt[index]['line'],
    'sub_name' : subwaySt[index]['sub_name'] };
  var body = json.encode(data);

  var response=await http.post(Uri.parse(url), headers: {"Content-Type": "application/json"},  body: body);
  String responseBody = utf8.decode(response.bodyBytes);

  List<dynamic> list = jsonDecode(responseBody);

  return list;
}

Future<List<dynamic>> getInnerElevatorPosition(int index, List<dynamic> subwaySt) async {  // 상행/하행/외선/내선
  String url='http://52.79.206.73:8080/api/elevator/out';

  Map data = { 'line' :  subwaySt[index]['line'],
    'sub_name' : subwaySt[index]['sub_name'] };
  var body = json.encode(data);

  var response=await http.post(Uri.parse(url), headers: {"Content-Type": "application/json"},  body: body);
  String responseBody = utf8.decode(response.bodyBytes);

  List<dynamic> list = jsonDecode(responseBody);

  return list;
}
