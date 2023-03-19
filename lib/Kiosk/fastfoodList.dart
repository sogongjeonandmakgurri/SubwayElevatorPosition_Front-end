import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:kiosk/riveTest.dart';
import 'package:rive/rive.dart';

import 'macdonald/macKiosk.dart';



class FastFoodList extends StatefulWidget {
  const FastFoodList({Key? key}) : super(key: key);

  @override
  State<FastFoodList> createState() => _FastFoodListState();
}

class _FastFoodListState extends State<FastFoodList> {

  var categories = [
    '맥도날드',
    '버거킹',
    '롯데리아',
    '맘스터치',
  ];

  Widget manageButton(text, navigator) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () async {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => navigator),);

          //페이지 이동과 동시에 소리 재생.
          },
        child: Image.asset('assets/char.png'),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          // 앱 이름 수정
          '매장을 선택해주세요',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,

          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
              Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () async {
                          final player = AudioPlayer();
                          final duration =
                              await player.setAsset('assets/1.mp3');
                          player.play();
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MacKiosk()),
                          );
                        },
                        icon: Image.asset("assets/Mcdonald.png"),
                        iconSize: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Text(categories[0],
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () async {
                          final player = AudioPlayer();
                          final duration =
                              await player.setAsset('assets/1.mp3');
                          player.play();
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MacKiosk()),
                          );
                        },
                        icon: Image.asset("assets/burgurKing.png"),
                        iconSize: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Text(categories[1],
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
              Row(
                children: [
                  //navigator button
                  Column(
                    children: [
                      IconButton(
                        onPressed: () async {
                          final player = AudioPlayer();
                          final duration =
                              await player.setAsset('assets/1.mp3');
                          player.play();
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MacKiosk()),
                          );
                        },
                        icon: Image.asset("assets/Lotteria.png"),
                        iconSize: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Text(categories[2],
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),)
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () async {
                          final player = AudioPlayer();
                          final duration =
                              await player.setAsset('assets/1.mp3');
                          player.play();
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MacKiosk()),
                          );
                        },
                        icon: Image.asset("assets/Momstouch.png"),
                        iconSize: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Text(categories[3],
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
