// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, unrelated_type_equality_checks, dead_code
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer2/BackEnd/Storage.dart';
import 'package:pedometer2/firstPage/colors.dart';

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  final model = StorageModel();
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
                      gender = 1;
                    });
                  },
                  color: gender == 1 ? bottomColor2 : bottomColor1,
                  child: Text(
                    "text3".tr().toString(),
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      fontSize: 14,
                      color: gender == 1 ? textColor2 : textColor1,
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
                      gender = 2;
                    });
                  },
                  color: gender == 2 ? bottomColor2 : bottomColor1,
                  child: Text(
                    "text4".tr().toString(),
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      fontSize: 14,
                      color: gender == 2 ? textColor2 : textColor1,
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
                      gender = 3;
                    });
                  },
                  color: gender == 3 ? bottomColor2 : bottomColor1,
                  child: Text(
                    "text5".tr().toString(),
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      fontSize: 14,
                      color: gender == 3 ? textColor2 : textColor1,
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
