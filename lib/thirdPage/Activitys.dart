// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xffb0b5fe);
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 50, paint);

    final double puts = 0.50;
    final strokePaint = Paint();
    strokePaint.color = Color(0xff414DD4);
    strokePaint.style = PaintingStyle.stroke;
    strokePaint.strokeWidth = 15;
    strokePaint.strokeCap = StrokeCap.round;
    canvas.drawArc(
      Offset(7.5, 7.5) & Size(size.width - 15, size.height - 15),
      -pi / 2,
      pi * 2 * puts,
      false,
      strokePaint,
    );

    final feelPaint = Paint();
    feelPaint.color = Color(0xffffffff);
    feelPaint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 42, feelPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint2 = Paint();
    paint2.color = Color(0xffb0b5fe);
    paint2.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 50, paint2);

    final double way = 0.50;
    final strokePaint2 = Paint();
    strokePaint2.color = Color(0xff4FBD6E);
    strokePaint2.style = PaintingStyle.stroke;
    strokePaint2.strokeWidth = 15;
    strokePaint2.strokeCap = StrokeCap.round;
    canvas.drawArc(
      Offset(7.5, 7.5) & Size(size.width - 15, size.height - 15),
      -pi / 2,
      pi * 2 * way,
      false,
      strokePaint2,
    );

    final feelPaint2 = Paint();
    feelPaint2.color = Color(0xffffffff);
    feelPaint2.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 42, feelPaint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint3 = Paint();
    paint3.color = Color(0xffb0b5fe);
    paint3.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 50, paint3);

    final double put = 0.50;
    final strokePaint3 = Paint();
    strokePaint3.color = Color(0xffCC464E);
    strokePaint3.style = PaintingStyle.stroke;
    strokePaint3.strokeWidth = 15;
    strokePaint3.strokeCap = StrokeCap.round;
    canvas.drawArc(
      Offset(7.5, 7.5) & Size(size.width - 15, size.height - 15),
      -pi / 2,
      pi * 2 * put,
      false,
      strokePaint3,
    );

    final feelPaint = Paint();
    feelPaint.color = Color(0xffffffff);
    feelPaint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 42, feelPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
