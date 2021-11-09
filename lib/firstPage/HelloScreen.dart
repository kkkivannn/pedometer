// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, deprecated_member_use

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer/firstPage/Buttons.dart';
import 'package:pedometer/firstPage/NextPage.dart';
import 'package:pedometer/firstPage/Parameters.dart';

class HelloScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Spacer(
              flex: 4,
            ),
            Text(
              'text1'.tr().toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Gilroy",
                fontSize: 36,
              ),
            ),
            Text(
              'text2'.tr().toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Gilroy2",
              ),
            ),
            Spacer(
              flex: 4,
            ),
            Buttons(),
            param(),
            Spacer(
              flex: 2,
            ),
            NextButton(),
            Spacer(),
          ],
        ),
      )),
    );
  }
}
