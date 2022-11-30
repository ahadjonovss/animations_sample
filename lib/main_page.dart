import 'package:animations/preparing/first_animation.dart';
import 'package:animations/tasks/eighth_task.dart';
import 'package:animations/tasks/fifth_task.dart';
import 'package:animations/tasks/first_task.dart';
import 'package:animations/tasks/fourth_task.dart';
import 'package:animations/tasks/second_task.dart';
import 'package:animations/tasks/seventh_task.dart';
import 'package:animations/tasks/task_sixth.dart';
import 'package:animations/tasks/third_task.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage=0;
  List pages=[
    RotationAnimation(),
    FirstTask(),
    SecondTask(),
    ThirdTask(),
    FourthTask(),
    FifthTask(),
    TaskSixth(),
    SeventhTask(),
    EighthTask()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage%9],
      floatingActionButton: FloatingActionButton(
         onPressed: (){
           setState(() {
             currentPage++;
           });
         },
      ),
    );
  }
}
