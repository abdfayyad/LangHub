
import 'package:lang_hub/src/teacher/features/list_institute_and_details_teacher/data/details_institute_teacher_model.dart';

import '../../data/all_institute_teacher_model.dart';

abstract class InstituteTeacherStatus{}
class InstituteTeacherInitializeState extends InstituteTeacherStatus{}
class InstituteTeacherLoadingState extends InstituteTeacherStatus{}
class InstituteTeacherSuccessState extends InstituteTeacherStatus{
AllInstituteTeacherModel allInstituteTeacherModel;

InstituteTeacherSuccessState(this.allInstituteTeacherModel);
}
class InstituteTeacherErrorState extends InstituteTeacherStatus{}

//////
class InstituteDetailsTeacherLoadingState extends InstituteTeacherStatus{}
class InstituteDetailsTeacherSuccessState extends InstituteTeacherStatus{
DetailsInstituteTeacherModel detailsInstituteTeacherModel;

InstituteDetailsTeacherSuccessState(this.detailsInstituteTeacherModel);
}
class InstituteDetailsTeacherErrorState extends InstituteTeacherStatus{}