import 'package:flutter/material.dart';
import 'dart:math';

class FirstTask extends StatefulWidget {
  const FirstTask({Key? key}) : super(key: key);

  @override
  State<FirstTask> createState() => _FirstTaskState();
}

class _FirstTaskState extends State<FirstTask>
    with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animController=AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    animation = Tween<double>(begin: 0, end: 2 * pi).animate(animController)
      ..addListener(() {
        setState(() {});
      })..addStatusListener((status) {
        if(status==AnimationStatus.completed){
          animController.repeat();
        }else if(status==AnimationStatus.dismissed){
          animController.forward();
        }
      });
    animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Transform.rotate(
            angle: animation.value,
            child: Container(
              height: 160,
              width: 160,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle, color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
