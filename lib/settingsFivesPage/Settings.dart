// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:pedometer/firstPage/Buttons.dart';
import 'package:pedometer/firstPage/Parameters.dart';
import 'package:pedometer/firstPage/colors.dart';
import 'package:pedometer/scondPage/Parameters2.dart';

class settingPage extends StatefulWidget {
  @override
  _settingPageState createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff5F6CFF),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 27),
                        alignment: Alignment.center,
                        child: Text(
                          'Настройки',
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 17),
                  child: Container(
                    height: 60,
                    width: 343,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 70),
                          child: Image(
                            height: 30,
                            width: 30,
                            image: AssetImage('icons/ADS.png'),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 218,
                          padding: EdgeInsets.only(right: 40),
                          child: Text(
                            'Отключить рекламу',
                            style: TextStyle(
                              fontFamily: "Gilroy",
                              fontSize: 18,
                              color: Color(0xff5F6CFF),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 26,
                  ),
                  child: Text(
                    'Данные пользователя',
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      fontSize: 14,
                      color: Color(0xffA0A8FF),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 17),
                  child: Container(
                    width: 343,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Рост',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${height} см',
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                color: Color(0xff5F6CFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: 343,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Вес',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${weight} кг',
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                color: Color(0xff5F6CFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: 343,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Возраст',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${age}',
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                color: Color(0xff5F6CFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 343,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                'Длина шага',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Gilroy2",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              child: Text(
                                '${lsh} см',
                                style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 17),
                  width: 343,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: ButtonTheme(
                          height: 42,
                          minWidth: 106,
                          child: RaisedButton(
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.white, width: 3),
                                borderRadius: BorderRadius.circular(15)),
                            onPressed: () {
                              setState(() {
                                gender = Gender.man;
                              });
                            },
                            color: gender == Gender.man
                                ? bottomColor2
                                : bottomColor1,
                            child: Text(
                              "Мужчина",
                              style: TextStyle(
                                fontFamily: "Gilroy2",
                                fontSize: 14,
                                color: gender == Gender.man
                                    ? textColor2
                                    : textColor1,
                              ),
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
                              side: BorderSide(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {
                            setState(() {
                              gender = Gender.woman;
                            });
                          },
                          color: gender == Gender.woman
                              ? bottomColor2
                              : bottomColor1,
                          child: Text(
                            "Девушка",
                            style: TextStyle(
                              fontFamily: "Gilroy2",
                              fontSize: 14,
                              color: gender == Gender.woman
                                  ? textColor2
                                  : textColor1,
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
                              side: BorderSide(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {
                            setState(() {
                              gender = Gender.other;
                            });
                          },
                          color: gender == Gender.other
                              ? bottomColor2
                              : bottomColor1,
                          child: Text(
                            "Другое",
                            style: TextStyle(
                              fontFamily: "Gilroy2",
                              fontSize: 14,
                              color: gender == Gender.other
                                  ? textColor2
                                  : textColor1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 26,
                  ),
                  child: Text(
                    'Настройки целей',
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      fontSize: 14,
                      color: Color(0xffA0A8FF),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: 343,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Длина шага',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${lsh} см',
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                color: Color(0xff5F6CFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: 343,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Длина шага',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${lsh} см',
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                color: Color(0xff5F6CFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: 343,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Длина шага',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${lsh} см',
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                color: Color(0xff5F6CFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 26,
                  ),
                  child: Text(
                    'Остальные настройки',
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      fontSize: 14,
                      color: Color(0xffA0A8FF),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: 343,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Длина шага',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${lsh} см',
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                color: Color(0xff5F6CFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: 343,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Длина шага',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${lsh} см',
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                color: Color(0xff5F6CFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: 343,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Длина шага',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${lsh} см',
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                color: Color(0xff5F6CFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 26,
                  ),
                  child: Text(
                    'Уведомления',
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      fontSize: 14,
                      color: Color(0xffA0A8FF),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: 343,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Длина шага',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${lsh} см',
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                color: Color(0xff5F6CFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: 343,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Длина шага',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${lsh} см',
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                color: Color(0xff5F6CFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
