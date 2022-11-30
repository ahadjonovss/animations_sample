import 'package:flutter/material.dart';

class SeventhTask extends StatefulWidget {
  const SeventhTask({Key? key}) : super(key: key);

  @override
  State<SeventhTask> createState() => _SeventhTaskState();
}

class _SeventhTaskState extends State<SeventhTask> {
  bool isCircle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedContainer(
          duration:  Duration(milliseconds: 900),
            margin: const EdgeInsets.only(top: 200, left: 100),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: isCircle == true ? BoxShape.circle : BoxShape.rectangle,
              border: Border.all(
                  color: isCircle ? Colors.black : Colors.red,
                  width: isCircle == true ? 1 : 10),
              color: Colors.yellow,
            ),
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isCircle = !isCircle;
          });
        },
      ),
    );
  }
}
