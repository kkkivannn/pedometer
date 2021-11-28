// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:pedometer/BackEnd/Storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'ADSScreen/adsAndroidScreen.dart';
import 'firstPage/HelloScreen.dart';
import 'settingsFivesPage/Settings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'thirdPage/thirdPageVTWO.dart';

final model2 = LogIn();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  model2.login();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: [
      Locale('en', 'RU'),
      Locale('en', 'EN'),
      Locale('en', 'DE'),
      Locale('en', 'IT'),
      Locale('en', 'IN'),
      Locale('en', 'PL'),
      Locale('en', 'FR'),
      Locale('en', 'ES'),
      Locale('en', 'PT'),
      Locale('en', 'TR'),
    ],
    path: 'assets/translate',
    fallbackLocale: Locale('en', 'EN'),
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
      // home: adsAndroid(),
      home: (checked) ? splashScreen() : splashScreen2(),
    );
  }
}

Widget splashScreen() {
  return SplashScreenView(
    navigateRoute: HelloScreen(),
    backgroundColor: Colors.white,
    imageSrc: "images/Vector2.png",
    duration: 100,
    imageSize: 50,
    // text: 'load'.tr().toString(),
    textStyle: TextStyle(fontFamily: 'Gilroy', fontSize: 24),
  );
}

Widget splashScreen2() {
  return SplashScreenView(
    navigateRoute: Activity(),
    backgroundColor: Colors.white,
    imageSrc: "images/Vector2.png",
    duration: 100,
    imageSize: 50,
    // text: 'load'.tr().toString(),
    textStyle: TextStyle(fontFamily: 'Gilroy', fontSize: 24),
  );
}
