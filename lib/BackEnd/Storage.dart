// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:pedometer/firstPage/Buttons.dart';
import 'package:pedometer/firstPage/HelloScreen.dart';
import 'package:pedometer/firstPage/Parameters.dart';
import 'package:pedometer/scondPage/Parameters2.dart';
import 'package:pedometer/settingsFivesPage/Settings.dart';
import 'package:pedometer/thirdPage/thirdPageVTWO.dart';
import 'package:shared_preferences/shared_preferences.dart';

final Storage = SharedPreferences.getInstance();
double heightGet = 0;
double weightGet = 0;
dynamic ageGet;
dynamic stepsGet;
double kmGet = 0;
double kalGet = 0;
dynamic genderGet;
dynamic push;
dynamic pushGet;

class StorageModel {
  Future<void> SaveNextPageSet() async {
    final storage = await Storage;
    storage.setDouble('height', height);
    storage.setDouble('weight', weight);
    storage.setInt('age', age);
  }

  Future<void> SaveNextPageGet() async {
    final storage = await Storage;
    heightGet = storage.getDouble('height')!;
    weightGet = storage.getDouble('weight')!;
    ageGet = storage.getInt('age');
  }

  Future<void> SaveReadySet() async {
    final storage = await Storage;
    storage.setInt('step', step);
    storage.setDouble('km', km);
    storage.setDouble('kal', kal);
    storage.setDouble('lsh', lsh);
  }

  Future<void> SaveReadyGet() async {
    final storage = await Storage;
    stepsGet = storage.getInt('step');
    kmGet = storage.getDouble('km')!;
    kalGet = storage.getDouble('kal')!;
    lshGet = storage.getDouble('lsh');
  }

  Future<void> StepSet() async {
    final storage = await Storage;
    storage.setInt('step', step);
  }

  Future<void> StepGet() async {
    final storage = await Storage;
    stepsGet = storage.getInt('step');
  }

  Future<void> HeightSet() async {
    final storage = await Storage;
    storage.setDouble('height', height);
  }

  Future<void> HeightGet() async {
    final storage = await Storage;
    heightGet = storage.getDouble('height')!;
  }

  Future<void> WeightSet() async {
    final storage = await Storage;
    storage.setDouble('weight', weight);
  }

  Future<void> WeightGet() async {
    final storage = await Storage;
    weightGet = storage.getDouble('weight')!;
  }

  Future<void> AgeSet() async {
    final storage = await Storage;
    storage.setInt('age', age);
  }

  Future<void> AgeGet() async {
    final storage = await Storage;
    ageGet = storage.getInt('age');
  }

  Future<void> LshSet() async {
    final storage = await Storage;
    storage.setDouble('lsh', lsh);
  }

  Future<void> LshGet() async {
    final storage = await Storage;
    lshGet = storage.getDouble('lsh');
  }

  Future<void> KalSet() async {
    final storage = await Storage;
    storage.setDouble('kal', kal);
  }

  Future<void> KalGet() async {
    final storage = await Storage;
    kalGet = storage.getDouble('kal')!;
  }

  Future<void> KmSet() async {
    final storage = await Storage;
    storage.setDouble('km', km);
  }

  Future<void> KmGet() async {
    final storage = await Storage;
    kmGet = storage.getDouble('km')!;
  }

  Future<void> GenderSet() async {
    final storage = await Storage;
    storage.setInt('gender', gender);
  }

  Future<void> GenderGet() async {
    final storage = await Storage;
    genderGet = storage.getInt('gender');
  }

  Future<void> SetFlag() async {
    final storage = await Storage;
    storage.setInt('push', push);
  }

  Future<void> GetFlag() async {
    final storage = await Storage;
    pushGet = storage.getInt('push');
  }
}

late final checked;
dynamic lshGet;
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
