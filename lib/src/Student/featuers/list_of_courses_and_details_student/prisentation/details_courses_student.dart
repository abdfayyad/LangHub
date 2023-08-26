import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/data/courses_and_offers_model.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/status.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/profile_teacher_in%20course.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/show_lessons_student.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/solve_exam_student.dart';
import 'package:lang_hub/src/Student/featuers/widgets/show_time_and_days.dart';

import '../../../../util/colors.dart';
import '../../../../util/details_container.dart';
import '../../../../util/myTextField.dart';
import '../../../../util/summary.dart';

class DetailsCoursesStudent extends StatelessWidget {
   DetailsCoursesStudent({Key? key, required this.data}) : super(key: key);
final Data ?data;
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
                          image: AssetImage('${data!.courseImage}')),
                      color: mainColor,
                      borderRadius: BorderRadius.circular(38.r),
                    ),
                  ),
                  detailsContainer(text: '${data!.name}'),
                  detailsContainer(text: '${data!.price}\$'),
                  detailsContainer(text: '${data!.hours.toString()} hours'),
                  detailsContainer(text: '${data!.seats} seats'),
                  InkWell(
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileTeacherInCourse(teacher: data!.teacher!,)));},
                      child: detailsContainer(text: 'given by ${data!.teacher!.firstName}+${data!.teacher!.lastName}')),
                  SizedBox(height: 10.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 0.h,horizontal: 20.w),
                    child: Column(

                      children: [
                        // ShowDaysAndTime(day: "Saturday ", chickBoxValue: data!.annualSchedule[0].saturday!.isOdd, startTime: "${data!.annualSchedule![0].startSaturday}", endTime: "${data!.annualSchedule![0].endSaturday}"),
                        // ShowDaysAndTime(day: "Sunday   ", chickBoxValue: data!.annualSchedule![0].sunday!.isOdd, startTime: "${data!.annualSchedule![0].startSunday}", endTime: "${data!.annualSchedule![0].endSunday}"),
                        // ShowDaysAndTime(day: "Monday   ", chickBoxValue: data!.annualSchedule![0].monday!.isOdd, startTime: "${data!.annualSchedule![0].startMonday}", endTime: "${data!.annualSchedule![0].endMonday}"),
                        // ShowDaysAndTime(day: "Tuesday  ", chickBoxValue: data!.annualSchedule![0].tuesday!.isOdd, startTime: "${data!.annualSchedule![0].startTuesday}", endTime: "${data!.annualSchedule![0].endTuesday}"),
                        // ShowDaysAndTime(day: "Wednesday", chickBoxValue: data!.annualSchedule![0].wednsday!.isOdd, startTime: "${data!.annualSchedule![0].startWednsday}", endTime: "${data!.annualSchedule![0].endWednsday}"),
                        // ShowDaysAndTime(day: "Thursday ", chickBoxValue: data!.annualSchedule![0].thursday!.isOdd, startTime: "${data!.annualSchedule![0].startThursday}", endTime: "${data!.annualSchedule![0].endThursday}"),
                        // ShowDaysAndTime(day: "Friday   ", chickBoxValue: data!.annualSchedule![0].friday!.isOdd, startTime: "${data!.annualSchedule![0].startFriday}", endTime: "${data!.annualSchedule![0].endFriday}"),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 15.h,
                  ),
                  ShowMoreShowLess(text: data!.description),
                  SizedBox(
                    height: 15.h,
                  ),
                 data!.hasActivatExam!.isEven?Container(): Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Exams for this course are available :",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.sp,
                              color: mainColor)),
                      TextButton(
                          onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>SolveExamStudent(id: data!.id!,)));
                          },
                          child: Text("Solve Exam",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                  color: mainColor)))
                    ],
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: mainColor,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowLessonsStudent(id: data!.id!,)));
            },
            child: Icon(Icons.text_snippet_outlined),
          ),
        );
      },
    ),
    );
  }
}
