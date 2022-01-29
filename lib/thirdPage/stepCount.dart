// ignore_for_file: file_names, prefer_const_constructors, must_call_super, non_constant_identifier_names, unused_field
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'dart:async';
import 'package:pedometer/pedometer.dart';
import 'package:jiffy/jiffy.dart';
import 'package:pedometer2/BackEnd/Storage.dart';
import 'package:pedometer2/main.dart';
import 'package:pedometer2/settingsFivesPage/Settings.dart';
import 'package:permission_handler/permission_handler.dart';
import 'Statistics.dart';

class DailySteps extends StatefulWidget {
  @override
  _DailyStepsState createState() => _DailyStepsState();
}

int todaySteps = 0;
var status = Permission.sensors.status;
final model = StorageModel();

int savedAllSteps = stepsBox.get('savedAllSteps', defaultValue: 0);
int savedCountofSteps = stepsBox.get('savedCountofSteps', defaultValue: 0);
double savedAverageSteps = stepsBox.get('savedAverageSteps', defaultValue: 0.0);
double savedAllKm = stepsBox.get('savedAllKm', defaultValue: 0.0);
double savedAllKal = stepsBox.get('savedAllKal', defaultValue: 0.0);

Box<dynamic> stepsBox = Hive.box('steps');

class _DailyStepsState extends State<DailySteps> {
  final stepCountStream = Pedometer.stepCountStream;
  late StreamSubscription<StepCount> _subscription;
  late Stream<StepCount> _stepCountStreamState;
  dynamic _steps;

  @override
  void initState() {
    initPlatformState();
  }

  @override
  void dispose() {
    stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // model.GetFlag();
    initPlatformState();
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80)),
                              ),
                              child: Column(
                                children: [
                                  Spacer(
                                    flex: 2,
                                  ),
                                  Container(
                                    child: Image.asset('images/Step.png'),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Text(
                                      "$todaySteps",
                                      style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontSize: 20,
                                        color: Color(0xff414DD4),
                                      ),
                                    ),
                                  ),
                                  Spacer(
                                    flex: 2,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80)),
                              ),
                              child: Column(
                                children: [
                                  Spacer(
                                    flex: 2,
                                  ),
                                  Container(
                                    child: Image.asset('images/Way.png'),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Text(
                                      "${KmTodaySaved.toStringAsFixed(2)}",
                                      style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontSize: 20,
                                        color: Color(0xff4FBD6E),
                                      ),
                                    ),
                                  ),
                                  Spacer(
                                    flex: 2,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80)),
                              ),
                              child: Column(
                                children: [
                                  Spacer(
                                    flex: 2,
                                  ),
                                  Container(
                                    child: Image.asset('images/fire.png'),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Text(
                                      "${KalTodaySaved.toStringAsFixed(0)}",
                                      style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontSize: 20,
                                        color: Color(0xffCC464E),
                                      ),
                                    ),
                                  ),
                                  Spacer(
                                    flex: 2,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            statics(),
            Spacer(),
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
    int savedStepsCount = stepsBox.get('savedStepsCountKey', defaultValue: 0)!;
    int todayDayNow = Jiffy(DateTime.now()).dayOfYear;
    int lastDaySaved = stepsBox.get('lastDaySavedKey', defaultValue: 0)!;

    if (_steps < savedStepsCount) {
      setState(() {
        savedStepsCount = 0;
        stepsBox.put('savedStepsCountKey', savedStepsCount);
      });
    }

    if (lastDaySaved < todayDayNow) {
      setState(() {
        savedCountofSteps++;
        savedAllSteps += todaySteps;
        savedAverageSteps = savedAllSteps / savedCountofSteps;
        lastDaySaved = todayDayNow;
        savedStepsCount = _steps;
        savedAllKm = savedAllKm + KmTodaySaved;
        savedAllKal += KalTodaySaved;
        stepsBox
          ..put('savedCountofSteps', savedCountofSteps)
          ..put('savedAllSteps', savedAllSteps)
          ..put('savedAverageSteps', savedAverageSteps)
          ..put('lastDaySavedKey', lastDaySaved)
          ..put('savedAllKm', savedAllKm)
          ..put('savedAllKal', savedAllKal)
          ..put('savedStepsCountKey', savedStepsCount);
      });
    }

    setState(() {
      todaySteps = _steps - savedStepsCount;
      CountOfSteps();
      culculateKL();
      culculateKM();
    });
    stepsBox.put(todayDayNow, todaySteps);

    return todaySteps;
  }

  void stopListening() {
    _subscription.cancel();
  }
}

void culculateKL() {
  var a = 0.8;
  KalTodaySaved = a * weight * todaySteps * lsh / 100000;
  stepsBox.put('KalTodaySaved', KalTodaySaved);
}

void CountOfSteps() {
  for (var i = iForCountStep; savedAllSteps >= i; i * 5) {
    if (savedAllSteps >= i) {
      achivmentCount++;
      stepsBox.put('achivmentCount', achivmentCount);
      stepsBox.put('iForCount', iForCountStep);
    }
  }
}

void CountOfKm() {
  for (var i = iForCountKm; savedAllKm >= i; i * 5) {
    if (savedAllKm >= i) {
      achivmentCount++;
      stepsBox.put('achivmentCount', achivmentCount);
      stepsBox.put('iForCountKm', iForCountKm);
    }
  }
}

void culculateKM() {
  KmTodaySaved = todaySteps * lsh / 100000;
  stepsBox.put('KmTodaySaved', KmTodaySaved);
}
