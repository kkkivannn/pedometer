// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, unrelated_type_equality_checks
import 'package:flutter/material.dart';
import 'package:pedometer/firstPage/colors.dart';
import 'package:pedometer/scondPage/SecondPage.dart';

enum Gender { woman, man, other }

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

var gender;

class _ButtonsState extends State<Buttons> {
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
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  onPressed: () {
                    setState(() {
                      gender = Gender.man;
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
                  elevation: 0.0,
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
                ),
              )),
          Align(
              alignment: Alignment(-0.65, 0),
              child: ButtonTheme(
                height: 42,
                minWidth: 106,
                child: RaisedButton(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  onPressed: () {
                    setState(() {
                      gender = Gender.woman;
                    });
                  },
                  color: gender == Gender.woman ? bottomColor2 : bottomColor1,
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
            alignment: Alignment(0, 0.9),
            child: ButtonTheme(
              height: 65,
              minWidth: 343,
              child: RaisedButton(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Text(
                  "Следующий этап",
                  style: TextStyle(
                      fontFamily: "Gilroy2", fontSize: 18, color: Colors.white),
                ),
                color: Color(0xff5F6CFF),
              ),
            ),
          ),
          Container(
            alignment: Alignment(0, 0.885),
            child: Text(
              '1/2',
              style: TextStyle(
                  color: Color(0xff9FA6F0),
                  fontFamily: 'Gilroy2',
                  fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
