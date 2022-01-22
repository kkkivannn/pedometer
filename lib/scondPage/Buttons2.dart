// ignore_for_file: file_names, prefer_const_constructors, dead_code, implementation_imports, deprecated_member_use, use_key_in_widget_constructors

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer2/BackEnd/Storage.dart';
import 'package:pedometer2/thirdPage/stepCount.dart';

class ButtonReady extends StatefulWidget {
  @override
  _ButtonReadyState createState() => _ButtonReadyState();
}

class _ButtonReadyState extends State<ButtonReady> {
  final model = StorageModel();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment(0, 0.9),
            child: ButtonTheme(
              height: 65,
              minWidth: 343,
              child: RaisedButton(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                onPressed: () {
                  setState(() {
                    model.SaveReady();
                    model.SetFlag();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DailySteps()));
                  });
                },
                child: Text(
                  "text15".tr().toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Gilroy2", fontSize: 18, color: Colors.white),
                ),
                color: Color(0xff5F6CFF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
