import 'dart:async';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0;
  double _scale = 0.8;
  double _position = 30;

  @override
  void initState() {
    super.initState();

    // Start animation
    Future.delayed(Duration(milliseconds: 100), () {
      if (!mounted) return;
      setState(() {
        _opacity = 1;
        _scale = 1;
        _position = 0;
      });
    });

    // Navigate after 2 seconds
    Timer(Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // THEME CHANGED: serious emergency medical (deep red)
      backgroundColor: Color(0xFFB71C1C),
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 700),
          opacity: _opacity,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            transform: Matrix4.translationValues(0, _position, 0),
            child: AnimatedScale(
              duration: Duration(milliseconds: 1300),
              //curve: Curves.fastOutSlowIn,
              scale: _scale,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // LOGO CHANGED: hospital / emergency icon
                  Icon(
                    Icons.emergency,
                    size: 110,
                    color: Colors.white,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Flash Aid",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
