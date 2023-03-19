// import 'package:flutter/material.dart';
// import 'package:kiosk/Kiosk/subwayAs2.dart';
// import 'package:kiosk/Kiosk/subwayAs3.dart';
// import 'package:rive/rive.dart';
//
// class SubwayAssistant1 extends StatefulWidget {
//   const SubwayAssistant1({Key? key}) : super(key: key);
//
//   @override
//   State<SubwayAssistant1> createState() => _SubwayAssistantState();
// }
//
// class _SubwayAssistantState extends State<SubwayAssistant1> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: BackButton(
//           color: Colors.white,
//         ),
//         backgroundColor: Colors.black,
//         title: Text(
//           // 앱 이름 수정
//           '역에서 가까운 엘레베이터 위치',
//           style: TextStyle(
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.05,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Column(children: [
//                 Text(
//                   '현재 위치',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 40,
//                   ),
//                 ),
//                 Stack(children: [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width,
//                     height: MediaQuery.of(context).size.width,
//                     child: RiveAnimation.asset(
//                       'assets/subway/subway_line04.riv',
//                     ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width,
//                     height: MediaQuery.of(context).size.width,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           width: 25,
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               '총신대입구',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               '4호선',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ]),
//                 Text('이(가) 맞습니까?',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 40,
//                     )),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                       onPressed: () {
//
//                       },
//                       icon: Image.asset('assets/subway/no.png'),
//                       iconSize: MediaQuery.of(context).size.width * 0.4,
//                     ),
//                     IconButton(
//                       onPressed: () async {
//                         Navigator.of(context).pushReplacement(MaterialPageRoute(
//                             builder: (context) => SubwayAssistant3()));
//                       },
//                       icon: Image.asset('assets/subway/yes.png'),
//                       iconSize: MediaQuery.of(context).size.width * 0.4,
//                     ),
//                   ],
//                 ),
//               ]),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
