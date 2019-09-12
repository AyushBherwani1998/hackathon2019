import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hack19/homePage.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    startTimerForSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Image.asset('img/octopus.gif')));
  }

  startTimerForSplashScreen() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationToHomePage);
  }

  navigationToHomePage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
