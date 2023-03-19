import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class dongbanjaIPhone1312ProMax8 extends StatelessWidget {
  dongbanjaIPhone1312ProMax8({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 65.0, start: 0.0),
            child: Stack(
              children: <Widget>[
                Container(
                  color: const Color(0xff171e28),
                ),
                Pinned.fromPins(
                  Pin(start: 38.0, end: 32.0),
                  Pin(size: 36.0, middle: 0.5517),
                  child: Text(
                    '역에서 가까운 엘레베이터 위치',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontSize: 30,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 67.0, end: -1.0),
            child: Container(
              color: const Color(0xffe4e4e4),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 46.0, middle: 0.5026),
            Pin(size: 46.0, end: 10.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.151),
            child: Container(
              width: 196.0,
              height: 196.0,
              decoration: BoxDecoration(
                color: const Color(0xff687213),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 100.0, end: 100.0),
            Pin(size: 228.0, middle: 0.4212),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                border: Border.all(width: 1.0, color: const Color(0xff687214)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.033, -0.534),
            child: SizedBox(
              width: 126.0,
              height: 41.0,
              child: Text(
                '현재 위치',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 34,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.29),
            child: SizedBox(
              width: 226.0,
              height: 41.0,
              child: Text(
                '이(가) 맞습니까?',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 34,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.554, 0.575),
            child: SizedBox(
              width: 114.0,
              height: 64.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffc34621),
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                          width: 3.0, color: const Color(0xff000000)),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.0, -0.034),
                    child: SizedBox(
                      width: 76.0,
                      height: 35.0,
                      child: Text(
                        '아니오',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 29,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.51, 0.575),
            child: SizedBox(
              width: 114.0,
              height: 64.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff171e28),
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                          width: 3.0, color: const Color(0xff000000)),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.023, 0.071),
                    child: SizedBox(
                      width: 26.0,
                      height: 36.0,
                      child: Text(
                        '네',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 30,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.12),
            child: SizedBox(
              width: 98.0,
              height: 92.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 38,
                    color: const Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: '논현역\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: '7호선',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
