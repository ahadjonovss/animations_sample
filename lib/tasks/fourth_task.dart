import 'package:flutter/material.dart';
import 'dart:math' as math;

class FourthTask extends StatefulWidget {
  const FourthTask({Key? key}) : super(key: key);

  @override
  State<FourthTask> createState() => _FourthTaskState();
}

class _FourthTaskState extends State<FourthTask> {
  num width = 120;
  num height = 90;
  num borderRadius = 20;
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: AnimatedContainer(
              curve: Curves.easeInToLinear,
              width: width.toDouble(),
              height: height.toDouble(),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius.toDouble()),
                  color: color),
              duration: const Duration(milliseconds: 900),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0);
            width=math.Random().nextInt(200);
            height=math.Random().nextInt(200);
            borderRadius=math.Random().nextInt(60);

          });
        },
      ),
    );
  }
}
