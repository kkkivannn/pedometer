// ignore_for_file: camel_case_types, use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pedometer/firstPage/Parameters.dart';
import 'package:pedometer/foorthPage/achievements.dart';

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
    return SafeArea(
      child: Container(
          // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          // width: 475,
          // height: 400,
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            width: 475,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'text17'.tr().toString(),
                    style: TextStyle(fontFamily: "Gilroy", fontSize: 18),
                  ),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: 130,
                  child: ExpansionTile(
                    collapsedIconColor: Color(0xff5F6CFF),
                    title: Text(
                      'text18'.tr().toString(),
                      style: TextStyle(
                          color: Color(0xff5F6CFF),
                          fontSize: 18,
                          fontFamily: "Gilroy"),
                    ),
                    children: [
                      Text(
                        'text19'.tr().toString(),
                        style: TextStyle(
                            color: Color(0xff5F6CFF),
                            fontSize: 18,
                            fontFamily: "Gilroy"),
                      ),
                      Text(
                        'text20'.tr().toString(),
                        style: TextStyle(
                            color: Color(0xff5F6CFF),
                            fontSize: 18,
                            fontFamily: "Gilroy"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            width: 475,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              '155 000',
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
                              '4 000',
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
                              '1 500  км', // поменять стиль "КМ"
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
                              '4 000  ккал', //поменять стиль ККАЛ
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
      )),
    );
  }
}
