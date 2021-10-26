// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class param extends StatefulWidget {
  @override
  _paramState createState() => _paramState();
}

class _paramState extends State<param> {
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
                        'Какой тебя рост?',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gilroy2',
                            fontSize: 14),
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
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
