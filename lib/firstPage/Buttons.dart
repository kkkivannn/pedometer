// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, unrelated_type_equality_checks, dead_code
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer/firstPage/colors.dart';
import 'package:pedometer/scondPage/SecondPage.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
// import 'package:sizer/sizer.dart';

enum Gender { woman, man, other }

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

var gender;

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, -0.05),
      child: Container(
        height: 42,
        width: 380,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ButtonTheme(
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
                    "text3".tr().toString(),
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      fontSize: 14,
                      color: gender == Gender.man ? textColor2 : textColor1,
                    ),
                  ),
                ),
              ),
              ButtonTheme(
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
                    "text4".tr().toString(),
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      fontSize: 14,
                      color: gender == Gender.woman ? textColor2 : textColor1,
                    ),
                  ),
                ),
              ),
              ButtonTheme(
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
                    "text5".tr().toString(),
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      fontSize: 14,
                      color: gender == Gender.other ? textColor2 : textColor1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
