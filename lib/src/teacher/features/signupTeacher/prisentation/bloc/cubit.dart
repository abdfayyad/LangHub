
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lang_hub/src/teacher/features/signupTeacher/data/sign_in_model_teacher.dart';
import 'package:lang_hub/src/teacher/features/signupTeacher/prisentation/bloc/states.dart';
import 'package:http/http.dart'as http;

import '../../../../../util/end_pointes.dart';


class SignInCubitTeacher extends Cubit<SignInScreenStatesTeacher>
{
  // final DioHelper dioHelper;
  // late SignInModel signInModel;
  String ? errorState;
  SignInCubitTeacher():super(SignInInitialStateTeacher()) ;
// SignInCubit({required this.dioHelper}):super(SignInInitialState()) ;
  static SignInCubitTeacher get(context)=>BlocProvider.of(context);
  late SignInModelTeacher signInModel;
  Future<void> userSignIn(String firstName,String lastName,String email,String phoneNumber, String password) async {
    // Define the API endpoint URL
    final url = Uri.parse('${URL}teacher/register');

    // Create a map with the request data
    final data = {
      'first_name': firstName,
      'last_name':lastName,
      'email': email,
      'phone_number': phoneNumber,
      'password':password
    };

    try {
      emit(SignInLoadingStateTeacher());
      final response = await http.post(url, body: data);

      // Check if the request was successful
      if (response.statusCode == 200) {

        // Request successful, do something with the response
        print('Login successful');
        print(response.body);
        final responseData = jsonDecode(response.body);
        signInModel=SignInModelTeacher.fromJson(responseData);
        emit(SignInSuccessStateTeacher(signInModel));
      } else {
        emit(SignInErrorStateTeacher());
        // Request failed, handle the error
        print('singin Filed failed');

      }
    } catch (e) {
      emit(SignInErrorStateTeacher());
      // An error occurred during the request
      print('Errorpppppp: $e');
    }
  }
  IconData suffix=Icons.visibility;
  bool isPasswordShow=true;
  void changePasswordVisibility(){
    isPasswordShow=!isPasswordShow;

    suffix= isPasswordShow?
    Icons.visibility:Icons.visibility_off;
    emit(SignInChangePasswordVisibilityStateTeacher());
  }
}