// ignore_for_file:  file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class ADS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 65,
                alignment: Alignment.center,
                // width: 400,
                color: Color(0xff7ABFFF),
                child: Text(
                  'ADS',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontFamily: "Gilroy",
                  ),
                ),
              ),
            ),
            Container(
              height: 65,
              width: 65,
              alignment: Alignment.center,
              color: Color(0xffB88F8F),
              child: Text(
                'X',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: "Gilroy",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
