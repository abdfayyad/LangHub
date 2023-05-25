import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentsInTeacher extends StatelessWidget {
  const StudentsInTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
              crossAxisSpacing: 5.h,
        mainAxisSpacing: 5.h
      ),
      itemCount: 30,
      itemBuilder: (BuildContext context,int index){
        return  Column(
          children: [
            SizedBox(height: 10.h,),

            CircleAvatar(
              backgroundImage: AssetImage('assets/images/p.png'),
              radius: 40.r,
            ),
            SizedBox(height: 5.h,),
            Text('abd',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),)
          ],
        );
      },
    );
  }
}
