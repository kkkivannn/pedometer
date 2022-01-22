// ignore_for_file: file_names, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
// import 'package:pedometer2/firstPage/Buttons.dart';
// import 'package:pedometer2/firstPage/Parameters.dart';
// import 'package:pedometer2/scondPage/Parameters2.dart';
// import 'package:pedometer2/settingsFivesPage/Settings.dart';
// import 'package:pedometer2/thirdPage/stepCount.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Box<dynamic> stepsBox = Hive.box('steps');
final Storage = SharedPreferences.getInstance();

double height = stepsBox.get('height', defaultValue: 120.0);
double weight = stepsBox.get('weight', defaultValue: 50.0);
int age = stepsBox.get('age', defaultValue: 12);
int gender = stepsBox.get('gender', defaultValue: 0);
double lsh = stepsBox.get('lsh', defaultValue: 0.0);
double kal = stepsBox.get('kal', defaultValue: 0.0);
double km = stepsBox.get('km', defaultValue: 0.0);
int step = stepsBox.get('step', defaultValue: 0);
int push = stepsBox.get('push', defaultValue: 0);
double KmToday = stepsBox.get('KmToday', defaultValue: 0.0);
double valueKal = stepsBox.get('valueKal', defaultValue: 0.0);
double valueKm = stepsBox.get('valueKm', defaultValue: 0.0);

double KalTodaySaved = stepsBox.get('KalTodaySaved', defaultValue: 0.0);
double KmTodaySaved = stepsBox.get('KmTodaySaved', defaultValue: 0.0);

// dynamic stepsGet;
// double kmGet = 0;
// double kalGet = 0;
// dynamic genderGet;

// dynamic pushGet;
// dynamic Kg;
// dynamic CmHight;
// dynamic CmStep;
// dynamic foot;
// dynamic inch;
// dynamic mile;
// dynamic GetIs1;
// dynamic GetIs2;
// dynamic GetIs3;
// double lshGet = 0.0;
dynamic getTime;
dynamic getTime2;
dynamic time = 2;
dynamic time2 = 2;

late int steps;

class StorageModel {
  // Future<void> SaveNextPageSet() async {
  //   final storage = await Storage;
  //   storage.setDouble('height', height);
  //   storage.setDouble('weight', weight);
  //   storage.setInt('age', age);
  // }

//ИСПРАВЛЕНО
  Future<void> SaveNextPage() async {
    stepsBox
      ..put('height', height)
      ..put('weight', weight)
      ..put('age', age);
  }

  Future<void> Gender() async {
    stepsBox.put('gender', gender);
  }

  Future<void> SaveReady() async {
    stepsBox
      ..put('step', step)
      ..put('km', km)
      ..put('lsh', lsh)
      ..put('kal', kal);
  }

  Future<void> SetFlag() async {
    stepsBox.put('push', push);
  }
//ЕЩЕ НЕТ

  // Future<void> SaveReadyGet() async {
  //   final storage = await Storage;
  //   stepsGet = storage.getInt('step');
  //   kmGet = storage.getDouble('km')!;
  //   kalGet = storage.getDouble('kal')!;
  //   lshGet = storage.getDouble('lsh')!;
  // }

  // Future<void> StepSet() async {
  //   final storage = await Storage;
  //   storage.setInt('step', step);
  // }

  // Future<void> StepGet() async {
  //   final storage = await Storage;
  //   stepsGet = storage.getInt('step');
  // }

  // Future<void> HeightSet() async {
  //   final storage = await Storage;
  //   storage.setDouble('height', height);
  // }

  // Future<void> HeightGet() async {
  //   final storage = await Storage;
  //   heightGet = storage.getDouble('height')!;
  // }

  // Future<void> WeightSet() async {
  //   final storage = await Storage;
  //   storage.setDouble('weight', weight);
  // }

  // Future<void> WeightGet() async {
  //   final storage = await Storage;
  //   weightGet = storage.getDouble('weight')!;
  // }

  // Future<void> AgeSet() async {
  //   final storage = await Storage;
  //   storage.setInt('age', age);
  // }

  // Future<void> AgeGet() async {
  //   final storage = await Storage;
  //   ageGet = storage.getInt('age');
  // }

  // Future<void> LshSet() async {
  //   final storage = await Storage;
  //   storage.setDouble('lsh', lsh);
  // }

  // Future<void> LshGet() async {
  //   final storage = await Storage;
  //   lshGet = storage.getDouble('lsh')!;
  // }

  // Future<void> KalSet() async {
  //   final storage = await Storage;
  //   storage.setDouble('kal', kal);
  // }

  // Future<void> KalGet() async {
  //   final storage = await Storage;
  //   kalGet = storage.getDouble('kal')!;
  // }

  // Future<void> KmSet() async {
  //   final storage = await Storage;
  //   storage.setDouble('km', km);
  // }

  // Future<void> KmGet() async {
  //   final storage = await Storage;
  //   kmGet = storage.getDouble('km')!;
  //}

  // Future<void> GenderSet() async {
  //   final storage = await Storage;
  //   storage.setInt('gender', gender);
  // }

  // Future<void> GetFlag() async {
  //   final storage = await Storage;
  //   pushGet = storage.getInt('push');
  // }

  // Future<void> SetKmToday() async {
  //   final storage = await Storage;
  //   storage.setDouble("KmToday", KmToday);
  // }

  // Future<void> GetKmToday() async {
  //   final storage = await Storage;
  //   KmTodaySaved = storage.getDouble("KmToday");
  // }

  // Future<void> SetKalToday() async {
  //   final storage = await Storage;
  //   storage.setDouble("KalToday", KalToday);
  // }

  // Future<void> GetKalToday() async {
  //   final storage = await Storage;
  //   KalTodaySaved = storage.getDouble("KalToday");
  // }
}

class Time {
  final Storage = SharedPreferences.getInstance();
  Future<void> SetTime() async {
    final storage = await Storage;
    storage.setInt("time", time);
  }

  Future<void> GetTime() async {
    final storage = await Storage;
    getTime = storage.getInt("time");
  }
}

late final checked;
dynamic langGet;

class LogIn {
  final Storage = SharedPreferences.getInstance();

  Future<void> login() async {
    final storage = await Storage;
    checked = storage.getBool('checked') ?? true;
  }

  Future<void> Set() async {
    final storage = await Storage;
    storage.setBool('checked', false);
  }
}
