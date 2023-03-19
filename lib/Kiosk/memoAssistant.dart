import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kiosk/Kiosk/cameraScreen.dart';
import 'package:kiosk/Kiosk/fastfoodList.dart';
import 'package:kiosk/riveTest.dart';
import 'package:rive/rive.dart';

class MemoAssistant extends StatefulWidget {
  const MemoAssistant({Key? key}) : super(key: key);

  @override
  State<MemoAssistant> createState() => _MemoAssistantState();
}

class _MemoAssistantState extends State<MemoAssistant> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text(
          // 앱 이름 수정
          '메모&일정 저장하기',
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
              SizedBox(height: 15,),
              //navigator button
              IconButton(
                onPressed: () async {
                  final cameras = await availableCameras();
                  final firstCamera = cameras.first;
                  Navigator.of(context).push(  // 카메라 오픈
                      MaterialPageRoute(builder: (context) => CameraApp(firstCamera, camera: cameras.first,)),
                  );
                },
                icon: Image.asset("assets/memo.png"),
                iconSize: MediaQuery.of(context).size.height * 0.3,
              ),
              Text('메모',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.1,
                fontWeight: FontWeight.bold,
              ),),
              //navigator button
              IconButton(
                onPressed: () async {
                  final cameras = await availableCameras();
                  final firstCamera = cameras.first;
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CameraApp(firstCamera, camera: cameras.first,)),
                  );
                },
                icon: Image.asset("assets/plan.png"),
                iconSize: MediaQuery.of(context).size.height * 0.3,
              ),
              Text('일정',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.1,
                  fontWeight: FontWeight.bold,
                ),),
            ],
          ),
        ],
      ),
    );
  }
}
