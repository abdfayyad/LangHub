import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lang_hub/src/both/Login/prisentation/bloc/status.dart';

class LoginScreenCubit extends Cubit<LoginScreenStatus>{
  LoginScreenCubit():super(LoginScreenInitializeState());
}