import 'package:flutter/material.dart';
import 'dart:math' as math;

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var padding = 40.0;
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    //  Line Method 1 drawLine
    Offset startingPoint = Offset(0 + padding, size.height / 2);
    Offset endingPoint = Offset(size.width - padding, size.height / 1.5);
    canvas.drawLine(startingPoint, endingPoint, paint);

    // Line Method 2 drawPath
    var path = Path();
    path.moveTo(0 + padding, size.height / 2);
    path.lineTo(size.width - padding, size.height / 3);
    canvas.drawPath(path, paint);

    // Circle Method 1 drawCircle
    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 50, paint);

    // Circle Method 2 drawPath
    var circlePath = Path();
    circlePath.addOval(Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: 100,
    ));
    canvas.drawPath(circlePath, paint);

    // Plygons Method
    const double sides = 5;
    const double radius = 200;
    const double radians = 0;

    var squarePath = Path();
    var angle = (math.pi * 2) / sides;

    Offset squareCenter = Offset(size.width / 2, size.height / 2);

// startPoint => (100.0, 0.0)
    Offset startPoint = Offset(radius * math.cos(0.0), radius * math.sin(0.0));

    squarePath.moveTo(
        startPoint.dx + squareCenter.dx, startPoint.dy + squareCenter.dy);

    for (int i = 1; i <= sides; i++) {
      double x = radius * math.cos(radians + angle * i) + squareCenter.dx;
      double y = radius * math.sin(radians + angle * i) + squareCenter.dy;
      squarePath.lineTo(x, y);
    }
    squarePath.close();
    canvas.drawPath(squarePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
