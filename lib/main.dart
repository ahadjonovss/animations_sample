import 'package:animations/preparing/first_animation.dart';
import 'package:animations/tasks/fifth_task.dart';
import 'package:animations/tasks/first_task.dart';
import 'package:animations/tasks/fourth_task.dart';
import 'package:animations/tasks/second_task.dart';
import 'package:animations/tasks/task_sixth.dart';
import 'package:animations/tasks/third_task.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskSixth()
    );
  }
}
