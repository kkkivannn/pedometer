// ignore_for_file: file_names, prefer_const_constructors

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer/firstPage/Buttons.dart';
import 'package:pedometer/firstPage/Parameters.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'dart:async';

class Parameters2 extends StatefulWidget {
  @override
  _Parameters2State createState() => _Parameters2State();
}

late double lsh;
var Kal;
var km;
var step;
var kkal;

void Steps() {
  if (age <= 18) {
    step = 15000;
  } else if (age > 18 && age <= 40) {
    step = 12000;
  } else if (age > 40 && age <= 50) {
    step = 12000;
  } else if (age > 50 && age <= 60) {
    step = 11000;
  } else if (age > 60) {
    step = 11000;
  }
}

void Put() {
  km = (step * lsh) / 100000;
}

void Lsh() {
  int i = 120;
  if (gender == Gender.man) {
    for (var i = 120; i < height; i++) {
      lsh += 0.3;
    }
  } else if (gender == Gender.woman) {
    for (var i = 120; i < height; i++) {
      lsh += 0.3;
    }
  } else if (gender == Gender.other) {
    for (var i = 120; i < height; i++) {
      lsh += 0.3;
    }
  }
}

void LshFirstPage() {
  int i = 120;
  if (gender == Gender.man) {
    lsh = 59.0;
  } else if (gender == Gender.woman) {
    lsh = 57.0;
  } else if (gender == Gender.other) {
    lsh = 58.0;
  }
}

void Kkal() {
  var k = 1;
  Kal = ((k * weight * step * lsh).round()) / 100000;
}

class _Parameters2State extends State<Parameters2> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   userAccelerometerEvents.listen((UserAccelerometerEvent event) {
  //     setState(() {
  //       x = event.x;
  //       y = event.y;
  //       z = event.z;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 200,
        width: 390,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 42,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), color: Colors.white),
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 34),
                    child: Text(
                      'text12'.tr().toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Gilroy2',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(right: 34),
                    alignment: Alignment.center,
                    child: Text(
                      '$step',
                      style: TextStyle(
                          color: Color(0xff5F6CFF),
                          fontSize: 18,
                          fontFamily: 'Gilroy'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 42,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 34),
                      child: Text(
                        "text13".tr().toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Gilroy2',
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(right: 34),
                      child: Text(
                        Kal.toStringAsFixed(0),
                        style: TextStyle(
                            color: Color(0xff5F6CFF),
                            fontSize: 18,
                            fontFamily: 'Gilroy'),
                      ),
                    ),
                  ],
                )),
            Container(
              height: 42,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), color: Colors.white),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 34),
                    child: Text(
                      'text14'.tr().toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Gilroy2',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(right: 34),
                    child: Text(
                      '$km',
                      style: TextStyle(
                          color: Color(0xff5F6CFF),
                          fontSize: 18,
                          fontFamily: 'Gilroy'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
