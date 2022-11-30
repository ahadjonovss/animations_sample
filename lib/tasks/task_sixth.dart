import 'package:flutter/material.dart';

class TaskSixth extends StatefulWidget {
  const TaskSixth({Key? key}) : super(key: key);

  @override
  State<TaskSixth> createState() => _TaskSixthState();
}

class _TaskSixthState extends State<TaskSixth> {
  bool visibile=false;
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200,),
          AnimatedSwitcher(
          duration: const Duration(milliseconds: 1000),
          child: (visibile)
              ? Container(
            key: ValueKey<int>(0),
            width: 200,
            height: 200,
            color: Colors.red,
            child: Center(child: Text("This is first widget")),
          )
              : Container(
            key: ValueKey<int>(1),
            width: 200,
            height: 200,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
              child: Center(child: Text("This is first widget"))
          ),
        ),
              SizedBox(height: 24,),
              InkWell(
                  child: Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue,
                    ),
                    child: Center(child: Text("Click",style: TextStyle(color: Colors.white),))
                    ,
                  ),
                  onTap: (){
                    setState(() {
                      visibile=!visibile;
                      count++;
                    });

                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
