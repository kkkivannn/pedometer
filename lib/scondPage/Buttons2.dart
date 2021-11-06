// ignore_for_file: file_names, prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:pedometer/thirdPage/thirdPageVTWO.dart';
// import 'package:sizer/sizer.dart';

class ButtonReady extends StatefulWidget {
  @override
  _ButtonReadyState createState() => _ButtonReadyState();
}

class _ButtonReadyState extends State<ButtonReady> {
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Activity()));
                },
                child: Text(
                  "Готово!\n2/2",
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
