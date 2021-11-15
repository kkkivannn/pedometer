// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:pedometer/firstPage/Buttons.dart';
import 'package:pedometer/firstPage/Parameters.dart';
import 'package:pedometer/scondPage/Parameters2.dart';
import 'package:pedometer/settingsFivesPage/Settings.dart';
import 'package:pedometer/thirdPage/thirdPageVTWO.dart';
import 'package:shared_preferences/shared_preferences.dart';

final Storage = SharedPreferences.getInstance();

class StorageModel {
  Future<void> SaveNextPage() async {
    final storage = await Storage;
    final Height = storage.setInt('height', height);
    final Weight = storage.setInt('weight', weight);
    final Age = storage.setInt('age', age);
  }

  Future<void> SaveReady() async {
    final storage = await Storage;
    final Steps = storage.setInt('steps', step);
    final Km = storage.setDouble('km', km);
    final q = storage.setDouble('q', Q);
  }

  // Future<void> Print() async {
  //   final storage = await _storage;
  //   final Height = storage.getInt('height');
  //   print(Height);
  // }
  Future<void> check() async {
    final storage = await Storage;
    if (storage.containsKey('height')) {
      Activity();
    }
  }

  Future<void> Step() async {
    final storage = await Storage;
    final Steps = storage.setInt('steps', step);
  }

  Future<void> Height() async {
    final storage = await Storage;
    final Steps = storage.setInt('height', height);
  }

  Future<void> Weight() async {
    final storage = await Storage;
    final Weight = storage.setInt('weight', weight);
  }

  Future<void> Age() async {
    final storage = await Storage;
    final Age = storage.setInt('age', age);
  }
}
