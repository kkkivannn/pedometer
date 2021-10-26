// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:pedometer/colors.dart';

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  void changeColor1() {
    setState(() {
      if (bottomColor1 == Color(0xffffffFF)) {
        bottomColor1 = Color(0xff5F6CFF);
        Text1 = Colors.white;
      } else if (bottomColor1 == Color(0xff5F6CFF)) {
        bottomColor1 = Color(0xffffffFF);
        Text1 = Colors.black;
      }
    });
  }

  void changeColor2() {
    setState(() {
      if (bottomColor2 == Color(0xffffffFF)) {
        bottomColor2 = Color(0xff5F6CFF);
        Text2 = Colors.white;
      } else if (bottomColor2 == Color(0xff5F6CFF)) {
        bottomColor2 = Color(0xffffffFF);
        Text2 = Colors.black;
      }
    });
  }

  void changeColor3() {
    setState(() {
      if (bottomColor3 == Color(0xffffffFF)) {
        bottomColor3 = Color(0xff5F6CFF);
        Text3 = Colors.white;
      } else if (bottomColor3 == Color(0xff5F6CFF)) {
        bottomColor3 = Color(0xffffffFF);
        Text3 = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment(0, 0),
              child: ButtonTheme(
                height: 42,
                minWidth: 106,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  color: bottomColor1,
                  onPressed: () {
                    setState(() {
                      changeColor1();
                    });
                  },
                  child: Text(
                    "Мужчина",
                    style: TextStyle(fontFamily: "Gilroy2", color: Text1),
                  ),
                ),
              )),
          Align(
              alignment: Alignment(0.65, 0),
              child: ButtonTheme(
                height: 42,
                minWidth: 106,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  onPressed: () {
                    changeColor2();
                  },
                  child: Text(
                    "Другое",
                    style: TextStyle(fontFamily: "Gilroy2", color: Text2),
                  ),
                  color: bottomColor2,
                ),
              )),
          Align(
              alignment: Alignment(-0.65, 0),
              child: ButtonTheme(
                height: 42,
                minWidth: 106,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  onPressed: () {
                    changeColor3();
                  },
                  color: bottomColor3,
                  child: Text(
                    "Девушка",
                    style: TextStyle(fontFamily: "Gilroy2", color: Text3),
                  ),
                ),
              )),
          Container(
            alignment: Alignment(0, 0.8),
            child: ButtonTheme(
              height: 65,
              minWidth: 343,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                onPressed: () {},
                child: Text(
                  "Следующий этап",
                  style: TextStyle(
                      fontFamily: "Gilroy2", fontSize: 18, color: Colors.white),
                ),
                color: Color(0xff5F6CFF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
