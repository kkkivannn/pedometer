//Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pedometer/scondPage/Parameters2.dart';
import 'Buttons2.dart';
// import 'package:sizer/sizer.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Spacer(flex: 4),
              Container(
                child: Text(
                  "Совсем чуть-чуть",
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 36,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Исходя из ваших данных мы подобрали\nдля вас цели. Их можно\nскорректировать:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Gilroy2",
                  ),
                ),
              ),
              Spacer(
                flex: 4,
              ),
              Parameters2(),
              Spacer(),
              Spacer(
                flex: 2,
              ),
              ButtonReady(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
