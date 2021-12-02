import 'dart:async';

import 'package:block_test/widgets/buttons/basic_button.dart';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  DateTime globalAppTime = DateTime.now();
  DateTime? patientWaiting;
  DateTime? patientAtHigenist;
  DateTime? patientAtDoctor;
  DateTime? visitCompleted;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        globalAppTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Global app time'),
                Text(globalAppTime.toString()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (patientWaiting != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Patient waiting:'),
                        patientAtHigenist == null
                            ? Text(globalAppTime
                                .difference(patientWaiting!)
                                .toString())
                            : Text(patientAtHigenist!
                                .difference(patientWaiting!)
                                .toString())
                      ],
                    ),
                  if (patientAtHigenist != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Patient At Hygenist:'),
                        patientAtDoctor == null
                            ? Text(globalAppTime
                                .difference(patientAtHigenist!)
                                .toString())
                            : Text(patientAtDoctor!
                                .difference(patientAtHigenist!)
                                .toString())
                      ],
                    ),
                  if (patientAtDoctor != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Patient At Doctor:'),
                        visitCompleted == null
                            ? Text(globalAppTime
                                .difference(patientAtDoctor!)
                                .toString())
                            : Text(visitCompleted!
                                .difference(patientAtDoctor!)
                                .toString())
                      ],
                    ),
                  if (visitCompleted != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total time:'),
                        Text(visitCompleted!
                            .difference(patientWaiting!)
                            .toString())
                      ],
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: BasicButton(
                  onPressed: () {
                    if (patientWaiting == null) {
                      setState(() {
                        patientWaiting = DateTime.now();
                      });
                    } else if (patientAtHigenist == null) {
                      setState(() {
                        patientAtHigenist = DateTime.now();
                      });
                    } else if (patientAtDoctor == null) {
                      setState(() {
                        patientAtDoctor = DateTime.now();
                      });
                    } else {
                      setState(() {
                        visitCompleted = DateTime.now();
                      });
                    }
                  },
                  label: 'Add timestamp'),
            )
          ],
        ),
      ),
    );
  }
}
