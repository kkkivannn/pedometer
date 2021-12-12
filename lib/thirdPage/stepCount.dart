// ignore_for_file: file_names, prefer_const_constructors

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'dart:async';
import 'package:pedometer/pedometer.dart';
import 'package:jiffy/jiffy.dart';
import 'package:pedometer2/BackEnd/Storage.dart';
import 'package:pedometer2/settingsFivesPage/Settings.dart';
import 'package:permission_handler/permission_handler.dart';

import 'Activitys.dart';
import 'Ads.dart';
import 'Statistics.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DailySteps extends StatefulWidget {
  @override
  _DailyStepsState createState() => _DailyStepsState();
}

dynamic todaySteps = 0;
var status = Permission.sensors.status;
final model = StorageModel();

class _DailyStepsState extends State<DailySteps> {
  final stepCountStream = Pedometer.stepCountStream;
  late StreamSubscription<StepCount> _subscription;
  late Stream<StepCount> _stepCountStreamState;
  Box<int> stepsBox = Hive.box('steps');

  late int _steps;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  @override
  void dispose() {
    stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff5F6CFF),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25, right: 25, top: 10),
                    child: Row(
                      children: [
                        Text(
                          'text16'.tr().toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Gilroy2',
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              model.SaveNextPageGet();
                              model.SaveReadyGet();
                              model.GenderGet();
                              model.GetFlag();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => settingPage()));
                            });
                          },
                          icon: Image.asset(
                            'icons/settings2.png',
                            color: Colors.white,
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 475,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 99,
                          width: 99,
                          child: CircularPercentIndicator(
                              radius: 99,
                              animation: true,
                              animationDuration: 1500,
                              percent: value,
                              progressColor: Color(0xff414DD5),
                              backgroundColor: Color(0xffE8E8E8),
                              lineWidth: 9,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Stack(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        child: CustomPaint(
                                          painter: MyPainter(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Spacer(
                                        flex: 2,
                                      ),
                                      Spacer(),
                                      Image(
                                        image: AssetImage("images/Step.png"),
                                      ),
                                      Spacer(),
                                      Text(
                                        '$todaySteps',
                                        style: TextStyle(
                                            color: Color(0xff414DD5),
                                            fontFamily: "Gilroy",
                                            fontSize: 16),
                                      ),
                                      Spacer(
                                        flex: 2,
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                        Container(
                          height: 99,
                          width: 99,
                          child: CustomPaint(
                            painter: MyPainter2(),
                          ),
                        ),
                        Container(
                          height: 99,
                          width: 99,
                          child: CustomPaint(
                            painter: MyPainter3(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            statics(),
            ADS(),
          ],
        ),
      ),
    );
  }

  void initPlatformState() {
    _subscription = stepCountStream.listen(
      getTodaySteps,
      cancelOnError: true,
    );

    if (!mounted) return;
  }

  Future<int> getTodaySteps(StepCount value) async {
    _steps = value.steps;
    int savedStepsCountKey = 999999;
    int savedStepsCount = stepsBox.get(savedStepsCountKey, defaultValue: 0)!;
    int todayDayNow = Jiffy(DateTime.now()).dayOfYear;
    if (_steps < savedStepsCount) {
      setState(() {
        savedStepsCount = 0;
        stepsBox.put(savedStepsCountKey, savedStepsCount);
      });
    }
    int lastDaySavedKey = 888888;
    int lastDaySaved = stepsBox.get(lastDaySavedKey, defaultValue: 0)!;
    if (lastDaySaved < todayDayNow) {
      setState(() {
        lastDaySaved = todayDayNow;
        savedStepsCount = _steps;
        stepsBox
          ..put(lastDaySavedKey, lastDaySaved)
          ..put(savedStepsCountKey, savedStepsCount);
      });
    }

    setState(() {
      todaySteps = _steps - savedStepsCount;
    });
    stepsBox.put(todayDayNow, todaySteps);
    culculatePuts();
    return todaySteps;
  }

  void stopListening() {
    _subscription.cancel();
  }

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     body: Center(
  //       child: Container(
  //         child: Text(
  //           '$todaySteps',
  //           style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 20,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
