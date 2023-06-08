import 'package:bloc/bloc.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/status.dart';

class CourseStudentCubit extends Cubit<CourseStudentStatus>{
  CourseStudentCubit():super(CourseStudentInitializeState());

}