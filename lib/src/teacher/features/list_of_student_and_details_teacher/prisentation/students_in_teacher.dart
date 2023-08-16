import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../util/colors.dart';
import 'bloc/cubit.dart';
import 'bloc/status.dart';

class StudentsDetailsInTeacher extends StatelessWidget {
  const StudentsDetailsInTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context)=>StudentInTeacherCubit(),
        child: BlocConsumer<StudentInTeacherCubit,StudentInTeacherState>(
        listener: (context,state){},
    builder: (context,state){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Student details',
          style: TextStyle(color: mainColor),
        ),
        backgroundColor: fillColorInTextFormField,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: GridView.builder(
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
      ),
    );
    },
        ),
    );
  }
}
