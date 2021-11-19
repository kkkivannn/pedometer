// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pedometer/firstPage/Buttons.dart';
import 'package:pedometer/firstPage/HelloScreen.dart';
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
    final kal = storage.setDouble('Kal', Kal);
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
    final Height = storage.setInt('Height', height);
  }

  Future<void> Weight() async {
    final storage = await Storage;
    final Weight = storage.setInt('Weight', weight);
  }

  Future<void> Age() async {
    final storage = await Storage;
    final Age = storage.setInt('Age', age);
  }

  Future<void> Lsh() async {
    final storage = await Storage;
    final Lsh = storage.setDouble('Lsh', lsh);
  }

  Future<void> kal() async {
    final storage = await Storage;
    final kal = storage.setDouble('Kal', Kal);
  }

  Future<void> KM() async {
    final storage = await Storage;
    final KM = storage.setDouble('Km', km);
  }
}

// class FirstLogIn {
//   Future<void> checkLogin() async {
//     final storage = await Storage;
//     if (cheked = true) {
//       print(cheked);
//       Activity();
//     }
//   }
// }
// class FirstLogIn extends StatelessWidget {
//   final model = FirstLogIn();
//   void checkLogin() {
//     final storage = Storage;
//     if (cheked == true) {
//       print(cheked);
//       Activity();
//     } else if (cheked == false) {
//       HelloScreen();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     checkLogin();
//     return Container();
//   }
// }

late final checked;

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
