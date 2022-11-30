import 'package:animations/companents/constants/image.dart';
import 'package:animations/tasks/second_eight.dart';
import 'package:flutter/material.dart';

class EighthTask extends StatefulWidget {
  const EighthTask({Key? key}) : super(key: key);

  @override
  State<EighthTask> createState() => _EighthTaskState();
}

class _EighthTaskState extends State<EighthTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 260,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                    tag: 'thunder',
                    child: Image.asset(AppImages.thunder,width: 80,)),
                Text("Flash Chat",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),)
              ],
            ),
            SizedBox(height: 12,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondEightTask(buttonText: "Login",)));
              },
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.lightBlueAccent

                ),
                child: Center(child: Text("Login",style: TextStyle(color: Colors.white),)),
              ),
            ),
            SizedBox(height: 12,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondEightTask(buttonText: "Register",)));
              },
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue

                ),
                child: Center(child: Text("Register",style: TextStyle(color: Colors.white),)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
