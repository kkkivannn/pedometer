// ignore_for_file: file_names, prefer_const_constructors, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';

class adsAndroid extends StatefulWidget {
  @override
  _adsAndroidState createState() => _adsAndroidState();
}

class _adsAndroidState extends State<adsAndroid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff5F6CFF),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16, top: 25),
                  child: Text(
                    'X',
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(right: 16, top: 25),
                  child: Image(
                    height: 25,
                    width: 25,
                    color: Colors.white,
                    image: AssetImage('icons/settings2.png'),
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              child: Text(
                'Удалите рекламу',
                textAlign: TextAlign.center,
                // 'text58'.tr().toString(),
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              child: Text(
                'из приложения',
                textAlign: TextAlign.center,
                // 'text57'.tr().toString(),
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Spacer(),
            Container(
              child: Text(
                'Пользуйтесь приложением',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Gilroy2",
                  fontSize: 14,
                  color: Color(0xffD0D4FF),
                ),
              ),
            ),
            Container(
              child: Text(
                'без рекламы всего за',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Gilroy2",
                  fontSize: 14,
                  color: Color(0xffD0D4FF),
                ),
              ),
            ),
            Spacer(),
            Container(
                child: Text(
              "190 рублей в месяц",
              style: TextStyle(
                fontFamily: "Gilroy",
                fontSize: 24,
                color: Color(
                  0xffffffff,
                ),
              ),
            )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
