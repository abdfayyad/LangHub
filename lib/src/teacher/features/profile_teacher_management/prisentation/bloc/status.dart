import 'package:lang_hub/src/teacher/features/profile_teacher_management/data/profile_teacher_model.dart';

abstract class ProfileTeacherStatus{}
class ProfileTeacherInitializeState extends ProfileTeacherStatus{}
class ProfileTeacherLoadingState extends ProfileTeacherStatus{}
class ProfileTeacherSuccessState extends ProfileTeacherStatus{
ProfileTeacherModel profileTeacherModel;

ProfileTeacherSuccessState(this.profileTeacherModel);
}
class ProfileTeacherErrorState extends ProfileTeacherStatus{}
///
class UpdateProfileTeacherLoadingState extends ProfileTeacherStatus{}
class UpdateProfileTeacherSuccessState extends ProfileTeacherStatus{

}
class UpdateProfileTeacherErrorState extends ProfileTeacherStatus{}
///
class AddPostProfileTeacherLoadingState extends ProfileTeacherStatus{}
class AddPostProfileTeacherSuccessState extends ProfileTeacherStatus{

}
class AddPostProfileTeacherErrorState extends ProfileTeacherStatus{}
///
class ChangePasswordProfileTeacherLoadingState extends ProfileTeacherStatus{}
class ChangePasswordProfileTeacherSuccessState extends ProfileTeacherStatus{

}
class ChangePasswordProfileTeacherErrorState extends ProfileTeacherStatus{}

///////////////////////
class DeletePostProfileTeacherLoadingState extends ProfileTeacherStatus{}
class DeletePostProfileTeacherSuccessState extends ProfileTeacherStatus{

}
class DeletePostProfileTeacherErrorState extends ProfileTeacherStatus{}