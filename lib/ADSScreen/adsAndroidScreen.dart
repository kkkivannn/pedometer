// ignore_for_file: file_names

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class adsAndroid extends StatefulWidget {
  const adsAndroid({Key? key}) : super(key: key);

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
                "text57".tr().toString(),
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
                "text57".tr().toString(),
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
