// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pedometer/thirdPage/ThirdPage.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'firstPage/HelloScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: thirdPage(),
      );
    });
  }
}

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: HelloScreen(),
      backgroundColor: Colors.white,
      imageSrc: "images/Vector2.png",
      duration: 100,
      imageSize: 50,
      text: "Загрузка..",
      textStyle: TextStyle(fontFamily: 'Gilroy', fontSize: 24),
    );
  }
}
