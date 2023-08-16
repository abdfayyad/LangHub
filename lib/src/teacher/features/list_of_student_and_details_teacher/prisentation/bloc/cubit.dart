import 'package:bloc/bloc.dart';
import 'package:lang_hub/src/teacher/features/list_of_student_and_details_teacher/prisentation/bloc/status.dart';

class StudentInTeacherCubit extends Cubit<StudentInTeacherState>{
  StudentInTeacherCubit():super(StudentInTeacherInitializeState());

}
