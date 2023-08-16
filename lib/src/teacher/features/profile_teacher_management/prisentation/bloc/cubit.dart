import 'package:bloc/bloc.dart';
import 'package:lang_hub/src/teacher/features/profile_teacher_management/prisentation/bloc/status.dart';

class ProfileTeacherCubit extends Cubit<ProfileTeacherStatus>{
  ProfileTeacherCubit():super(ProfileTeacherInitializeState());
}