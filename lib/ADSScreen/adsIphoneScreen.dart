// ignore_for_file: override_on_non_overriding_member, file_names, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class IosAddScreen extends StatefulWidget {
  @override
  _IosAddScreenState createState() => _IosAddScreenState();
}

class _IosAddScreenState extends State<IosAddScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff5F6CFF),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16, top: 25),
                  child: Text(
                    'X',
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(right: 16, top: 25),
                  child: Image(
                    height: 25,
                    width: 25,
                    color: Colors.white,
                    image: AssetImage('icons/settings2.png'),
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              child: Text(
                'text57'.tr().toString(),
                textAlign: TextAlign.center,
                // 'text58'.tr().toString(),
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 54,
              child: Text(
                'text58'.tr().toString(),
                textAlign: TextAlign.center,
                // 'text57'.tr().toString(),
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            //Spacer(),
            Container(
              child: Text(
                'text59'.tr().toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Gilroy2",
                  fontSize: 14,
                  color: Color(0xffD0D4FF),
                ),
              ),
            ),
            Container(
              height: 46,
              child: Text(
                'text60'.tr().toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Gilroy2",
                  fontSize: 14,
                  color: Color(0xffD0D4FF),
                ),
              ),
            ),

            Container(
                child: Text(
              'text61'.tr().toString(),
              style: TextStyle(
                fontFamily: "Gilroy",
                fontSize: 24,
                color: Color(
                  0xffffffff,
                ),
              ),
            )),
            Spacer(),
            ButtonTheme(
              minWidth: 343,
              height: 55,
              child: RaisedButton(
                child: Text(
                  "text62".tr().toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Gilroy2",
                    fontSize: 18,
                  ),
                ),
                elevation: 0.0,
                color: Color(0xff4F58BD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {},
              ),
            ),
            Spacer(),
            Container(
              child: Text(
                'text65'.tr().toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontFamily: "Gilroy2",
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 44),
              child: Text(
                'text64'.tr().toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Gilroy2",
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
