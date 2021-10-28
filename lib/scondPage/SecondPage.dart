//Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';

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
        child: Stack(children: <Widget>[
          Container(
            alignment: Alignment(0, -0.6),
            child: Text(
              "Исходя из ваших данных мы подобрали",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Gilroy2",
              ),
            ),
          ),
          Container(
            alignment: Alignment(-0.15, -0.57),
            child: Text(
              'для вас цели.',
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Gilroy2",
              ),
            ),
          ),
          Container(
            alignment: Alignment(0.185, -0.57),
            child: Text(
              "Их можно",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Gilroy2",
              ),
            ),
          ),
          Container(
            alignment: Alignment(0, -0.54),
            child: Text(
              "скорректировать:",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Gilroy2",
              ),
            ),
          ),
          Container(
            alignment: Alignment(0, -0.7),
            child: Text(
              "Совсем чуть-чуть",
              style: TextStyle(
                fontFamily: "Gilroy",
                fontSize: 36,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
