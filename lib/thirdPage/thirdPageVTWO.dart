// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

import 'package:pedometer2/BackEnd/Storage.dart';
import 'package:pedometer2/settingsFivesPage/Settings.dart';
import 'package:pedometer2/thirdPage/Activitys.dart';
import 'package:pedometer2/thirdPage/Ads.dart';
import 'package:pedometer2/thirdPage/Statistics.dart';
import 'package:pedometer2/thirdPage/stepCount.dart';

class Activity extends StatefulWidget {
  @override
  ActivityState createState() => ActivityState();
}

final model = StorageModel();

class ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff5F6CFF),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25, right: 25, top: 10),
                    child: Row(
                      children: [
                        Text(
                          'text16'.tr().toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Gilroy2',
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              model.SaveNextPageGet();
                              model.SaveReadyGet();
                              model.GenderGet();
                              model.GetFlag();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => settingPage()));
                            });
                          },
                          icon: Image.asset(
                            'icons/settings2.png',
                            color: Colors.white,
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 475,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 99,
                          width: 99,
                          child: CustomPaint(
                            painter: MyPainter(),
                          ),
                        ),
                        Container(
                          height: 99,
                          width: 99,
                          child: CustomPaint(
                            painter: MyPainter2(),
                          ),
                        ),
                        Container(
                          height: 99,
                          width: 99,
                          child: CustomPaint(
                            painter: MyPainter3(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            statics(),
          ],
        ),
      ),
    );
  }
}
