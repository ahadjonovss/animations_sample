import 'package:flutter/material.dart';

import '../companents/constants/image.dart';

class SecondEightTask extends StatefulWidget {
  String buttonText;
   SecondEightTask({required this.buttonText,Key? key}) : super(key: key);

  @override
  State<SecondEightTask> createState() => _SecondEightTaskState();
}

class _SecondEightTaskState extends State<SecondEightTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200,),
            Hero(
                tag: 'thunder',
                child: Image.asset(AppImages.thunder,width: 160,)),
            SizedBox(height: 12,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.lightBlueAccent)

              ),
              child: Center(child: Text("Login",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 12,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.lightBlueAccent)

              ),
              child: Center(child: Text("Login",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 12,),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue

                ),
                child: Center(child: Text(widget.buttonText,style: TextStyle(color: Colors.white),)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
