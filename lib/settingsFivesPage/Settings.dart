// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, file_names, constant_identifier_names
import 'dart:io';
import 'dart:ui';

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pedometer2/ADSScreen/adsAndroidScreen.dart';
import 'package:pedometer2/ADSScreen/adsIphoneScreen.dart';
import 'package:pedometer2/BackEnd/Storage.dart';
import 'package:pedometer2/Notifications/NotificationClients.dart';
import 'package:pedometer2/firstPage/colors.dart';
import 'package:pedometer2/scondPage/Parameters2.dart';
import 'package:pedometer2/settingsFivesPage/langs.dart';
import 'package:device_info/device_info.dart';
import 'package:pedometer2/thirdPage/stepCount.dart';

class settingPage extends StatefulWidget {
  @override
  _settingPageState createState() => _settingPageState();
}

String textForLang = 'text56'.tr().toString();
final model = StorageModel();
final modelTime = Time();
dynamic Ism;

Box<dynamic> stepsBox = Hive.box('steps');
int savedTime1 = stepsBox.get('time1', defaultValue: 2);
int savedTime2 = stepsBox.get('time2', defaultValue: 2);

void IsmSet() {
  if (push == 1) {
    Ism = "Metric system";
  } else if (push == 0) {
    Ism = "Anglican system";
  }
}

final DeviceInfoPlugin Device = DeviceInfoPlugin();

class _settingPageState extends State<settingPage> {
  String textForEd = 'text56'.tr().toString();

  @override
  Widget build(BuildContext context) {
    IsmSet();
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff5F6CFF),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12, bottom: 12),
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
                          'text30'.tr().toString(),
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 17),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Platform.isAndroid
                                ? adsAndroid()
                                : IosAddScreen(),
                          ),
                        );
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 343,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
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
                              'text31'.tr().toString(),
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
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 26,
                  ),
                  child: Text(
                    'text32'.tr().toString(),
                    style: TextStyle(
                      fontFamily: "Gilroy2",
                      fontSize: 14,
                      color: Color(0xffA0A8FF),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    Ism,
                    style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 16,
                        color: Colors.white),
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
                            'text33'.tr().toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      onChanged: (String value) {
                                        height = double.parse(value);
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (height > 220) {
                                              height = 220;
                                            } else if (height < 120) {
                                              height = 120;
                                            }
                                            stepsBox.put('height', height);
                                            LshFirstPage();
                                            LshGet();
                                            stepsBox.put('lsh', lsh);
                                            Navigator.of(context).pop();
                                          });
                                        },
                                        icon: Icon(Icons.done_outline_rounded),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text(
                              '$height',
                              style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 18,
                                  color: Color(0xff5F6CFF)),
                            ),
                          ),
                        ),
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
                            'text34'.tr().toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7))),
                                      onChanged: (String value) {
                                        weight = double.parse(value);
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (weight < 50) {
                                              weight = 50;
                                            }
                                            stepsBox.put('weight', weight);
                                            Kkal();
                                            stepsBox.put('kal', kal);
                                          });
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(Icons.done_outline_rounded),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text(
                              '${weight}',
                              style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 18,
                                  color: Color(0xff5F6CFF)),
                            ),
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
                            'text35'.tr().toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7))),
                                      onChanged: (String value) {
                                        age = int.parse(value);
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          if (age > 80) {
                                            age = 80;
                                          } else if (age < 12) {
                                            age = 12;
                                          }
                                          setState(() {
                                            stepsBox.put('age', age);
                                            StepsNextPage();
                                            stepsBox.put('step', step);
                                            Kkal();
                                            stepsBox.put('kal', kal);
                                          });
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(Icons.done_outline_rounded),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text(
                              '${age}',
                              style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 18,
                                  color: Color(0xff5F6CFF)),
                            ),
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
                                'text36'.tr().toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Gilroy2",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              child: Text(
                                '${lsh.toStringAsFixed(1)}',
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
                                gender = 2;
                                stepsBox.put('gender', gender);
                                LshFirstPage();
                                LshGet();
                                StepsNextPage();
                                stepsBox.put('step', step);
                                stepsBox.put('lsh', lsh);
                                Kkal();
                                stepsBox.put('kal', kal);
                              });
                            },
                            color: gender == 2 ? bottomColor2 : bottomColor1,
                            child: Text(
                              'text38'.tr().toString(),
                              style: TextStyle(
                                fontFamily: "Gilroy2",
                                fontSize: 14,
                                color: gender == 2 ? textColor2 : textColor1,
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
                              gender = 1;
                              stepsBox.put('gender', gender);
                              LshFirstPage();
                              LshGet();
                              StepsNextPage();
                              stepsBox.put('step', step);
                              stepsBox.put('lsh', lsh);
                              Kkal();
                              stepsBox.put('kal', kal);
                            });
                          },
                          color: gender == 1 ? bottomColor2 : bottomColor1,
                          child: Text(
                            'text37'.tr().toString(),
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
                              side: BorderSide(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {
                            setState(() {
                              gender = 3;
                              stepsBox.put('gender', gender);
                              LshFirstPage();
                              LshGet();
                              StepsNextPage();
                              stepsBox.put('step', step);
                              stepsBox.put('lsh', lsh);
                              Kkal();
                              stepsBox.put('kal', kal);
                            });
                          },
                          color: gender == 3 ? bottomColor2 : bottomColor1,
                          child: Text(
                            'text39'.tr().toString(),
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
                Container(
                  padding: EdgeInsets.only(
                    top: 26,
                  ),
                  child: Text(
                    'text40'.tr().toString(),
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
                            'text41'.tr().toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7))),
                                      onChanged: (String value) {
                                        step = int.parse(value);
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            stepsBox.put('step', step);
                                            Kkal();
                                            stepsBox.put('kal', kal);
                                            Km();
                                            stepsBox.put('km', km);
                                          });

                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(Icons.done_outline_rounded),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text(
                              '$step',
                              style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 18,
                                  color: Color(0xff5F6CFF)),
                            ),
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
                            'text42'.tr().toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${kal.toStringAsFixed(1)}',
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
                            'text43'.tr().toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '${km.toStringAsFixed(1)}',
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
                    top: 26,
                  ),
                  child: Text(
                    'text44'.tr().toString(),
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
                            'text45'.tr().toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: PopupMenuButton(
                            child: Container(
                              child: Text(
                                textForLang,
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 18,
                                  color: Color(0xff5F6CFF),
                                ),
                              ),
                            ),
                            itemBuilder: (BuildContext bc) => [
                              PopupMenuItem(
                                onTap: () async {
                                  setState(() {
                                    context.locale = Locale('en', 'RU');
                                    textForLang = Rus;
                                  });
                                },
                                child: Text(
                                  Rus,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: () async {
                                  context.locale = Locale('en', 'EN');
                                  textForLang = Eng;
                                },
                                child: Text(
                                  Eng,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: () async {
                                  context.locale = Locale('en', 'TR');
                                  textForLang = Tr;
                                },
                                child: Text(
                                  Tr,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: () async {
                                  context.locale = Locale('en', 'DE');
                                  textForLang = De;
                                },
                                child: Text(
                                  De,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: () async {
                                  context.locale = Locale('en', 'ES');
                                  textForLang = Es;
                                },
                                child: Text(
                                  Es,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: () async {
                                  context.locale = Locale('en', 'FR');
                                  textForLang = Fr;
                                },
                                child: Text(
                                  Fr,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: () async {
                                  context.locale = Locale('en', 'IN');
                                  textForLang = In;
                                },
                                child: Text(
                                  In,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: () async {
                                  context.locale = Locale('en', 'IT');
                                  textForLang = It;
                                },
                                child: Text(
                                  It,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: () async {
                                  context.locale = Locale('en', 'PL');
                                  textForLang = Pl;
                                },
                                child: Text(
                                  Pl,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: () async {
                                  context.locale = Locale('en', 'PT');
                                  textForLang = Pt;
                                },
                                child: Text(
                                  Pt,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                            ],
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
                            'text46'.tr().toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: PopupMenuButton(
                            child: Container(
                              child: Text(
                                textForEd,
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 18,
                                  color: Color(0xff5F6CFF),
                                ),
                              ),
                            ),
                            itemBuilder: (BuildContext bc) => [
                              PopupMenuItem(
                                onTap: () async {
                                  setState(() {
                                    if (push == 0) {
                                      push = 1;
                                      model.SetFlag();
                                      // model.GetFlag();
                                      meter();
                                    }
                                  });
                                },
                                child: Text(
                                  'text54'.tr().toString(),
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: () async {
                                  setState(() {
                                    if (push == 1) {
                                      push = 0;
                                      model.SetFlag();
                                      engl();
                                    }
                                  });
                                },
                                child: Text(
                                  'text55'.tr().toString(),
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 26,
                  ),
                  child: Text(
                    'text48'.tr().toString(),
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
                            'text49'.tr().toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: ButtonTheme(
                            height: 25,
                            minWidth: 45,
                            child: RaisedButton(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)),
                              onPressed: () {
                                setState(() {
                                  savedTime1 = 1;
                                  stepsBox.put('time1', savedTime1);
                                  NotificationGoal();
                                });
                              },
                              color:
                                  savedTime1 == 1 ? bottomColor2 : bottomColor1,
                              child: Text(
                                // "text3".tr().toString(),
                                "09:00",
                                style: TextStyle(
                                  fontFamily: "Gilroy2",
                                  fontSize: 12,
                                  color:
                                      savedTime1 == 1 ? textColor2 : textColor1,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          child: ButtonTheme(
                            height: 25,
                            minWidth: 45,
                            child: RaisedButton(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)),
                              onPressed: () {
                                setState(() {
                                  savedTime1 = 2;
                                  stepsBox.put('time1', savedTime1);
                                  cancelScheduledNotifications1();
                                });
                              },
                              color:
                                  savedTime1 == 2 ? bottomColor2 : bottomColor1,
                              child: Text(
                                // "text4".tr().toString(), ДОБАВЬ В json
                                "выкл",
                                style: TextStyle(
                                  fontFamily: "Gilroy2",
                                  fontSize: 12,
                                  color:
                                      savedTime1 == 2 ? textColor2 : textColor1,
                                ),
                              ),
                            ),
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
                            'text50'.tr().toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy2",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: ButtonTheme(
                            height: 25,
                            minWidth: 45,
                            child: RaisedButton(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)),
                              onPressed: () {
                                setState(() {
                                  savedTime2 = 1;
                                  stepsBox.put('time2', savedTime2);
                                  if (todaySteps >= step) {
                                    NotificationReport();
                                  } else {
                                    IfNotDoneNotificationReport();
                                  }
                                });
                              },
                              color:
                                  savedTime2 == 1 ? bottomColor2 : bottomColor1,
                              child: Text(
                                // "text3".tr().toString(),
                                "вкл",
                                style: TextStyle(
                                  fontFamily: "Gilroy2",
                                  fontSize: 12,
                                  color:
                                      savedTime2 == 1 ? textColor2 : textColor1,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          child: ButtonTheme(
                            height: 25,
                            minWidth: 45,
                            child: RaisedButton(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)),
                              onPressed: () {
                                setState(() {
                                  cancelScheduledNotifications2();
                                  savedTime2 = 2;
                                  stepsBox.put('time2', savedTime2);
                                });
                              },
                              color:
                                  savedTime2 == 2 ? bottomColor2 : bottomColor1,
                              child: Text(
                                // "text4".tr().toString(), ДОБАВЬ В json
                                "выкл",
                                style: TextStyle(
                                  fontFamily: "Gilroy2",
                                  fontSize: 12,
                                  color:
                                      savedTime2 == 2 ? textColor2 : textColor1,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: ButtonTheme(
                    height: 55,
                    minWidth: 343,
                    child: RaisedButton(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white, width: 3),
                          borderRadius: BorderRadius.circular(15)),
                      onPressed: () {
                        setState(() {});
                      },
                      color: Color(0xff5F6CFF),
                      child: Text(
                        'text51'.tr().toString(),
                        style: TextStyle(
                          fontFamily: "Gilroy2",
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

void engl() {
  height = double.parse((height / 2.5).toStringAsFixed(1));
  weight = double.parse((weight / 0.453).toStringAsFixed(1));
  lsh = double.parse((lsh / 2.5).toStringAsFixed(1));
  km = double.parse(((km * 1000) / 1600).toStringAsFixed(2));
  stepsBox
    ..put('height', height)
    ..put('weight', weight)
    ..put('lsh', lsh)
    ..put('km', km);
}

void meter() {
  height = double.parse((height * 2.5).toStringAsFixed(1));
  if (weight < 50) {
    weight = 50;
  } else {
    weight = double.parse((weight * 0.453).toStringAsFixed(1));
  }

  lsh = double.parse((lsh * 2.5).toStringAsFixed(1));
  km = double.parse(((km / 1000) * 1600).toStringAsFixed(2));
  stepsBox
    ..put('height', height)
    ..put('weight', weight)
    ..put('lsh', lsh)
    ..put('km', km);
}
