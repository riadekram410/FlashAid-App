import 'dart:async';
import 'package:ambulance/signup_page.dart';
import 'package:ambulance/splash_screen.dart';
import 'package:flutter/material.dart';


import 'welcome_page.dart';
import 'login_page.dart';

void main() {
  runApp(FlashAid());
}

class FlashAid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   SplashScreen(),
    );
  }
}



