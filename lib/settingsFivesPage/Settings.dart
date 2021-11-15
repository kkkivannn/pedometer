// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, file_names, constant_identifier_names

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
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

String text = "text52".tr().toString();
dynamic value;
final model = StorageModel();

// void _SetSteps() {
//   AlertDialog(
//     title: Text('text53'.tr().toString()),
//     content: TextField(
//       decoration: InputDecoration(
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(7))),
//       onChanged: (var value) {
//         step = value;
//       },
//     ),
//   );
//}

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
                                                  BorderRadius.circular(7))),
                                      onChanged: (dynamic value) {
                                        height = value;
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            model.Height();
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
                          // child: Text(
                          //   '${height} см',
                          //   style: TextStyle(
                          //       fontFamily: "Gilroy",
                          //       fontSize: 18,
                          //       color: Color(0xff5F6CFF)),
                          // ),
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
                                      onChanged: (dynamic value) {
                                        weight = value;
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            model.Weight();
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
                                        age = value;
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            model.Age();
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
                              '${age} кг',
                              style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 18,
                                  color: Color(0xff5F6CFF)),
                            ),
                          ),
                          // child: Text(
                          //   '${age}',
                          //   style: TextStyle(
                          //       fontFamily: "Gilroy",
                          //       fontSize: 18,
                          //       color: Color(0xff5F6CFF)),
                          // ),
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
                          child: Text(
                            '${Q}',
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
                            '${km}',
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
                                text,
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
                                  text = Rus;
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
                                  text = Eng;
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
                                  text = Tr;
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
                                  text = De;
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
                                  text = Es;
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
                                  text = Fr;
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
                                  text = In;
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
                                  text = It;
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
                                  text = Pl;
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
                                  text = Pt;
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
                            'text47'.tr().toString(),
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
