import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/status.dart';
import 'package:lang_hub/src/util/colors.dart';

class ShowLessonsStudent extends StatelessWidget {
  const ShowLessonsStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context)=>CourseStudentCubit(),

    child:BlocConsumer<CourseStudentCubit,CourseStudentStatus>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            backgroundColor: fillColorInTextFormField,
            foregroundColor: mainColor,
            title: Text("Lessons",style: TextStyle(
                fontSize: 24.sp,fontWeight: FontWeight.bold,color: mainColor
            ),),
          ),
          body: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350.w,
                    height: 270.h,
                    decoration: BoxDecoration(
                        color: fillColorInTextFormField,
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: borderContainer,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "tomoro I will give you the ant lesson the ant is an small animal",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: mainColor),
                          ),
                          SizedBox(height: 15.h,),
                          Text(
                            "Q1:What is the ant",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: mainColor),
                          ),
                          SizedBox(height: 10.h,),
                          Text(
                            "Q2:Whate is the ant",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: mainColor),
                          ),
                          SizedBox(height: 10.h,),
                          Text(
                            "Q3:What is the ant",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: mainColor),
                          ),
                          SizedBox(height: 10.h,),
                          Text(
                            "Q4:what is the ant?",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: mainColor),
                          ),
                          SizedBox(height: 10.h,),
                          Text(
                            "Q5:What is the ant",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: mainColor),
                          ),
                          SizedBox(height: 10.h,),
                          Text(
                            "Q6:what is the ant?",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: mainColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        );
      },
    ) ,
    );
  }
}
