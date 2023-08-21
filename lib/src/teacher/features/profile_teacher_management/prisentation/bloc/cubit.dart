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
     String? name,
     String ?email,
     String? phone,
     File ?imageFile,
 ) async {
    String url = '${URL}student/profile'; // Replace with your API URL

    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['name'] = name!;
    request.fields['email'] = email!;
    request.fields['phone'] = phone!;

    request.files.add(http.MultipartFile(
      'image',
      imageFile!.readAsBytes().asStream(),
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
  /// upload post -------------------------------------------------------------------------------------
  Future<void> addPost(
      String title,
      File imageFile,
      ) async {
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    String url = '${URL}teacher/profile/upload-post'; // Replace with your API URL

    var request = http.MultipartRequest('POST', Uri.parse(url,),);
    request.fields['title'] = title;
    request.headers.addAll(headers);
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
///change password--------------------------------------------------------------------------------
  Future<void> changePassword(String oldPassword, String newPassword) async {
    // Define the API endpoint URL
    final url = Uri.parse('${URL}teacher/profile/change-password');
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    // Create a map with the request data
    final data = {'current_password': oldPassword, 'new_password': newPassword};

    try {
      print("tryyy");
      emit(ChangePasswordProfileTeacherLoadingState());

      final response = await http.post(url, body: data,headers: headers);
      // Check if the request was successful
      if (response.statusCode == 200) {

        // Request successful, do something with the response
        print('Login successful');
        print(response.body);
        final responseData = jsonDecode(response.body);
        // return UserModel.fromJson(responseData);
     //   loginModel=LoginModel.fromJson(responseData);
        emit(ChangePasswordProfileTeacherSuccessState());
        // print(loginModel.role);
        // print(loginModel.token);
      } else {
        emit(ChangePasswordProfileTeacherErrorState());
        // Request failed, handle the error
        print('change password  failed');
        print('Status code: ${response.statusCode}');
        print('Error message: ${response.body}');
      }
    } catch (e) {
      print(e);
      emit(ChangePasswordProfileTeacherErrorState());
      // An error occurred during the request
        print("An error occurred: $e");

    }
  }
  ///delete post------------------------------------------------------------------
  Future<void> deletePost(int id) async {
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}',
      // Replace with your header key and value
    };
    final String apiUrl = '${URL}teacher/profile/delete-post/$id';

    try {
      final response = await http.delete(Uri.parse(apiUrl), headers: headers);
      emit(DeletePostProfileTeacherLoadingState());
      if (response.statusCode == 200) {
        // Successful deletion
        print('Item with ID $id deleted successfully.');

        final jsonResponse = json.decode(response.body);
        final responseMessage = jsonResponse['message'];
        emit(DeletePostProfileTeacherSuccessState());
      } else {
        emit(DeletePostProfileTeacherErrorState());
        // Unsuccessful deletion
        print(
            'Failed to delete item with ID $id. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      emit(DeletePostProfileTeacherErrorState());
      print('An error occurred: $e');
    }
  }

}