// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, deprecated_member_use

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer2/BackEnd/Storage.dart';
import 'package:pedometer2/scondPage/Parameters2.dart';
import 'package:pedometer2/scondPage/SecondPage.dart';

class NextButton extends StatefulWidget {
  @override
  _NextButtonState createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  final model = StorageModel();
  final model2 = LogIn();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Container(
        alignment: Alignment(0, 0.9),
        child: ButtonTheme(
          height: 65,
          minWidth: 343,
          child: RaisedButton(
            elevation: 0.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            onPressed: () {
              model.SaveNextPage();
              model.Gender();
              push = 1;
              model2.Set();

              LshGet();
              // LshNextPage();
              StepsNextPage();
              Km();
              Kkal();

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            },
            child: Text(
              "text9".tr().toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Gilroy2",
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            color: Color(0xff5F6CFF),
          ),
        ),
      ),
    );
  }
}
