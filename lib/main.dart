import 'package:flutter/material.dart';
import 'package:travel_app/const.dart';
import 'package:travel_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trave App',
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: 'GTWalsheimPro',
      ),
      home: SplashScreen(),
    );
  }
}
