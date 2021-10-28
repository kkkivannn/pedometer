// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class Parameters2 extends StatefulWidget {
  @override
  _Parameters2State createState() => _Parameters2State();
}

class _Parameters2State extends State<Parameters2> {
  var step;
  var kkal;
  var km;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment(0, 0),
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
                        'Количество шагов',
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
                          '',
                          style: TextStyle(
                              color: Color(0xff5F6CFF),
                              fontSize: 18,
                              fontFamily: 'Gilroy'),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
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
                        "Количество сожженых ккал",
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
                          '',
                          style: TextStyle(
                              color: Color(0xff5F6CFF),
                              fontSize: 18,
                              fontFamily: 'Gilroy'),
                        ),
                      ),
                    ),
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
                        'Количество километров',
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
                          '',
                          style: TextStyle(
                              color: Color(0xff5F6CFF),
                              fontSize: 18,
                              fontFamily: 'Gilroy'),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
