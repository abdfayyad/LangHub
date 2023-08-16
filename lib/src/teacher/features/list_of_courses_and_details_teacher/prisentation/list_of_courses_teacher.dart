import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/teacher/features/list_of_courses_and_details_teacher/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/teacher/features/list_of_courses_and_details_teacher/prisentation/bloc/status.dart';
import 'package:lang_hub/src/teacher/features/list_of_courses_and_details_teacher/prisentation/courseDetailsTeacher.dart';
import 'package:lang_hub/src/util/SmoothPageIndicator.dart';

import '../../../../util/colors.dart';

class ListOfCoursesTeacher extends StatelessWidget {
  const ListOfCoursesTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context)=>CourseTeacherCubit(),
    child:  BlocConsumer<CourseTeacherCubit,CourseTeacherStatus>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          body: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CourseDetails()));
                      // navigateTo(context, CourseDetails());
                    },
                    child: Container(
                      width: 380.w,
                      height: 107.h,
                      decoration: BoxDecoration(
                          color: fillColorInTextFormField,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: borderContainer,
                          )),
                      child: Row(
                        children: [
                          Container(
                            height: 107.h,
                            width: 107.w,
                            decoration: BoxDecoration(
                              image:DecorationImage(fit: BoxFit.cover,image:  AssetImage('assets/images/p.jpg'), ),
                              color: fillColorInTextFormField,
                              borderRadius: BorderRadius.circular(10.r),
                              // border: Border.all(
                              //   color: borderContainer,
                              // )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('ALTC',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                                Text('ALTC institue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp,color: mainColor),),
                                Text("start in 1/10/2023",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16.sp,color: mainColor),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        );
      },
    ),
    );
  }
}
