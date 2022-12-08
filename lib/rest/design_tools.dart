import 'package:flutter/material.dart';
import '../main.dart';


class CurvePainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(400, 100);
    final p2 = Offset(0, 200);
    final paint = Paint()
      ..color = const Color(0xff080404)
      ..strokeWidth = 4;
    canvas.drawLine(p1, p2, paint);
    canvas.drawLine(Offset(0, 500), Offset(400, 600), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}