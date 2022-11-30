import 'package:animations/companents/constants/image.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SecondTask extends StatefulWidget {
  const SecondTask({Key? key}) : super(key: key);

  @override
  State<SecondTask> createState() => _SecondTaskState();
}

class _SecondTaskState extends State<SecondTask>
    with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );
    animation = Tween<double>(begin: 0, end: pi * 2)
        .animate(animController)
        ..addListener(() {
      setState(() {});
    })..addStatusListener((status) {
      if(status==AnimationStatus.completed){
        animController.repeat();
      }else if(status==AnimationStatus.dismissed){
        animController.repeat();
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
          child: SizedBox(
            height: 120,
            width: 400,
            child: Stack(
              children: [
                Container(
                  height: 300,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.car),
                          fit: BoxFit.fitWidth)),
                ),
                Positioned(
                  bottom: 0,
                  left: 31,
                  child: Transform.rotate(
                    angle: animController.value,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppImages.wheel),
                              fit: BoxFit.fitWidth)),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -2,
                  right: 58,
                  child: Transform.rotate(
                    angle: animController.value,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppImages.wheel),
                              fit: BoxFit.fitWidth)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
