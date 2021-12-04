// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:pedometer/pedometer.dart';
import 'package:jiffy/jiffy.dart';

import 'package:pedometer2/BackEnd/Storage.dart';
import 'package:permission_handler/permission_handler.dart';

class DailySteps extends StatefulWidget {
  @override
  _DailyStepsState createState() => _DailyStepsState();
}

final model = Steps();

var status = Permission.sensors.status;

class _DailyStepsState extends State<DailySteps> {
  Pedometer _pedometer = new Pedometer();
  late StreamSubscription<int> _subscription;
  dynamic todaySteps;
  late Stream<StepCount> _stepCountStream;
  // var _steps;

  // late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  String _status = '?', _steps = '?';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void onStepCount(StepCount event) {
    print(event);
    setState(() {
      _steps = event.steps.toString();
    });
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
    setState(() {
      _status = event.status;
    });
  }

  void onPedestrianStatusError(error) {
    print('onPedestrianStatusError: $error');
    setState(() {
      _status = 'Pedestrian Status not available';
    });
    print(_status);
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    setState(() {
      _steps = 'Step Count not available';
    });
  }

  Future<void> initPlatformState() async {
    var status = await Permission.activityRecognition.status;
    if (!status.isGranted) {
      await Permission.activityRecognition.request();
    }
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount);

    if (!mounted) return;
  }

  // @override
  // void dispose() {
  //   stopListening();
  //   super.dispose();
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   startListening();
  // }

  // void startListening() {
  //   // _subscription = _stepCountStream.listen(
  //   //   getTodaySteps,
  //   //   onError: _onError,
  //   //   onDone: _onDone,
  //   //   cancelOnError: true,
  //   // ) as StreamSubscription<int>;
  //   _stepCountStream = Pedometer.stepCountStream;
  //   _stepCountStream.listen(onStepCount).onError(onStepCountError);
  //   getTodaySteps;
  // }

  // void onStepCountError(error) {
  //   print('onStepCountError: $error');

  // }

  // void onStepCount(StepCount event) {
  //   print(event);
  //   setState(() {
  //     _steps = event.steps.toString();
  //   });
  // }

  // // void _onError(error) => print("Flutter Pedometer Error: $error");

  // Future<int> getTodaySteps(dynamic value) async {
  //   model.StepsGet();
  //   // int savedStepsCountKey = 999999;
  //   // int savedStepsCount = stepsBox.get(savedStepsCountKey, defaultValue: 0);

  //   int todayDayNo = Jiffy(DateTime.now()).dayOfYear;
  //   if (value < StepsCount) {
  //     // Upon device reboot, pedometer resets. When this happens, the saved counter must be reset as well.
  //     StepsCount = 0;
  //     // persist this value using a package of your choice here
  //     model.StepsSet();
  //     // stepsBox.put(savedStepsCountKey, savedStepsCount);
  //   }

  //   // load the last day saved using a package of your choice here
  //   // int lastDaySavedKey = 888888;
  //   // int lastDaySaved = stepsBox.get(lastDaySavedKey, defaultValue: 0);
  //   model.DayGet();

  //   // When the day changes, reset the daily steps count
  //   // and Update the last day saved as the day changes.
  //   if (lastDaySaved < todayDayNo) {
  //     lastDaySaved = todayDayNo;
  //     savedStepsCount = value;
  //     model.DaySet();
  //     model.StepsSet();
  //     // stepsBox
  //     //   ..put(lastDaySavedKey, lastDaySaved)
  //     //   ..put(savedStepsCountKey, savedStepsCount);
  //   }

  //   setState(() {
  //     todaySteps = value - savedStepsCount;
  //   });
  //   // stepsBox.put(todayDayNo, todaySteps);
  //   return todaySteps; // this is your daily steps value.
  // }

  // void stopListening() {
  //   _subscription.cancel();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Text(
            '$_steps',
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
// void jdhhgd(){
//   if (ContextCompat.checkSelfPermission(thisActivity, Manifest.permission.ACTIVITY_RECOGNITION)
//           != PackageManager.PERMISSION_GRANTED) {
//       // Permission is not granted
// }
// }
