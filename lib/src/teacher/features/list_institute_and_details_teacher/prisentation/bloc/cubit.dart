import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart'as http;
import 'package:lang_hub/src/teacher/features/list_institute_and_details_teacher/prisentation/bloc/status.dart';
import 'package:lang_hub/src/util/end_pointes.dart';

import '../../../../../util/shared_preferences.dart';


class InstituteTeacherCubit extends Cubit<InstituteDetailsTeacherStatus>{
  InstituteTeacherCubit():super(InstituteDetailsTeacherInitializeState());
///show Teacher institute List

  Future<void> getListTeacherInstitute() async {
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    final response = await http.get(
        Uri.parse('${URL}Teacher/academies'),headers: headers);

    if (response.statusCode == 200) {
      print("institute success");
      // print(response.body);
      final parsedJson = jsonDecode(response.body);

      emit(InstituteDetailsTeacherSuccessState());
    }else {
      print("certificate field");
      emit(InstituteDetailsTeacherErrorState());
      throw Exception('Failed to load profile data');
    }
  }


  ///show details institute

  Future<void> getListTeacherInstituteDetails(int id) async {
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    final response = await http.get(
        Uri.parse('${URL}Teacher/academies/show/${id}'),headers: headers);

    if (response.statusCode == 200) {
      print("institute details success");
      // print(response.body);
      final parsedJson = jsonDecode(response.body);
     // print(response.body);

      //emit(InstituteDetailsTeacherSuccessState());
    }else {
      print("certificate field");
      //emit(InstituteDetailsTeacherErrorState());
      throw Exception('Failed to load profile data');
    }
  }
}