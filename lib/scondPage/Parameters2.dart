// ignore_for_file: file_names, prefer_const_constructors

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer/BackEnd/Storage.dart';
import 'package:pedometer/firstPage/Buttons.dart';
import 'package:pedometer/firstPage/Parameters.dart';

class Parameters2 extends StatefulWidget {
  @override
  _Parameters2State createState() => _Parameters2State();
}

final model = StorageModel();

var lsh;
var kal;
var km;
var step;

void StepsNextPage() {
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

void Km() {
  km = step * lsh / 100000;
}

void Lsh() {
  int i = 120;
  if (gender == 1) {
    for (var i = 120; i < height; i++) {
      lsh += 0.3;
    }
  } else if (gender == 2) {
    for (var i = 120; i < height; i++) {
      lsh += 0.3;
    }
  } else if (gender == 3) {
    for (var i = 120; i < height; i++) {
      lsh += 0.3;
    }
  }
  Km();
  model.KmSet();
  model.KmGet();
}

void LshNextPage() {
  int i = 120;
  if (gender == 1) {
    for (var i = 120; i < height; i++) {
      lsh += 0.3;
    }
  } else if (gender == 2) {
    for (var i = 120; i < height; i++) {
      lsh += 0.3;
    }
  } else if (gender == 3) {
    for (var i = 120; i < height; i++) {
      lsh += 0.3;
    }
  }
}

void LshForGender() {
  int i = 120;
  if (gender == 1) {
    for (var i = 120; i < heightGet; i++) {
      lsh += 0.3;
    }
  } else if (gender == 2) {
    for (var i = 120; i < heightGet; i++) {
      lsh += 0.3;
    }
  } else if (gender == 3) {
    for (var i = 120; i < heightGet; i++) {
      lsh += 0.3;
    }
  }
}

void LshFirstPage() {
  if (gender == 1) {
    lsh = 59.0;
  } else if (gender == 2) {
    lsh = 57.0;
  } else if (gender == 3) {
    lsh = 58.0;
  }
}

void Kkal() {
  var k = 0.8;
  kal = k * weight * step * lsh / 100000;
}

class _Parameters2State extends State<Parameters2> {
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
                        kal.toStringAsFixed(1),
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
                      km.toStringAsFixed(1),
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
