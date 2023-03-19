import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class dongbanjaIPhone1312ProMax13 extends StatelessWidget {
  dongbanjaIPhone1312ProMax13({
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
          Align(
            alignment: Alignment(0.017, -0.219),
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
          Align(
            alignment: Alignment(0.02, -0.229),
            child: Container(
              width: 228.0,
              height: 228.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                border: Border.all(width: 1.0, color: const Color(0xff687214)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.046, 0.245),
            child: SizedBox(
              width: 189.0,
              height: 36.0,
              child: Text(
                '엘레베이터 위치',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 30,
                  color: const Color(0x99000000),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.046, 0.367),
            child: SizedBox(
              width: 189.0,
              height: 51.0,
              child: Text(
                '7번 출구 앞',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 42,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.012, -0.18),
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
        ],
      ),
    );
  }
}

const String _svg_rew4h =
    '<svg viewBox="47.0 876.0 30.0 34.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 47.0, 910.0)" d="M 16.99999809265137 0 L 34 30 L 0 30 Z" fill="#000000" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
