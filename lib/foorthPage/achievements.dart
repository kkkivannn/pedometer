// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pedometer/thirdPage/Ads.dart';

class Achive extends StatefulWidget {
  @override
  _AchiveState createState() => _AchiveState();
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
                    'Достижения',
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
                            'Пройдено шагов',
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
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
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
                            'Пройдено километров',
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
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
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
                            'Достиженний подряд',
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
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.red)),
                          child: Container(
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ADS()
          ],
        ),
      ),
    );
  }
}
