import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:block_test/widgets/layout/main_layout.dart';
import 'package:flutter/material.dart';

class BoardScorePage extends StatelessWidget with BaseExtension {
  const BoardScorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: textTheme(context).headline3,
            ),
          ],
        ),
      ),
    );
  }
}
