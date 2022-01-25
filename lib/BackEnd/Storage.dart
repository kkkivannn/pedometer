// ignore_for_file: file_names, prefer_typing_uninitialized_variables

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
int achivmentCount = stepsBox.get('achivmentCount', defaultValue: 0);
double KalTodaySaved = stepsBox.get('KalTodaySaved', defaultValue: 0.0);
double KmTodaySaved = stepsBox.get('KmTodaySaved', defaultValue: 0.0);
int iForCountStep = stepsBox.get('iForCount', defaultValue: 5000);
int iForCountKm = stepsBox.get('iForCountKm', defaultValue: 5);

dynamic getTime;
dynamic getTime2;
dynamic time = 2;
dynamic time2 = 2;

// late int steps;

class StorageModel {
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
