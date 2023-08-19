import 'package:lang_hub/src/teacher/features/list_of_courses_and_details_teacher/data/all_courses_teacher_model.dart';
import 'package:lang_hub/src/teacher/features/list_of_courses_and_details_teacher/data/show_lessons_teacher_model.dart';

import '../../data/details_courses_teacher_model.dart';

abstract class CourseTeacherStatus{}
class CourseTeacherInitializeState extends CourseTeacherStatus{}
class CourseTeacherLoadingState extends CourseTeacherStatus{}
class CourseTeacherSuccessState extends CourseTeacherStatus{
  AllCoursesTeacherModel allCoursesTeacherModel;

  CourseTeacherSuccessState(this.allCoursesTeacherModel);
}
class CourseTeacherErrorState extends CourseTeacherStatus{}

///details ------------course
class CourseTeacherOneLoadingState extends CourseTeacherStatus{}
class CourseTeacherOneSuccessState extends CourseTeacherStatus{
  DetailsCoursesTeacherModel detailsCoursesTeacherModel;

  CourseTeacherOneSuccessState(this.detailsCoursesTeacherModel);
}
class CourseTeacherOneErrorState extends CourseTeacherStatus{}

///show lessons------------
class ShowLessonsLoadingState extends CourseTeacherStatus{}
class ShowLessonsSuccessState extends CourseTeacherStatus{
 ShowLessonsTeacherModel showLessonsTeacherModel;

 ShowLessonsSuccessState(this.showLessonsTeacherModel);
}
class ShowLessonsErrorState extends CourseTeacherStatus{}