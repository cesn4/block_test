import 'package:flutter/material.dart';
import 'dart:math' as math;

class GraphPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var padding = 40.0;
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    //  Line Method 1 drawLine
    var startingPoint = Offset(0 + padding, size.height / 2);
    var endingPoint = Offset(size.width - padding, size.height / 2);
    canvas.drawLine(startingPoint, endingPoint, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
