import 'package:flutter/material.dart';
import 'package:kiosk/Kiosk/fastfoodList.dart';
import 'package:kiosk/riveTest.dart';
import 'package:rive/rive.dart';

class KioskAssistant extends StatefulWidget {
  const KioskAssistant({Key? key}) : super(key: key);

  @override
  State<KioskAssistant> createState() => _KioskAssistantState();
}

class _KioskAssistantState extends State<KioskAssistant> {

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
          '업종을 선택해주세요',
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
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FastFoodList()),
                  );
                },
                icon: Image.asset("assets/fastFood.png"),
                iconSize: MediaQuery.of(context).size.height * 0.3,
              ),
              Text('패스트푸드',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.1,
                fontWeight: FontWeight.bold,
              ),),
              //navigator button
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FastFoodList()),
                  );
                },
                icon: Image.asset("assets/cafe.png"),
                iconSize: MediaQuery.of(context).size.height * 0.3,
              ),
              Text('카페',
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
