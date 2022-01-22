// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, unused_element, avoid_print, prefer_typing_uninitialized_variables

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pedometer2/BackEnd/Storage.dart';

class param extends StatefulWidget {
  @override
  _paramState createState() => _paramState();
}

class _paramState extends State<param> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 390,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 42,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), color: Colors.white),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 34),
                    child: Text(
                      'text6'.tr().toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Gilroy2',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 40,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (height <= 120) {
                            height = 120;
                          } else
                            height--;
                        });
                      },
                      icon: Image.asset(
                        'icons/minus3.png',
                        width: 14,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    alignment: Alignment.center,
                    child: Text(
                      '$height',
                      style: TextStyle(
                          color: Color(0xff5F6CFF),
                          fontSize: 18,
                          fontFamily: 'Gilroy'),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          height += 1;
                        });
                      },
                      icon: Icon(Icons.add_sharp),
                      iconSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 42,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), color: Colors.white),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 34),
                    child: Text(
                      "text7".tr().toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Gilroy2',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 40,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (weight <= 50) {
                            weight = 50;
                          } else {
                            weight--;
                          }
                        });
                      },
                      icon: Image.asset(
                        'icons/minus3.png',
                        width: 14,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    child: Text(
                      '${weight}',
                      style: TextStyle(
                          color: Color(0xff5F6CFF),
                          fontSize: 18,
                          fontFamily: 'Gilroy'),
                    ),
                  ),
                  Container(
                    width: 40,
                    alignment: Alignment(0, 0),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          weight++;
                        });
                      },
                      icon: Icon(Icons.add_sharp),
                      iconSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 42,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), color: Colors.white),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 34),
                    child: Text(
                      'text8'.tr().toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Gilroy2',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 40,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (age <= 12) {
                            age = 12;
                          } else {
                            age--;
                          }
                        });
                      },
                      icon: Image.asset(
                        'icons/minus3.png',
                        width: 14,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    alignment: Alignment.center,
                    child: Text(
                      '${age}',
                      style: TextStyle(
                          color: Color(0xff5F6CFF),
                          fontSize: 18,
                          fontFamily: 'Gilroy'),
                    ),
                  ),
                  Container(
                    width: 40,
                    alignment: Alignment(0, 0),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          age++;
                        });
                      },
                      icon: Icon(Icons.add_sharp),
                      iconSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
