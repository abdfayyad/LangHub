
abstract class SignInScreenStatesTeacher{}

class SignInInitialStateTeacher extends SignInScreenStatesTeacher{}
class SignInLoadingStateTeacher extends SignInScreenStatesTeacher{}
class SignInSuccessStateTeacher extends SignInScreenStatesTeacher
{
  // final SignInModel signInModel;
  //
  // SignInSuccessState(this.signInModel);
}
class SignInErrorStateTeacher extends SignInScreenStatesTeacher{
  final String ? error;
  SignInErrorStateTeacher(this.error);
}
class SignInChangePasswordVisibilityStateTeacher extends SignInScreenStatesTeacher{}
