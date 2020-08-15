import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_calculator/screens/home_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  startTimer(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Lottie.asset('animation/loading.json', onLoaded: (composition) {
        startTimer(context);
      }),
    );
  }
}
