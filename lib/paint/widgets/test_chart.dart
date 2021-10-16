import 'dart:math';

import 'package:flutter/material.dart';

class LineData {
  Map<String, double> data = Map();
  String? category;
  Color? color;

  LineData(String category, Color color, List<double> values) {
    this.data = createCumulativeData(values);
    this.category = category;
    this.color = color;
  }

  Map<String, double> createCumulativeData(List<double> values) {
    Map<String, double> data = new Map();
    int c = 0;
    double sum = 0;
    values.forEach((element) {
      sum += element;
      data.putIfAbsent(c.toString(), () => sum);
      c++;
    });
    return data;
  }
}

class LineChart extends StatelessWidget {
  static List<double> hamilton = [0, 12, 25, 26, 25, 19, 25, 25, 7, 26, 15, 25];
  // static List<double> bottas = [0, 25, 18, 15, 0, 15, 16, 18, 10, 18, 26, 0];
  // static List<double> max = [0, 0, 15, 18, 19, 25, 18, 15, 0, 0, 18, 19];

  final List<LineData> data = [
    LineData("Hamilton", Colors.amber, hamilton),
    // LineData("Bottas", Colors.teal[300]!, bottas),
    // LineData("Verstappen", Colors.blue[900]!, max)
  ];

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 100),
      duration: const Duration(seconds: 2),
      builder: (BuildContext context, double percentage, Widget? child) {
        return CustomPaint(
          painter: LineChartPainter(percentage, data, "Top Three Formula One"),
          child: Container(width: double.infinity, height: 250),
        );
      },
    );
  }
}

class LineChartPainter extends CustomPainter {
  final String title;
  final List<LineData> lineData;
  late List<String> categories;
  final double percentage;

  late double marginLeft = 0;
  late double marginTop = 0;
  late double marginBottom = 0;
  late double marginRight = 0;
  double maxValue = 250;
  static double emptySpace = 5;

  // title
  static double titleTextScale = 1.5;

  // axis
  static double axisWidth = 2;
  static double axisTextScale = 1;

  // two main lines
  Paint axis = Paint()
    ..strokeWidth = axisWidth
    ..color = Colors.grey;

  // horizontal lines through the chart
  Paint axisLight = Paint()
    ..strokeWidth = axisWidth
    ..color = Colors.grey.withOpacity(0.5);

  // legend
  static double legendSquareWidth = 0;
  static double legendTextScale = 1;

  LineChartPainter(this.percentage, this.lineData, this.title) {
    // margin left side is based on largest value on the axis
    // marginLeft = createText(maxValue.toString(), 1).width + emptySpace;
    // // determine where to begin with , based on height of the title
    // marginTop = createText(title, titleTextScale).height + emptySpace;
    // // determine marginBottom on default text
    // marginBottom = createText("1", axisTextScale).height * 2 + emptySpace;
    // // determine marginRight based on the largest category name
    // marginRight = 10;
    // lineData.forEach(
    //   (element) {
    //     var width = createText(element.category, legendTextScale).width +
    //         legendSquareWidth +
    //         emptySpace;
    //     if (width > marginRight) {
    //       marginRight = width;
    //     }
    //   },
    // );

    // set the categories, based on the entries of the first data
    categories = lineData[0].data.keys.toList();
  }

  @override
  void paint(Canvas canvas, Size size) {
    // drawTitle(canvas, size);
    // drawAxes(canvas, size);
    // drawLegend(canvas, size);
    drawLines(size, canvas);
  }

  void drawLines(Size size, Canvas canvas) {
    var index = 0;
    for (var element in lineData) {
      var percentageCorrected = lineData.length *
          min(percentage - index * 100 / (lineData.length),
              100 / (lineData.length));

      var points = element.data.entries.toList();
      for (int i = 0; i < (points.length - 1); i++) {
        var percentageOfLine = (points.length - 1) *
            min(percentageCorrected - i * 100 / (points.length - 1),
                100 / (points.length - 1));
        if (percentageOfLine > 0) {
          var firstPoint = entryToPoint(points[i], size);
          var goalPoint = entryToPoint(points[i + 1], size);
          var nextPoint = Offset(
              percentageOfLine / 100 * (goalPoint.dx - firstPoint.dx) +
                  firstPoint.dx,
              percentageOfLine / 100 * (goalPoint.dy - firstPoint.dy) +
                  firstPoint.dy);
          canvas.drawLine(
              entryToPoint(points[i], size), nextPoint, getLinePaint(element));
          // canvas.drawCircle(firstPoint, 5, getLineDataColorPaint(element));
        }
      }
      // if (percentageCorrected >= 99.9) {
      //   canvas.drawCircle(entryToPoint(points[points.length - 1], size), 5,
      //       getLineDataColorPaint(element));
      // }
      index++;
    }
  }

  // void drawLegend(Canvas canvas, Size size) {
  //   double i = 0;
  //   lineData.forEach((element) {
  //     TextPainter tp = createText(element.category, legendTextScale);
  //     tp.paint(
  //         canvas,
  //         new Offset(
  //             size.width - marginRight + legendSquareWidth + 2 * emptySpace,
  //             (i * tp.height + marginTop - tp.height / 2)));
  //     var center = new Offset(
  //         size.width - marginRight + legendSquareWidth + emptySpace,
  //         (i * tp.height + marginTop));
  //     canvas.drawRect(
  //         Rect.fromCenter(
  //             center: center,
  //             width: legendSquareWidth,
  //             height: legendSquareWidth),
  //         getLineDataColorPaint(element));
  //     i++;
  //   });
  // }

  // void drawTitle(Canvas canvas, Size size) {
  //   TextPainter tp = createText(title, titleTextScale);
  //   tp.paint(canvas, new Offset(size.width / 2 - tp.width / 2, 0));
  // }

  Paint getLinePaint(LineData lineData) {
    return Paint()
      ..strokeWidth = 4
      ..color = lineData.color!;
  }

  Paint getLineDataColorPaint(LineData lineData) {
    return Paint()
      ..strokeWidth = 4
      ..color = lineData.color!;
  }

  void drawAxes(Canvas canvas, Size size) {
    // draw the horizontal line
    canvas.drawLine(
      Offset(marginLeft, size.height - marginTop),
      Offset(size.width - marginRight, size.height - marginTop),
      axis,
    );
    // draw the vertical line
    canvas.drawLine(
      Offset(marginLeft, size.height - marginTop),
      Offset(marginLeft, marginTop),
      axis,
    );
    // draw the categories on the horizontal axis
    addCategoriesAsTextToHorizontalAxis(size, canvas);
    // draw five sizes on the vertical axis and draw lighter vertical lines
    addHorizontalLinesAndSizes(size, canvas);
  }

  void addHorizontalLinesAndSizes(Size size, Canvas canvas) {
    for (int i = 1; i <= 5; i++) {
      double y = chartHeight(size) - chartHeight(size) * (i / 5) + marginTop;
      TextPainter tp = createText((maxValue / 5 * i).round().toString(), 1);
      tp.paint(
          canvas, Offset(marginLeft - tp.width - emptySpace, y - emptySpace));

      // canvas.drawLine(
      //   Offset(marginLeft, y),
      //   Offset(size.width - marginRight, y),
      //   axisLight,
      // );
    }
  }

  void addCategoriesAsTextToHorizontalAxis(Size size, Canvas canvas) {
    categories.forEach((entry) {
      TextPainter tp = createText(entry, 1);
      var x = chartWidth(size) *
              categories.indexOf(entry) /
              (categories.length - 1) +
          marginLeft -
          tp.width / 2;
      tp.paint(
          canvas, Offset(x, chartHeight(size) + marginTop + tp.height / 2));
    });
  }

  TextPainter createText(String? key, double scale) {
    TextSpan span =
        new TextSpan(style: new TextStyle(color: Colors.grey[600]), text: key);
    TextPainter tp = new TextPainter(
        text: span,
        textAlign: TextAlign.start,
        textScaleFactor: scale,
        textDirection: TextDirection.ltr);
    tp.layout();
    return tp;
  }

  Offset entryToPoint(MapEntry<String, double> entry, Size size) {
    double x = chartWidth(size) *
            categories.indexOf(entry.key) /
            (categories.length - 1) +
        marginLeft;
    double y = chartHeight(size) -
        chartHeight(size) * (entry.value / maxValue) +
        marginTop;
    return Offset(x, y);
  }

  double chartHeight(Size size) => size.height - marginTop - marginBottom;

  double chartWidth(Size size) => size.width - marginRight - marginLeft;

  @override
  bool shouldRepaint(LineChartPainter oldDelegate) =>
      oldDelegate.percentage != percentage;
}
