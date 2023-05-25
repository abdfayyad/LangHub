import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lang_hub/src/teacher/features/home/prisentation/bloc/states.dart';
import 'package:lang_hub/src/teacher/features/home/prisentation/chatting.dart';
import 'package:lang_hub/src/teacher/features/home/prisentation/courseDetailsTeacher.dart';
import 'package:lang_hub/src/teacher/features/home/prisentation/institute_details.dart';
import 'package:lang_hub/src/teacher/features/home/prisentation/list_of_institute_teacher.dart';
import 'package:lang_hub/src/teacher/features/home/prisentation/students_in_teacher.dart';

import '../profile_teacher.dart';
import '../list_of_courses_teacher.dart';

class HomeTeacherCubit extends Cubit<HomeTeacherStates>{
  HomeTeacherCubit():super(HomeInitialState());
  static HomeTeacherCubit get(context)=>BlocProvider.of(context);
  int currentIndex = 2;

  List<Widget> screen = [

    ListOfInstituteTeacher(),
    MyHomePage(),
    ListOfCoursesTeacher(),
    StudentsInTeacher(),
    Chatting(),



  ];

  void changeIndex(int index) {

    currentIndex = index;

    emit(HomeChangeBottomNavBarState());
  }

}