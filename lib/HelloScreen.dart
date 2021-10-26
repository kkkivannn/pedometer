// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pedometer/Buttons.dart';
import 'package:pedometer/colors.dart';

class HelloScreen extends StatefulWidget {
  @override
  _HelloScreenState createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  void changeColor() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            alignment: Alignment(0, -0.6),
            child: Text(
              "Для работы с приложением заполни",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Gilroy2",
              ),
            ),
          ),
          Container(
            alignment: Alignment(0, -0.58),
            child: Text(
              "первичную информацию",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Gilroy2",
              ),
            ),
          ),
          Container(
            alignment: Alignment(0, -0.7),
            child: Text(
              "Привет!",
              style: TextStyle(
                fontFamily: "Gilroy",
                fontSize: 36,
              ),
            ),
          ),
          Buttons(),
        ]),
      ),
    );
  }
}
