// ignore_for_file: camel_case_types, use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer2/foorthPage/achievements.dart';
import 'package:pedometer2/thirdPage/stepCount.dart';

class statics extends StatefulWidget {
  @override
  _staticsState createState() => _staticsState();
}

class _staticsState extends State<statics> {
  void _perechod() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Achive()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // dynamic height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              width: 475,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'text17'.tr().toString(),
                      style: TextStyle(fontFamily: "Gilroy", fontSize: 18),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              // height: 400,
              // width: 475,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Container(
                        width: 160,
                        height: 190,
                        decoration: BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage('icons/1.png')),
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'text21'.tr().toString(),
                                style: TextStyle(
                                  fontFamily: 'Gilroy2',
                                  fontSize: 14,
                                  color: Color(0xff6D6D6D),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                '$savedAllSteps',
                                style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 24,
                                  color: Color(0xff414DD4),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'text22'.tr().toString(),
                                style: TextStyle(
                                  fontFamily: 'Gilroy2',
                                  fontSize: 14,
                                  color: Color(0xff6D6D6D),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                '${savedAverageSteps.toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 24,
                                  color: Color(0xff414DD4),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        width: 160,
                        height: 150,
                        decoration: BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage('icons/3.png')),
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Container(
                              child: Text(
                                'text23'.tr().toString(),
                                style: TextStyle(
                                  fontFamily: 'Gilroy2',
                                  fontSize: 14,
                                  color: Color(0xff6D6D6D),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: Text(
                                '${savedAllKm.toStringAsFixed(1)}', // ???????????????? ?????????? "????"
                                style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 24,
                                  color: Color(0xff4FBD6E),
                                ),
                              ),
                            ),
                            Spacer(flex: 4)
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        width: 160,
                        height: 150,
                        decoration: BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage('icons/2.png')),
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Container(
                              child: Text(
                                'text24'.tr().toString(),
                                style: TextStyle(
                                  fontFamily: "Gilroy2",
                                  fontSize: 14,
                                  color: Color(0xff6D6D6D),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: Text(
                                '${savedAllKal.toStringAsFixed(0)}', //???????????????? ?????????? ????????
                                style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 24,
                                  color: Color(0xffCC464E),
                                ),
                              ),
                            ),
                            Spacer(
                              flex: 4,
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: _perechod,
                        child: Container(
                          padding: EdgeInsets.only(top: 20),
                          width: 160,
                          height: 190,
                          decoration: BoxDecoration(
                            color: Color(0xff5F6CFF),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Column(
                            children: [
                              Spacer(),
                              Image(
                                color: Colors.white,
                                height: 100,
                                width: 80,
                                image: AssetImage('icons/cup.png'),
                              ),
                              Spacer(),
                              Text(
                                'text25'.tr().toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Gilroy",
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(flex: 3)
                            ],
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      )
                    ],
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
