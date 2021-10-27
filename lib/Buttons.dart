// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, unrelated_type_equality_checks
import 'package:flutter/material.dart';
import 'package:pedometer/colors.dart';

enum Gender { woman, man, other }

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var gender;
  var height = 120;
  var weight;
  var age = 12;
  // void changeColor1() {
  //   setState(() {
  //     if (bottomColor1 == Color(0xffffffFF)) {
  //       bottomColor1 = Color(0xff5F6CFF);
  //       Text1 = Colors.white;
  //     } else if (bottomColor1 == Color(0xff5F6CFF)) {
  //       bottomColor1 = Color(0xffffffFF);
  //       Text1 = Colors.black;
  //     }
  //   });
  // }

  // void changeColor2() {
  //   setState(() {
  //     if (bottomColor2 == Color(0xffffffFF)) {
  //       bottomColor2 = Color(0xff5F6CFF);
  //       Text2 = Colors.white;
  //     } else if (bottomColor2 == Color(0xff5F6CFF)) {
  //       bottomColor2 = Color(0xffffffFF);
  //       Text2 = Colors.black;
  //     }
  //   });
  // }

  // void changeColor3() {
  //   setState(() {
  //     if (bottomColor3 == Color(0xffffffFF)) {
  //       bottomColor3 = Color(0xff5F6CFF);
  //       Text3 = Colors.white;
  //     } else if (bottomColor3 == Color(0xff5F6CFF)) {
  //       bottomColor3 = Color(0xffffffFF);
  //       Text3 = Colors.black;
  //     }
  //   });
  // }

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
                  // color: bottomColor1,
                  onPressed: () {
                    setState(() {
                      gender = Gender.man;
                      // changeColor1();
                    });
                  },
                  color: gender == Gender.man ? bottomColor2 : bottomColor1,
                  child: Text(
                    "Мужчина",
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      color: gender == Gender.man ? textColor2 : textColor1,
                    ),
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
                    setState(() {
                      gender = Gender.other;
                    });
                  },
                  color: gender == Gender.other ? bottomColor2 : bottomColor1,

                  child: Text(
                    "Другое",
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      color: gender == Gender.other ? textColor2 : textColor1,
                    ),
                  ),

                  // color: bottomColor2,
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
                    setState(() {
                      gender = Gender.woman;
                    });

                    // changeColor3();
                  },
                  color: gender == Gender.woman ? bottomColor2 : bottomColor1,
                  // color: bottomColor3,
                  child: Text(
                    "Девушка",
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      color: gender == Gender.woman ? textColor2 : textColor1,
                    ),
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
