import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kiosk/splashCamera.dart';

class CameraApp extends StatefulWidget {
  const CameraApp(
    CameraDescription firstCamera, {
    Key? key,
    required this.camera,
  }) : super(key: key);

  final CameraDescription camera;

  @override
  CameraAppState createState() => CameraAppState();
}

class CameraAppState extends State<CameraApp> {
  File? _image;
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  final picker = ImagePicker();

  Future getImage(ImageSource imageSource) async {
    final image = await picker.pickImage(source: imageSource);  // 사진 파일 서버로 넘기기
    // 기본 메모 앱에 저장되도록이 안되면 결과물 화면에 띄우기(텍스트만)

    setState(() {
      _image = File(image!.path); // 가져온 이미지를 _image에 저장
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.ultraHigh,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Future가 완료되면, 프리뷰를 보여줍니다.
          return Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0,
                  child: CameraPreview(_controller)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
              Container(
                height: MediaQuery.of(context).size.width * 0.7,
                width: MediaQuery.of(context).size.width * 0.7,
                child: FittedBox(
                  child: FloatingActionButton(onPressed: () {
                    getImage(ImageSource.camera);
                  },
                    backgroundColor: Colors.white,),
                ),
              ),
              Text('카메라 실행',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 50,),
              TextButton(onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SplashCamera()),);  // 카메라 실행
              }, child: Text('촬영 완료',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),))
            ],
          );
        } else {
          // Otherwise, display a loading indicator.
          // 그렇지 않다면, 진행 표시기를 보여줍니다.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
