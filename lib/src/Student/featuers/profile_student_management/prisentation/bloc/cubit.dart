import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lang_hub/src/Student/featuers/profile_student_management/data/profile_model.dart';
import 'package:lang_hub/src/Student/featuers/profile_student_management/prisentation/bloc/status.dart';
import 'package:http/http.dart'as http;
import 'package:lang_hub/src/util/end_pointes.dart';

import '../../../../../util/shared_preferences.dart';
import '../../data/show_certificate_model.dart';
class ProfileStudentCubit extends Cubit<ProfileStudentStatus>{
  ProfileStudentCubit():super(ProfileStudentInitialState());
static ProfileStudentCubit get(context)=>BlocProvider.of(context);
  ///git profile data
 ProfileStudentModel? profileStudentModel;
  Future<Map<String, dynamic>> getProfileData() async {

    final url = '${URL}student/profile'; // Replace with your API endpoint URL

    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    final response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {
      print(" get profile Success");
      final jsonData = jsonDecode(response.body);
      profileStudentModel=ProfileStudentModel.fromJson(jsonData);
      print(response.body);
      emit(ProfileStudentSuccessState(profileStudentModel!));
      return jsonData;
    } else {
      print("profile filed");
      throw Exception('Failed to load profile data');
    }
  }
///git certificate date
ShowCertificateModel ?showCertificateModel;
  Future<ShowCertificateModel?> fetchCertificateData() async {
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    final response = await http.get(
        Uri.parse('${URL}student/courses/certificate'),headers: headers);

    if (response.statusCode == 200) {
      print("show success");
      print(response.body);
      final parsedJson = jsonDecode(response.body);
      showCertificateModel= ShowCertificateModel.fromJson(parsedJson);
      print(showCertificateModel);
      emit(ShowCertificateStudentSuccessState(showCertificateModel!));
    }else {
      print("certificate field");
      emit(ShowCertificateStudentErrorState());
      throw Exception('Failed to load profile data');
    }
  }
   ///edit profile student -------------------------------
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

    if (imageFile != null) {
      request.files.add(http.MultipartFile(
        'image',
        imageFile.readAsBytes().asStream(),
        imageFile.lengthSync(),
        filename: imageFile.path.split('/').last,
      ));
    }

    var response = await request.send();
    emit(EditProfileStudentLoadingState());
    if (response.statusCode == 200) {
      print('Upload success');

      // final parsedJson = jsonDecode(response);
      emit(EditProfileStudentSuccessState());
    } else {
      emit(EditProfileStudentErrorState());
      print('Upload failed');
    }
  }


   ///change password----------------------------------
  ChangePasswordModel? changePasswordModel;
  Future<void> changePasswordStudent(String oldPassword, String newPassword) async {
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };

    final url = Uri.parse('${URL}student/profile/change-password');
    final data = {
      'current_password': oldPassword,
      'new_password': newPassword};
    try {
      emit(ChangePasswordStudentLoadingState());
      final response = await http.post(url, body: data,headers: headers);
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
         changePasswordModel=ChangePasswordModel.fromJson(responseData);
        emit(ChangePasswordStudentSuccessState(changePasswordModel!));
      } else {
        emit(ChangePasswordStudentErrorState());
        print('Login failed');
      }
    } catch (e) {
      emit(ChangePasswordStudentErrorState());
      print('Error: $e');
    }
  }
}
class ChangePasswordModel {
  int? status;
  String? message;

  ChangePasswordModel({this.status, this.message});

  ChangePasswordModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}