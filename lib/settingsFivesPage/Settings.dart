// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, file_names, constant_identifier_names

import 'dart:developer';

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pedometer/BackEnd/Storage.dart';

import 'package:pedometer/firstPage/Buttons.dart';
import 'package:pedometer/firstPage/Parameters.dart';
import 'package:pedometer/firstPage/colors.dart';
import 'package:pedometer/scondPage/Parameters2.dart';
import 'package:pedometer/settingsFivesPage/langs.dart';

class settingPage extends StatefulWidget {
  @override
  _settingPageState createState() => _settingPageState();
}

String textForLang = "text52".tr().toString();
String textForEd = "text52".tr().toString();
// String newText1 = "text54".tr().toString();
// String newText2 = "text55".tr().toString();
dynamic value;
final model = StorageModel();

class _settingPageState extends State<settingPage> {
  @override
  Widget build(BuildContext context) {
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
                Container(
                  padding: EdgeInsets.only(
                    left: 16,
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
                              fontSize: 16,
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
                                      onChanged: (var value) {
                                        var n = int.tryParse(value);
                                        height = n;
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
                                            model.Height();
                                            Lsh();
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
                              '${height} см',
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
                            'text34'.tr().toString(),
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
                                      onChanged: (var value) {
                                        var ves = int.tryParse(value);
                                        weight = ves;
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (weight < 50) {
                                              weight = 50;
                                            }
                                            model.Weight();
                                            Kkal();
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
                              '${weight} кг',
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
                              fontSize: 16,
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
                                      onChanged: (dynamic value) {
                                        var let = int.tryParse(value);
                                        age = let;
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
                                            model.Age();
                                            Steps();
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
                                  fontSize: 16,
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
                                                      BorderRadius.circular(
                                                          7))),
                                          onChanged: (dynamic value) {
                                            lsh = value;
                                          },
                                        ),
                                        actions: [
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                model.Lsh();
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            icon: Icon(
                                                Icons.done_outline_rounded),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  '${lsh.toStringAsFixed(1)} см',
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
                                gender = Gender.woman;
                                LshFirstPage();
                                Lsh();
                              });
                            },
                            color: gender == Gender.woman
                                ? bottomColor2
                                : bottomColor1,
                            child: Text(
                              'text38'.tr().toString(),
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
                              gender = Gender.man;
                              LshFirstPage();
                              Lsh();
                            });
                          },
                          color: gender == Gender.man
                              ? bottomColor2
                              : bottomColor1,
                          child: Text(
                            'text37'.tr().toString(),
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
                              LshFirstPage();
                              Lsh();
                            });
                          },
                          color: gender == Gender.other
                              ? bottomColor2
                              : bottomColor1,
                          child: Text(
                            'text39'.tr().toString(),
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
                              fontSize: 16,
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
                                      onChanged: (dynamic value) {
                                        step = value;
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            model.Step();
                                            Put();
                                            Kkal();
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
                              '${step}',
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
                              fontSize: 16,
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
                                      onChanged: (dynamic value) {
                                        var n = int.tryParse(value);
                                        Kal = n;
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            model.kal();
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
                              Kal.toStringAsFixed(0),
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
                            'text43'.tr().toString(),
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
                                      onChanged: (dynamic value) {
                                        var n = double.tryParse(value);
                                        km = n;
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            model.KM();
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
                              km.toStringAsFixed(1),
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
                  padding: EdgeInsets.only(
                    left: 16,
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
                              fontSize: 16,
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
                                  context.locale = Locale('en', 'RU');
                                  textForLang = Rus;
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
                              fontSize: 16,
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
                                onTap: () {
                                  // context.locale = Locale('en', 'DE');
                                  // textForEd = De;
                                  meter();
                                  textForEd = MeterRu;
                                },
                                child: Text(
                                  MeterRu,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Color(0xff5F6CFF),
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: () {
                                  // context.locale = Locale('en', 'DE');
                                  // text = "text54".tr().toString();
                                  engl();
                                  textForEd = EnglRu;
                                },
                                child: Text(
                                  EnglRu,
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
                // Container(
                //   padding: EdgeInsets.only(top: 10),
                //   child: Container(
                //     width: 343,
                //     height: 40,
                //     decoration: BoxDecoration(
                //         color: Colors.white,
                //         borderRadius: BorderRadius.circular(15)),
                //     child: Row(
                //       children: [
                //         Container(
                //           padding: EdgeInsets.only(left: 30),
                //           child: Text(
                //             'text47'.tr().toString(),
                //             style: TextStyle(
                //               fontSize: 16,
                //               fontFamily: "Gilroy2",
                //               color: Colors.black,
                //             ),
                //           ),
                //         ),
                //         Spacer(),
                //         Container(
                //           padding: EdgeInsets.only(right: 30),
                //           child: Text(
                //             ' см',
                //             style: TextStyle(
                //                 fontFamily: "Gilroy",
                //                 fontSize: 18,
                //                 color: Color(0xff5F6CFF)),
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.only(
                    left: 16,
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
                            ' см',
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
                            'text50'.tr().toString(),
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
                            ' см',
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
  height = height / 2.5;
  weight = weight / 453;
  lsh = lsh / 2.5;
  km = km / 0.3;
}

void meter() {
  height = height * 2.5;
  weight = weight * 453;
  lsh = lsh * 2.5;
  km = km * 0.3;
}
