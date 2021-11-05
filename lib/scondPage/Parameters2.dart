// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pedometer/firstPage/Buttons.dart';
import 'package:pedometer/firstPage/Parameters.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'dart:async';
// import 'package:sizer/sizer.dart';

class Parameters2 extends StatefulWidget {
  @override
  _Parameters2State createState() => _Parameters2State();
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

  void Put() {
    _km = (step * lsh) / 100000;
  }

  void Step() {
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

  var lsh = 59.0;
  var Q;
  var _km;
  void Lsh() {
    if (gender == Gender.man) {
      for (var i = 120; i > height; i++) {
        lsh += 0.3;
      }
    } else if (gender == Gender.woman) {
      lsh = 57;
      for (var i = 120; i > height; i++) {
        lsh += 0.3;
      }
    } else if (gender == Gender.other) {
      lsh = 58;
      for (var i = 120; i > height; i++) {
        lsh += 0.3;
      }
    }
  }

  void Kkal() {
    var k = 1.15;
    Q = k * weight * step * lsh / 100000;
  }

  var x;
  var y;
  var z;

  var step;
  var kkal;
  var km;

  @override
  Widget build(BuildContext context) {
    Step();
    Lsh();
    Kkal();
    Put();
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
                      'Количество шагов',
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
                      '${step}',
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
                        "Количество сожженых ккал",
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
                        Q.toStringAsFixed(0),
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
                      'Количество километров',
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
                      '$_km',
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
