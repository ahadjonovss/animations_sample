import 'package:flutter/material.dart';
import 'dart:math';

class FifthTask extends StatefulWidget {
  const FifthTask({Key? key}) : super(key: key);

  @override
  State<FifthTask> createState() => _FifthTaskState();
}

class _FifthTaskState extends State<FifthTask> {
  int percent=0;
  Color color = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              AnimatedContainer(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color
                ), duration: Duration(seconds: 1),
              ),
              const SizedBox(height: 24,),
              SizedBox(
                height: 30,
                width: 300,
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedContainer(
                      height: 30,
                      width: percent*3.toDouble(),
                      color: Colors.blue,
                      duration: Duration(milliseconds: 800),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.lightBlueAccent.withOpacity(0.8)

                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Text(percent!=100?"$percent%":"Done!"),
              SizedBox(height: 24,),
              InkWell(
                child: Container(
                 width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue,
                  ),
                  child: Center(child: Text("Animate",style: TextStyle(color: Colors.white),))
                  ,
                ),
                onTap: (){
                  color = Color((Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0);
                  bool isFound=true;
                    while(isFound){
                      int minus=100-percent;
                      int nextpercent=Random().nextInt(percent+(percent>95?minus:18));
                      if(nextpercent>percent+5 && nextpercent<101){
                        percent=nextpercent;
                        isFound=false;
                        setState((){});
                      }
                      if(percent==100){
                        percent=0;
                        isFound=false;
                        setState(() {});
                      }
                      if(percent>95){
                        percent=100;
                        isFound=false;
                        setState(() {
                        });
                      }

                    }

                  }
              )
            ],
          ),

        ),
      ),
    );
  }
}
