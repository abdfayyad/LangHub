import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/status.dart';
import 'package:http/http.dart'as http;
import 'package:lang_hub/src/util/end_pointes.dart';

import '../../../../../util/shared_preferences.dart';
import '../../data/courses_and_offers_model.dart';
import '../../data/show_ten_offers_model.dart';
class CourseStudentCubit extends Cubit<CourseStudentStatus>{
  CourseStudentCubit():super(CourseStudentInitializeState());

  ///show courses and offers
  ShowCoursesAndOffersModel ?showCoursesAndOffersModel;
  Future<ShowCoursesAndOffersModel?> getListCoursesAndOffers() async {
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    final response = await http.get(
        Uri.parse('${URL}student/courses/enrolled-courses'),headers: headers);

    if (response.statusCode == 200) {
      print("institute details success");
       print(response.body);
      final parsedJson = jsonDecode(response.body);
      // print(response.body);
      showCoursesAndOffersModel= ShowCoursesAndOffersModel.fromJson(parsedJson);
      print(showCoursesAndOffersModel!.message);
      emit(CourseStudentSuccessState(showCoursesAndOffersModel!));
    }else {
      print("certificate field");
      emit(CourseStudentErrorState());
      throw Exception('Failed to load profile data');
    }
  }
  ///ten offer -------------------------------------------------------------------------------------
 ShowTenOffersModel ?showTenOffersModel;
  Future<ShowCoursesAndOffersModel?> getTenOffer() async {
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    final response = await http.get(
        Uri.parse('${URL}student/offers/ten'),headers: headers);

    if (response.statusCode == 200) {
      print("ten  offers success");
      print(response.body);
      final parsedJson = jsonDecode(response.body);
       print(response.body);
      showTenOffersModel= ShowTenOffersModel.fromJson(parsedJson);
      print(showTenOffersModel!.message);
      emit(TenOffersSuccessState(showTenOffersModel!));
    }else {
      print("ten offers  field");
      emit(TenOffersErrorState());
      throw Exception('Failed to load profile data');
    }
  }
  ///solve exam-------------------------------------------------
//   Future<void> solveExam(String email, String password) async {
//     // Define the API endpoint URL
//     final url = Uri.parse('${URL}login');
//
//     // Create a map with the request data
//     final data = {'email': 'ahm@gmail.com', 'password': 'password'};
//
//     try {
//       print("tryyy");
//       emit(LoginScreenLoadingState());
//
//       final response = await http.post(url, body: data);
//       // Check if the request was successful
//       if (response.statusCode == 200) {
//
//         // Request successful, do something with the response
//         print('Login successful');
//         print(response.body);
//         final responseData = jsonDecode(response.body);
//         // return UserModel.fromJson(responseData);
//         loginModel=LoginModel.fromJson(responseData);
//         emit(LoginScreenSuccessState(loginModel));
//         // print(loginModel.role);
//         // print(loginModel.token);
//       } else {
//         emit(LoginScreenErrorState());
//         // Request failed, handle the error
//         print('Login failed');
//         print('Status code: ${response.statusCode}');
//         print('Error message: ${response.body}');
//       }
//     } catch (e) {
// print(e);
//     }
//   }
}