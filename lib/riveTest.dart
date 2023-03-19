import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveTest extends StatefulWidget {
  const RiveTest({Key? key}) : super(key: key);

  @override
  State<RiveTest> createState() => _RiveTestState();
}

class _RiveTestState extends State<RiveTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RiveAnimation.asset('assets/2907-6490-ruli-pointer-move.riv')
      ),
    );
  }
}
