import 'package:bloc/bloc.dart';
import 'package:lang_hub/src/teacher/features/list_of_courses_and_details_teacher/prisentation/bloc/status.dart';

class CourseTeacherCubit extends Cubit<CourseTeacherStatus>{
  CourseTeacherCubit():super(CourseTeacherInitializeState());

}