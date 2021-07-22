import 'dart:ui';

import 'package:aih_charts_demo/model/sale.dart';
import 'package:flutter/material.dart';

class PathPainter extends CustomPainter {
  List<Sales> saleList;

  PathPainter({this.saleList});

  @override
  void paint(Canvas canvas, Size size) {
    final pointMode = PointMode.lines;
    final points = List<Offset>();
    saleList.forEach((element) {
      element.sales.forEach((element) {
        points.add(
            new Offset(element.width.toDouble(), element.height.toDouble()));
      });
    });
    final paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    canvas.drawPoints(pointMode, points, paint);
//    Paint paint = Paint()
//      ..color = Colors.green
//      ..style = PaintingStyle.stroke
//      ..strokeWidth = 3.0;
//
//    Path path = Path();
//    // Draws a line from left top corner to right bottom
//    path.lineTo(x, y);
//    canvas.drawPath(path, paint);
  //Custom Painter
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
