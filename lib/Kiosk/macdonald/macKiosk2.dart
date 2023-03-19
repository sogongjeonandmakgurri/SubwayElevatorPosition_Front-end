import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'macKiosk.dart';
import 'macKiosk2.dart';
import 'macKiosk3.dart';

class MacKiosk2 extends StatefulWidget {
  const MacKiosk2({Key? key}) : super(key: key);

  @override
  State<MacKiosk2> createState() => _MacKioskState();
}

class _MacKioskState extends State<MacKiosk2> {

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
                  child: Image.asset('assets/mc2.png'),
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
                              await player.setAsset('assets/2.mp3');
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
                            '매장식사와 포장 중에',
                            style: TextStyle(
                              fontSize:
                              MediaQuery.of(context).size.width * 0.085,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '선택하여 주세요',
                            style: TextStyle(
                              fontSize:
                              MediaQuery.of(context).size.width * 0.085,
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
                          MaterialPageRoute(builder: (context) => MacKiosk()),);
                      },
                      icon: Image.asset("assets/back.png"),
                      iconSize: MediaQuery.of(context).size.width * 0.4,
                    ),
                    IconButton(
                      onPressed: () async {

                        final player = AudioPlayer();
                        final duration =
                        await player.setAsset('assets/3.mp3');
                        player.play();
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => MacKiosk3()),);
                      },
                      icon: Image.asset("assets/next.png"),
                      iconSize: MediaQuery.of(context).size.width * 0.4,
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