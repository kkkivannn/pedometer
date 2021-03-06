// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer2/BackEnd/Storage.dart';
import 'package:pedometer2/thirdPage/stepCount.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Achive extends StatefulWidget {
  @override
  _AchiveState createState() => _AchiveState();
}

Box<dynamic> stepsBox = Hive.box('steps');
void achvmentsCount() {
  Colors.white.withOpacity(0);
  achivmentCount++;
  stepsBox.put('achivmentCount', achivmentCount);
}

class _AchiveState extends State<Achive> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff5F6CFF),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 27),
                  child: Text(
                    'text26'.tr().toString(),
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                )),
              ],
            ),
            Container(
              // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              height: 500,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            'text27'.tr().toString(),
                            style: TextStyle(
                              fontFamily: "Gilroy",
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(right: 25, left: 25),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/3.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllSteps >= 5000)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '5 000',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/3.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllSteps >= 25000)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '25 000',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/3.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllSteps >= 125000)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '125 000',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/3.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllSteps >= 625000)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '625 000',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/3.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllSteps >= 3125000)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '3 125 000',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/3.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllSteps >= 15625000)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '15 625 000',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            'text28'.tr().toString(),
                            style: TextStyle(
                              fontFamily: "Gilroy",
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(right: 25, left: 25),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/1.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllKm >= 5)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '5',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff4FBD6E),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/1.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllKm >= 25)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '25',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff4FBD6E),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/1.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllKm >= 125)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '125',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff4FBD6E),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/1.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllKm >= 625)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '625',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff4FBD6E),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/1.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllKm >= 3125)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '3 125',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff4FBD6E),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/1.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (savedAllKm >= 15625)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '15 625',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff4FBD6E),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            'text29'.tr().toString(),
                            style: TextStyle(
                              fontFamily: "Gilroy",
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(right: 25, left: 25),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/2.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (achivmentCount >= 2)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '2',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/2.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (achivmentCount >= 4)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '4',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/2.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (achivmentCount >= 6)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '6',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/2.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (achivmentCount >= 8)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '8',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/2.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (achivmentCount >= 10)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '10',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('images/2.png'),
                                        ),
                                        height: 90,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: (achivmentCount >= 12)
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 160,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '12',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gilroy",
                                            color: Color(0xff414DD4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
