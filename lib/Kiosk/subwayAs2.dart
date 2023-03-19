import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../highlightedText.dart';

class SubwayAssistant2 extends StatefulWidget {
  int index;
  int line;

  List<dynamic> outerElevator;
  List<dynamic> innerElevator;

  SubwayAssistant2(this.index, this.line, this.outerElevator, this.innerElevator,{Key? key}) : super(key: key);

  @override
  State<SubwayAssistant2> createState() => _SubwayAssistantState();
}

class _SubwayAssistantState extends State<SubwayAssistant2> {
  @override
  Widget build(BuildContext context) {
    List colors=[0xff,0xff0D3692,0xff3B9F37,0xffFF7F00,0xff00A2D1,0xff703E8C,0xff904D23,0xff5B692E, 0xffC82363
    ,0xffAA9872];
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          backgroundColor:Color(0xffDCCBEE),
          title: Text(
            // 앱 이름 수정
            '역에서 가까운 엘리베이터 위치',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            if(widget.innerElevator.isNotEmpty)
              ListView.builder(
                  scrollDirection:
                  Axis.vertical, //vertical : 수직으로 나열 / horizontal : 수평으로 나열
                  shrinkWrap: true,
                  itemCount: widget.innerElevator.length, //리스트의 개수
                  itemBuilder: (BuildContext context, int index) {
                    //리스트의 반목문 항목 형성
                    return Container(
                      child:
                      Column(children: [
                        HighLightedText('${widget.innerElevator[index]['next_sub_name']}'+' 방면', color: Color(colors[widget.line]), fontSize: 18),
                        // Text(
                        //   //'남성 방면',
                        //   "${widget.innerElevator[index]['next_sub_name']}"+" 방면",
                        //   style: TextStyle(
                        //     fontWeight: FontWeight.bold,
                        //     fontSize: 22,
                        //     color: Colors.transparent, // Step 2 SEE HERE
                        //     shadows: [Shadow(offset: Offset(0, -5), color: Colors.black)],
                        //     decoration: TextDecoration.underline,
                        //     decorationStyle: TextDecorationStyle.dashed,
                        //     decorationColor: Color(colors[widget.line]),
                        //   ),
                        // ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: 100,
                          decoration: BoxDecoration(
                              //border: Border.all(width: 3),
                              borderRadius: BorderRadius.circular(40),
                              color: Color(colors[widget.line]),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "${widget.innerElevator[index]['elevator_loc']}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,

                        ),
                      ]),
                    );
                  }),

            SizedBox(
              height: 30,

            ),
                if(widget.outerElevator.isNotEmpty)

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    HighLightedText('지상 엘리베이터 위치 안내', color: Color(colors[widget.line]), fontSize: 16),
                    // Text(
                    //   '지상 엘리베이터 위치 안내',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 20,
                    //     color: Colors.transparent, // Step 2 SEE HERE
                    //     shadows: [Shadow(offset: Offset(0, -5), color: Colors.black)],
                    //     decoration: TextDecoration.underline,
                    //     decorationStyle: TextDecorationStyle.dashed,
                    //     decorationColor: Color(colors[widget.line]),
                    //       //color: Colors.red
                    //   ),
                    //   textAlign: TextAlign.center,
                    //
                    // ),
                  ),

                // if(widget.outerElevator.isNotEmpty)
                //   SizedBox(
                //     width: MediaQuery.of(context).size.width * 0.9,
                //     child:
                //     Text(
                //       '안내',
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 20,
                //
                //       ),
                //     ),
                //   ),


            ListView.builder(
                scrollDirection:
                Axis.vertical, //vertical : 수직으로 나열 / horizontal : 수평으로 나열
                shrinkWrap: true,
                itemCount: widget.outerElevator.length, //리스트의 개수
                itemBuilder: (BuildContext context, int index) {
                  //리스트의 반목문 항목 형성
                  return Container(
                    child:
                    Column(children: [

                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color(colors[widget.line]),

                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(40)),
                        alignment: Alignment.center,
                        child: Text(
                          "${widget.outerElevator[index]['elevator_loc']}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 21,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
                  );
                }),

                SizedBox(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height,
                child:Text('에 가까운 엘리베이터가 있어요',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                      color: Color(0xff595B5C),

                  ),textAlign: TextAlign.center,)),
                // Text(
                //   '에 가까운 엘레베이터가 있어요',
                //   style: TextStyle(fontSize: 20),
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
   ]),
        ),
            );

  }
}
