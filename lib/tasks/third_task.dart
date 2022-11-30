import 'package:flutter/material.dart';

class ThirdTask extends StatefulWidget {
  const ThirdTask({Key? key}) : super(key: key);

  @override
  State<ThirdTask> createState() => _ThirdTaskState();
}

class _ThirdTaskState extends State<ThirdTask> {
  num rigth=10;
  num up=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              AnimatedPositioned(
                  right: rigth.toDouble(),
                  top: up.toDouble(),
                  duration: const  Duration(seconds: 1),
                  child: Container(
                    width: 100,
                    height: 90,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  )),
              Positioned(
                bottom: 10,
                left: 100,
                child: SizedBox(
                  width: 180,
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              up-=30;
                            });
                          }, icon: Icon(Icons.arrow_circle_up)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                rigth+=30;
                              });
                            },
                            icon: Icon(Icons.arrow_circle_left),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                rigth-=30;
                              });
                            },
                            icon: Icon(Icons.arrow_circle_right),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              up+=30;
                            });
                          }, icon: Icon(Icons.arrow_circle_down))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
