// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pedometer2/ADSScreen/add.dart';
import 'package:pedometer2/ADSScreen/adsIphoneScreen.dart';
import 'package:pedometer2/BackEnd/Storage.dart';
import 'package:pedometer2/foorthPage/achievements.dart';
import 'package:pedometer2/thirdPage/Ads.dart';
import 'package:pedometer2/thirdPage/stepCount.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'ADSScreen/adsAndroidScreen.dart';
import 'firstPage/HelloScreen.dart';
import 'settingsFivesPage/Settings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'thirdPage/thirdPageVTWO.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

final model2 = LogIn();

Future<void> check() async {
  var status = await Permission.activityRecognition.status;
  if (!status.isGranted) {
    Permission.activityRecognition.request();
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
      channelKey: 'key1',
      channelName: 'Name1',
      channelDescription: 'Example',
      defaultColor: Color(0xff9050dd),
      ledColor: Colors.white,
      playSound: true,
      enableLights: true,
      enableVibration: true,
      importance: NotificationImportance.High,
    ),
  ]);
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
      channelKey: 'key2',
      channelName: 'Name2',
      channelDescription: 'Example',
      defaultColor: Color(0xff9050dd),
      ledColor: Colors.white,
      playSound: true,
      enableLights: true,
      enableVibration: true,
      importance: NotificationImportance.High,
    ),
  ]);
  MobileAds.instance.initialize();
  model2.login();
  await Hive.initFlutter();
  var box = await Hive.openBox<dynamic>('steps');
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
    fallbackLocale: Locale('en', 'RU'),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

late BannerAd _bannerAd;
bool _isBannerAdReady = false;

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: NewAdd.bannerAdUnitId,
        listener: BannerAdListener(
          onAdLoaded: (_) {
            setState(() {
              _isBannerAdReady = true;
            });
          },
          onAdFailedToLoad: (ad, error) {
            print('Error 404!');
            _isBannerAdReady = false;
            ad.dispose();
          },
        ),
        request: AdRequest())
      ..load();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      // home: settingPage(),
      home: (checked) ? splashScreen() : splashScreen2(),
    );
  }
}

Widget splashScreen() {
  check();
  return SplashScreenView(
    navigateRoute: HelloScreen(),
    backgroundColor: Colors.white,
    imageSrc: "images/Vector2.png",
    duration: 100,
    imageSize: 50,
    textStyle: TextStyle(fontFamily: 'Gilroy', fontSize: 24),
  );
}

Widget splashScreen2() {
  check();
  return SplashScreenView(
    navigateRoute: DailySteps(),
    backgroundColor: Colors.white,
    imageSrc: "images/Vector2.png",
    duration: 100,
    imageSize: 50,
    textStyle: TextStyle(fontFamily: 'Gilroy', fontSize: 24),
  );
}

class ADS extends StatefulWidget {
  @override
  _ADSState createState() => _ADSState();
}

class _ADSState extends State<ADS> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (_isBannerAdReady)
          Expanded(
            child: Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(
                ad: _bannerAd,
              ),
            ),
          )
      ],
    );
  }
}
