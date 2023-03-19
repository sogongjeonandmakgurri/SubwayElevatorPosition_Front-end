// import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:kiosk/Kiosk/cameraScreen.dart';

import 'macKiosk2.dart';

class MacKiosk extends StatefulWidget {
  const MacKiosk({Key? key}) : super(key: key);

  @override
  State<MacKiosk> createState() => _MacKioskState();
}

class _MacKioskState extends State<MacKiosk> {
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
                Container(height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset('assets/mc1.png'),
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
                                  await player.setAsset('assets/1.mp3');
                              player.play();
                            },
                            icon: Image.asset(
                              "assets/volume.png",
                            ),
                            iconSize: MediaQuery.of(context).size.width * 0.1,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
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
                            '주문하기 버튼을',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.09,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '눌러주세요',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.09,
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
                        Navigator.of(context).pop();
                      },
                      icon: Image.asset("assets/back.png"),
                      iconSize: MediaQuery.of(context).size.width * 0.4,
                    ),
                    IconButton(
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => MacKiosk2()),);
                        final player = AudioPlayer();
                        final duration =
                        await player.setAsset('assets/2.mp3');
                        player.play();
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


// Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// IconButton(onPressed: () async {
//
// WidgetsFlutterBinding.ensureInitialized();
// final cameras = await availableCameras();
// final firstCamera = cameras.first;	// 첫 번째 카메라를 담음
// Navigator.of(context).push(
// MaterialPageRoute(builder: (context) => TakePictureScreen(firstCamera, camera: firstCamera)),);
// },
// icon: Icon(Icons.search)
// ),
