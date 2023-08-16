import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/data/courses_and_offers_model.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/data/show_ten_offers_model.dart';

abstract class CourseStudentStatus{}
class CourseStudentInitializeState extends CourseStudentStatus{}
class CourseStudentLoadingState extends CourseStudentStatus{}
class CourseStudentSuccessState extends CourseStudentStatus{
  ShowCoursesAndOffersModel showCoursesAndOffersModel;

  CourseStudentSuccessState(this.showCoursesAndOffersModel);
}
class CourseStudentErrorState extends CourseStudentStatus{}
///show ten offer
class TenOffersSuccessState extends CourseStudentStatus{
  ShowTenOffersModel showTenOffersModel;

  TenOffersSuccessState(this.showTenOffersModel);
}
class TenOffersErrorState extends CourseStudentStatus{}