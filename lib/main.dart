// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pedometer/firstPage/Buttons.dart';
// import 'package:pedometer/scondPage/SecondPage.dart';

import 'package:splash_screen_view/SplashScreenView.dart';
import 'firstPage/HelloScreen.dart';
import 'settingsFivesPage/Settings.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:sizer/sizer.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:flutter_sizer/flutter_sizer.dart';

// import 'foorthPage/achievements.dart';
// import 'thirdPage/thirdPageVTWO.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: [
      Locale('en', 'RU'),
      Locale('en', 'EN'),
    ],
    path: 'assets/translate',
    saveLocale: true,
    // fallbackLocale: Locale('en', 'RU'),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
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
      text: "load".tr().toString(),
      textStyle: TextStyle(fontFamily: 'Gilroy', fontSize: 24),
    );
  }
}
