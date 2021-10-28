// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, unused_element, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pedometer/firstPage/colors.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class param extends StatefulWidget {
  @override
  _paramState createState() => _paramState();
}

class _paramState extends State<param> {
  var height = 120;
  var weight = 50;
  var age = 12;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment(0, 0.15),
              child: Container(
                height: 42,
                width: 343,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(-0.80, 0),
                      child: Text(
                        'Какой у тебя рост?',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gilroy2',
                            fontSize: 14),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.95, 0),
                      child: Container(
                        height: 40,
                        width: 40,
                        alignment: Alignment(0, 0),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              height++;
                            });
                          },
                          icon: Icon(Icons.add),
                          iconSize: 25,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.68, 0),
                      child: Container(
                        child: Text(
                          '${height}',
                          style: TextStyle(
                              color: Color(0xff5F6CFF),
                              fontSize: 18,
                              fontFamily: 'Gilroy'),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.5, 0),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            height--;
                          });
                        },
                        icon: Image.asset(
                          'icons/minus3.png',
                          height: 15,
                          width: 15,
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Align(
              alignment: Alignment(0, 0.3),
              child: Container(
                height: 42,
                width: 343,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(-0.80, 0),
                      child: Text(
                        "Какой у тебя вес?",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gilroy2',
                            fontSize: 14),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.68, 0),
                      child: Container(
                        child: Text(
                          '${weight}',
                          style: TextStyle(
                              color: Color(0xff5F6CFF),
                              fontSize: 18,
                              fontFamily: 'Gilroy'),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.95, 0),
                      child: Container(
                        height: 40,
                        width: 40,
                        alignment: Alignment(0, 0),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          icon: Icon(Icons.add),
                          iconSize: 25,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.5, 0),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            weight--;
                          });
                        },
                        icon: Image.asset(
                          'icons/minus3.png',
                          height: 15,
                          width: 15,
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Align(
              alignment: Alignment(0, 0.45),
              child: Container(
                height: 42,
                width: 343,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(-0.80, 0),
                      child: Text(
                        'Сколько тебе лет?',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gilroy2',
                            fontSize: 14),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.68, 0),
                      child: Container(
                        child: Text(
                          '${age}',
                          style: TextStyle(
                              color: Color(0xff5F6CFF),
                              fontSize: 18,
                              fontFamily: 'Gilroy'),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.95, 0),
                      child: Container(
                        height: 40,
                        width: 40,
                        alignment: Alignment(0, 0),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          icon: Icon(Icons.add),
                          iconSize: 25,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.5, 0),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                        icon: Image.asset(
                          'icons/minus3.png',
                          height: 15,
                          width: 15,
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
