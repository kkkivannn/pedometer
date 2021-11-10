// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer/settingsFivesPage/Settings.dart';
import 'package:pedometer/thirdPage/Activitys.dart';
import 'package:pedometer/thirdPage/Ads.dart';
import 'package:pedometer/thirdPage/Statistics.dart';

class Activity extends StatefulWidget {
  @override
  ActivityState createState() => ActivityState();
}

class ActivityState extends State<Activity> {
  void settings() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => settingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              // width: 475,
              // height: 220,
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
                            settings();
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
            ADS(),
          ],
        ),
      ),
    );
  }
}