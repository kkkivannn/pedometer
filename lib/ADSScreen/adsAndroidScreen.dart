// ignore_for_file: file_names

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
                  padding: EdgeInsets.only(),
                  child: Text(
                    'X',
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
