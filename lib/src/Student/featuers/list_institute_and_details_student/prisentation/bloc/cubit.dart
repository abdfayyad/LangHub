import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:lang_hub/src/Student/featuers/list_institute_and_details_student/prisentation/bloc/status.dart';
import 'package:http/http.dart'as http;
import 'package:lang_hub/src/util/end_pointes.dart';

import '../../../../../util/shared_preferences.dart';
import '../../data/show_details_institute_student_model.dart';
import '../../data/show_student_institute_model.dart';


class InstituteStudentCubit extends Cubit<InstituteStudentStatus>{
  InstituteStudentCubit():super(InstituteStudentInitializeState());
///show Student institute List
  ShowStudentInstituteModel? showStudentInstituteModel;
  Future<ShowStudentInstituteModel?> getListStudentInstitute() async {
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    final response = await http.get(
        Uri.parse('${URL}student/academies'),headers: headers);

    if (response.statusCode == 200) {
      print("institute success");
      // print(response.body);
      final parsedJson = jsonDecode(response.body);
      showStudentInstituteModel= ShowStudentInstituteModel.fromJson(parsedJson);
      print(showStudentInstituteModel!.message);
      emit(InstituteStudentSuccessState(showStudentInstituteModel!));
    }else {
      print("certificate field");
      emit(InstituteStudentErrorState());
      throw Exception('Failed to load profile data');
    }
  }


  ///show details institute
  ShowDetailsInstituteStudentModel?showDetailsInstituteStudentModel;
  Future<ShowStudentInstituteModel?> getListStudentInstituteDetails(int id) async {
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    final response = await http.get(
        Uri.parse('${URL}student/academies/show/${id}'),headers: headers);

    if (response.statusCode == 200) {
      print("institute details success");
      // print(response.body);
      final parsedJson = jsonDecode(response.body);
     // print(response.body);
      showDetailsInstituteStudentModel= ShowDetailsInstituteStudentModel.fromJson(parsedJson);
      print(showDetailsInstituteStudentModel!.message);
      emit(InstituteDetailsStudentSuccessState(showDetailsInstituteStudentModel!));
    }else {
      print("certificate field");
      emit(InstituteDetailsStudentErrorState());
      throw Exception('Failed to load profile data');
    }
  }
}