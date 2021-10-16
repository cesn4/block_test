import 'package:block_test/paint/widgets/graph_painter.dart';
import 'package:block_test/paint/widgets/shape_painter.dart';
import 'package:block_test/paint/widgets/test_chart.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:flutter/material.dart';

class PaintPage extends StatelessWidget with BaseExtension {
  const PaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors(context).primary,
      body: Center(
        child: Container(
          height: 250,
          color: colors(context).secondary,
          child: LineChart(),
        ),
      ),
    );
  }
}
