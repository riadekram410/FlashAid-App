import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:ambulance/signup_page.dart';
//import 'package:ambulance/splash_screen.dart';

import 'service.dart';
import 'account.dart';




//import 'home_page.dart';
//import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   AccountPage(),
    );
  }
}