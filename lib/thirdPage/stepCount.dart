// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'dart:async';
import 'package:pedometer/pedometer.dart';
import 'package:jiffy/jiffy.dart';
import 'package:permission_handler/permission_handler.dart';

class DailySteps extends StatefulWidget {
  @override
  _DailyStepsState createState() => _DailyStepsState();
}

int todaySteps = 0;

// final model = Steps();
var status = Permission.sensors.status;

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

  void initPlatformState() {
    // var status = await Permission.activityRecognition.status;
    // if (!status.isGranted) {
    //   await Permission.activityRecognition.request();
    // }

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
    return todaySteps;
  }

  void stopListening() {
    _subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Text(
            '$todaySteps',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
