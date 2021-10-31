// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class thirdPage extends StatefulWidget {
  @override
  _thirdPageState createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0.9, -0.5),
            child: Container(
              width: 130,
              child: ExpansionTile(
                collapsedIconColor: Color(0xff5F6CFF),
                title: Text(
                  'За день',
                  style: TextStyle(
                      color: Color(0xff5F6CFF),
                      fontSize: 18,
                      fontFamily: "Gilroy"),
                ),
                children: [
                  Text(
                    'За неделю',
                    style: TextStyle(
                        color: Color(0xff5F6CFF),
                        fontSize: 18,
                        fontFamily: "Gilroy"),
                  ),
                  Text(
                    'За месяц',
                    style: TextStyle(
                        color: Color(0xff5F6CFF),
                        fontSize: 18,
                        fontFamily: "Gilroy"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(0.95, -0.9),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'icons/settings2.png',
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.9, -0.80),
                  child: Container(
                      child: Text(
                    'Активность сегодня',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Gilroy2',
                        color: Colors.white),
                  )),
                )
              ],
            ),
            width: 470,
            height: 222,
            decoration: BoxDecoration(color: Color(0xff5F6CFF)),
          ),
          Container(
            alignment: Alignment(-0.9, -0.48),
            child: Text(
              'Статистика',
              style: TextStyle(fontSize: 18, fontFamily: 'Gilroy'),
            ),
          ),
          Container(
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(-0.6, -0.055),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    height: 187,
                    width: 160,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment(-0.6, -0.7),
                          child: Text(
                            'Пройдено всего',
                            style: TextStyle(
                              fontFamily: 'Gilroy2',
                              fontSize: 14,
                              color: Color(0xff6D6D6D),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.6, -0.4),
                          child: Text(
                            '155 000',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 24,
                              color: Color(0xff414DD4),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.6, 0.1),
                          child: Text(
                            'В среднем\nза день',
                            style: TextStyle(
                              fontFamily: 'Gilroy2',
                              fontSize: 14,
                              color: Color(0xff6D6D6D),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.6, 0.5),
                          child: Text(
                            '4 000',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 24,
                              color: Color(0xff414DD4),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, 1),
                          child: Image(
                            image: AssetImage('icons/1.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.6, -0.1),
                  child: Container(
                    height: 147,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xffffffff)),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment(-0.6, -0.7),
                          child: Text(
                            'Дистанция',
                            style: TextStyle(
                              fontFamily: 'Gilroy2',
                              fontSize: 14,
                              color: Color(0xff6D6D6D),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.6, -0.4),
                          child: Text(
                            '1 500  км', // поменять стиль "КМ"
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 24,
                              color: Color(0xff4FBD6E),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, 1),
                          child: Image(
                            image: AssetImage('icons/3.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(-0.6, 0.41),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    height: 147,
                    width: 160,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment(-0.6, -0.7),
                          child: Text(
                            'Ккал сожжено',
                            style: TextStyle(
                              fontFamily: "Gilroy2",
                              fontSize: 14,
                              color: Color(0xff6D6D6D),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.6, -0.4),
                          child: Text(
                            '4 000  ккал', //поменять стиль ККАЛ
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 24,
                              color: Color(0xffCC464E),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, 1),
                          child: Image(
                            image: AssetImage('icons/2.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Align(
                    alignment: Alignment(0.6, 0.38),
                    child: Container(
                        height: 187,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(0xff5F6CFF)),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0, -0.5),
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage(
                                  'icons/cup.png',
                                ),
                                color: Colors.white,
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 0.7),
                              child: Text(
                                'Достижения',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Gilroy',
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(-1, 1),
            child: Container(
              alignment: Alignment(0, 0),
              height: 63,
              width: 375,
              color: Color(0xff7ABFFF),
              child: Text('ADS'),
            ),
          ),
          Align(
            alignment: Alignment(1, 1),
            child: Container(
              alignment: Alignment(0, 0),
              child: Text(
                "X",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Gilroy',
                  fontSize: 24,
                ),
              ),
              color: Color(0xffB88F8F),
              width: 91,
              height: 63,
            ),
          )
        ],
      )),
    );
  }
}
