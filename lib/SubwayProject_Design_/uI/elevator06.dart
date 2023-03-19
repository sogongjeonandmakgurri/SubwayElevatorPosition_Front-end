import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class dongbanjaIPhone1312ProMax14 extends StatelessWidget {
  dongbanjaIPhone1312ProMax14({
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
            child: Stack(
              children: <Widget>[
                Container(
                  color: const Color(0xffe4e4e4),
                ),
                Pinned.fromPins(
                  Pin(size: 46.0, middle: 0.5),
                  Pin(size: 46.0, start: 9.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 30.0, start: 47.0),
                  Pin(start: 16.0, end: 17.0),
                  child: SvgPicture.string(
                    _svg_rew4h,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 19.0, end: 18.0),
            Pin(size: 100.0, middle: 0.1852),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(33.0),
                border: Border.all(width: 3.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 19.0, end: 18.0),
            Pin(size: 112.0, middle: 0.4214),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(33.0),
                border: Border.all(width: 3.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 19.0, end: 18.0),
            Pin(size: 181.0, end: 118.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff000000),
                borderRadius: BorderRadius.circular(33.0),
                border: Border.all(width: 3.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 104.0, middle: 0.5),
            Pin(size: 68.0, start: 107.0),
            child: Text(
              '학동방면 \n',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 28,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.301),
            child: SizedBox(
              width: 104.0,
              height: 68.0,
              child: Text(
                '반포방면 \n',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 28,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.003, -0.614),
            child: SizedBox(
              width: 97.0,
              height: 72.0,
              child: Text(
                '8-2',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 60,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.157),
            child: SizedBox(
              width: 98.0,
              height: 72.0,
              child: Text(
                '4-2',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 60,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 36.0, middle: 0.5326),
            child: Text(
              '에 가까운 엘리베이터가 있습니다.',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 30,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 44.0),
            Pin(size: 72.0, middle: 0.6803),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 30,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: '내리셔서 ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: '다음 출구',
                    style: TextStyle(
                      color: const Color(0xffbf4141),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: '로 가세요 \n',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 145.0, end: 50.0),
            Pin(size: 117.0, middle: 0.8109),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff687213),
                borderRadius: BorderRadius.circular(23.0),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 145.0, start: 49.0),
            Pin(size: 117.0, middle: 0.8109),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff687213),
                borderRadius: BorderRadius.circular(23.0),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.558, 0.635),
            child: SizedBox(
              width: 116.0,
              height: 76.0,
              child: Text(
                '7번 출구 \n',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 32,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 118.0, end: 60.0),
            Pin(size: 76.0, middle: 0.8176),
            child: Text(
              '5번 출구 \n',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 32,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_rew4h =
    '<svg viewBox="47.0 876.0 30.0 34.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 47.0, 910.0)" d="M 16.99999809265137 0 L 34 30 L 0 30 Z" fill="#000000" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
