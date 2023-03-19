import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HighLightedTextt extends StatelessWidget {
  final String data;
  final Color color;
  final double fontSize;

  const HighLightedTextt(
      this.data, {
        super.key,
        required this.color,
        this.fontSize = 14,
      });

  Size getTextSize({
    required String text,
    required TextStyle style,
    required BuildContext context,
  }) {
    final Size size = (TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      textDirection: TextDirection.ltr,
    )..layout())
        .size;
    return size;
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      fontSize: fontSize,
      color: color,
      //color: Colors.black,
      fontWeight: FontWeight.bold,
    );
    final Size textSize = getTextSize(
      text: data,
      style: textStyle,
      context: context,
    );
    return Stack(
      children: [
        Text(data, style: textStyle, textAlign: TextAlign.center,),
        Positioned(
          top: textSize.height / 2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: color.withOpacity(0.2),
            ),
            height: textSize.height / 2,
            width: textSize.width,
          ),
        )
      ],
    );
  }
}