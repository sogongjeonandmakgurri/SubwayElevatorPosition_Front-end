
import 'package:flutter/material.dart';



class SubwayAssistant3 extends StatefulWidget {
  const SubwayAssistant3( {Key? key}) : super(key: key);  // const 삭제함

  @override
  State<SubwayAssistant3> createState() => _SubwayAssistantState();
}

class _SubwayAssistantState extends State<SubwayAssistant3> {

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
          '역에서 가까운 엘레베이터 위치',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children:
                [
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.width/2,
                    child: Image.asset(
                      'assets/subway/warning.png',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text('근처에 지하철역이 없습니다.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text('다시 시도해주세요.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
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
