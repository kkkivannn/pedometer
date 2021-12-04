//Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer2/scondPage/Parameters2.dart';
import 'Buttons2.dart';
// import 'package:sizer/sizer.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Spacer(flex: 4),
              Container(
                child: Text(
                  "text10".tr().toString(),
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 36,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "text11".tr().toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Gilroy2",
                  ),
                ),
              ),
              Spacer(
                flex: 4,
              ),
              Parameters2(),
              Spacer(),
              Spacer(
                flex: 2,
              ),
              ButtonReady(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
