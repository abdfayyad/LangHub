import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/teacher/features/list_of_student_and_details_teacher/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/teacher/features/list_of_student_and_details_teacher/prisentation/bloc/status.dart';
import 'package:lang_hub/src/teacher/features/list_of_student_and_details_teacher/prisentation/students_in_teacher.dart';

import '../../../../util/colors.dart';

class ListOfStudentTeacher extends StatelessWidget {
  const ListOfStudentTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context)=>StudentInTeacherCubit(),
    child: BlocConsumer<StudentInTeacherCubit,StudentInTeacherState>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          body:  ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StudentsDetailsInTeacher()));
                    // navigateTo(context, CourseDetails());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 109.h,

                    decoration: BoxDecoration(
                        color: fillColorInTextFormField,
                        borderRadius: BorderRadius.circular(0.r),
                        border: Border.all(
                          color: borderContainer,
                        )),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10.w,),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/p.png'),
                          radius: 45.r,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top :20,right: 0,bottom: 20),
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(' antro a',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                              Text(' 15 student',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16.sp,color: mainColor),),

                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 1,top :25,right: 10,bottom: 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(' ALTC institue',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16.sp,color: mainColor),),
                              ],
                            ),
                          ),
                        ),

                      ],
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
