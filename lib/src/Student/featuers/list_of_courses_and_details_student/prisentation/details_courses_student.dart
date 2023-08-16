import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/status.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/profile_teacher_in%20course.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/show_lessons_student.dart';
import 'package:lang_hub/src/Student/featuers/widgets/show_time_and_days.dart';

import '../../../../util/colors.dart';
import '../../../../util/details_container.dart';
import '../../../../util/myTextField.dart';
import '../../../../util/summary.dart';

class DetailsCoursesStudent extends StatelessWidget {
  const DetailsCoursesStudent({Key? key}) : super(key: key);
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context)=>CourseStudentCubit(),
    child: BlocConsumer<CourseStudentCubit,CourseStudentStatus>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'courses details',
              style: TextStyle(color: mainColor),
            ),
            backgroundColor: fillColorInTextFormField,
            iconTheme: IconThemeData(color: mainColor),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 234.h,
                    width: 253.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/p.png')),
                      color: mainColor,
                      borderRadius: BorderRadius.circular(38.r),
                    ),
                  ),
                  detailsContainer(text: 'Antro A'),
                  detailsContainer(text: '5500.sp'),
                  detailsContainer(text: '30 hours'),
                  detailsContainer(text: '15seats'),
                  InkWell(
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileTeacherInCourse()));},
                      child: detailsContainer(text: 'given by mostafa')),
                  SizedBox(height: 10.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 0.h,horizontal: 20.w),
                    child: Column(

                      children: [
                        ShowDaysAndTime(day: "Saturday ", chickBoxValue: false, startTime: "10:10 AM", endTime: "9:50 AM"),
                        ShowDaysAndTime(day: "Sunday   ", chickBoxValue: true, startTime: "10:10 AM", endTime: "9:50 AM"),
                        ShowDaysAndTime(day: "Monday   ", chickBoxValue: true, startTime: "10:10 AM", endTime: "9:50 AM"),
                        ShowDaysAndTime(day: "Tuesday  ", chickBoxValue: true, startTime: "10:10 AM", endTime: "9:50 AM"),
                        ShowDaysAndTime(day: "Wednesday", chickBoxValue: true, startTime: "10:10 AM", endTime: "9:50 AM"),
                        ShowDaysAndTime(day: "Thursday ", chickBoxValue: true, startTime: "10:10 AM", endTime: "9:50 AM"),
                        ShowDaysAndTime(day: "Friday   ", chickBoxValue: true, startTime: "10:10 AM", endTime: "9:50 AM"),
                      ],),
                  ),

                  SizedBox(
                    height: 15.h,
                  ),
                  ShowMoreShowLess(text: description),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: mainColor,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowLessonsStudent()));
            },
            child: Icon(Icons.text_snippet_outlined),
          ),
        );
      },
    ),
    );
  }
}
