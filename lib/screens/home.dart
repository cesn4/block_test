import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isActive = false;
  int number = 0;

  @override
  Widget build(BuildContext context) {
    final colorShceme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorShceme.primary,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              number.toString(),
              style: TextStyle(
                color: colorShceme.secondary,
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTapDown: (e) {
                setState(() {
                  isActive = true;
                });
              },
              onTapUp: (e) {
                Future.delayed(
                  const Duration(milliseconds: 100),
                  () {
                    setState(() {
                      isActive = false;
                    });
                  },
                );
              },
              onTap: () {
                setState(() {
                  number++;
                });
              },
              child: AnimatedContainer(
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 400),
                padding: EdgeInsets.all(isActive ? 60 : 80),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorShceme.secondary,
                    boxShadow: [
                      BoxShadow(
                          color: colorShceme.secondary,
                          blurRadius: 10.0,
                          spreadRadius: 2.0)
                    ]),
                child: AnimatedScale(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  scale: isActive ? 0.8 : 1,
                  child: Text(
                    'Press Me',
                    style: TextStyle(
                        color: colorShceme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
