import 'package:bloc/bloc.dart';
import 'package:lang_hub/src/Student/featuers/list_institute_and_details_student/prisentation/bloc/status.dart';

class InstituteStudentCubit extends Cubit<InstituteStudentStatus>{
  InstituteStudentCubit():super(InstituteStudentInitializeState());
}