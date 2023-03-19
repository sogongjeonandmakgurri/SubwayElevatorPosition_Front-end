import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:kiosk/Kiosk/macdonald/macKiosk4.dart';

import 'macKiosk2.dart';
import 'macKioskOnly.dart';
import 'macKioskSet.dart';

class MacKiosk5 extends StatefulWidget {
  const MacKiosk5({Key? key}) : super(key: key);

  @override
  State<MacKiosk5> createState() => _MacKioskState();
}

class _MacKioskState extends State<MacKiosk5> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('키오스크 도우미',
          style: TextStyle(
              color: Colors.white
          ),),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                //키오스크 이미지 들어갈 부분

                Container(height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset('assets/mc5.png'),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () async {
                              final player = AudioPlayer();
                              final duration =
                              await player.setAsset('assets/5.mp3');
                              player.play();
                            },
                            icon: Image.asset(
                              "assets/volume.png",
                            ),
                            iconSize: MediaQuery.of(context).size.width * 0.1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '세트(음료 및 스낵추가)와',
                            style: TextStyle(
                              fontSize:
                              MediaQuery.of(context).size.width * 0.07,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '단품(햄버거만)중에',
                            style: TextStyle(
                              fontSize:
                              MediaQuery.of(context).size.width * 0.07,
                              fontWeight: FontWeight.w500,
                            ),
                          ),Text(
                            '선택해주세요',
                            style: TextStyle(
                              fontSize:
                              MediaQuery.of(context).size.width * 0.07,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => MacKiosk4()),);
                      },
                      icon: Image.asset("assets/back.png"),
                      iconSize: MediaQuery.of(context).size.width * 0.25,
                    ),
                    IconButton(
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => MacKioskOnly()),);
                        final player = AudioPlayer();
                        final duration =
                        await player.setAsset('assets/6-1.mp3');
                        player.play();
                      },
                      icon: Image.asset("assets/only.png"),
                      iconSize: MediaQuery.of(context).size.width * 0.25,
                    ),
                    IconButton(
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => MacKioskSet()),);
                        final player = AudioPlayer();
                        final duration =
                        await player.setAsset('assets/7-1.mp3');
                        player.play();
                      },
                      icon: Image.asset("assets/set.png"),
                      iconSize: MediaQuery.of(context).size.width * 0.25,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}