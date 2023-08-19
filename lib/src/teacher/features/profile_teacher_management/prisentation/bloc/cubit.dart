import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lang_hub/src/teacher/features/profile_teacher_management/prisentation/bloc/status.dart';
import 'package:http/http.dart'as http;

import '../../../../../util/end_pointes.dart';
import '../../../../../util/shared_preferences.dart';
import '../../data/profile_teacher_model.dart';
class ProfileTeacherCubit extends Cubit<ProfileTeacherStatus>{
  ProfileTeacherCubit():super(ProfileTeacherInitializeState());
  static ProfileTeacherCubit get(context)=>BlocProvider.of(context);
ProfileTeacherModel ?profileTeacherModel;

  Future<ProfileTeacherModel?> getProfileInfo() async {
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    emit(ProfileTeacherLoadingState());
    final response = await http.get(
        Uri.parse('${URL}teacher/profile'),headers: headers);

    if (response.statusCode == 200) {
      print("institute details success");
      print(response.body);
      final parsedJson = jsonDecode(response.body);
      // print(response.body);
      profileTeacherModel= ProfileTeacherModel.fromJson(parsedJson);
      print(profileTeacherModel!.message);
      emit(ProfileTeacherSuccessState(profileTeacherModel!));
    }else {
      print("certificate field");
      emit(ProfileTeacherErrorState());
      throw Exception('Failed to load profile data');
    }
  }


  ///update information profile
  Future<void> updateProfile(
     String name,
     String email,
     String phone,
     File imageFile,
 ) async {
    String url = '${URL}student/profile'; // Replace with your API URL

    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['name'] = name;
    request.fields['email'] = email;
    request.fields['phone'] = phone;

    request.files.add(http.MultipartFile(
      'image',
      imageFile.readAsBytes().asStream(),
      imageFile.lengthSync(),
      filename: imageFile.path.split('/').last,
    ));

    var response = await request.send();
emit(UpdateProfileTeacherLoadingState());
    if (response.statusCode == 200) {
      print('Upload success');

      // final parsedJson = jsonDecode(response);
       emit(UpdateProfileTeacherSuccessState());
    } else {
      emit(UpdateProfileTeacherErrorState());
      print('Upload failed');
    }
  }
  Future<void> addPost(
      String title,
      File imageFile,
      ) async {
    String url = '${URL}student/profile'; // Replace with your API URL

    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['title'] = title;
    request.files.add(http.MultipartFile(
      'image',
      imageFile.readAsBytes().asStream(),
      imageFile.lengthSync(),
      filename: imageFile.path.split('/').last,
    ));
    var response = await request.send();
    emit(AddPostProfileTeacherLoadingState());
    if (response.statusCode == 200) {
      print('Upload success');
      // final parsedJson = jsonDecode(response);
      emit(AddPostProfileTeacherSuccessState());
    } else {
      emit(AddPostProfileTeacherErrorState());
      print('Upload failed');
    }
  }


}