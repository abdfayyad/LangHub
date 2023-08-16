import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:lang_hub/src/Student/featuers/search_and_enrollment_student/prisentation/bloc/status.dart';
import 'package:lang_hub/src/util/end_pointes.dart';

import '../../../../../util/shared_preferences.dart';

enum SearchStatus {
  initial,
  loading,
  success,
  failure,
}
class SearchStudentCubit extends Cubit<SearchStudentStatus> {
  SearchStudentCubit() : super(SearchStudentInstituteInitializeState());
///----------------------------------------------------search for institute
  Future<void> searchForInstitute(String data) async {
    emit(SearchStudentInstituteLoadingState());
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    try {
      final response = await http.post(
        Uri.parse('your_post_url'),
        body: data,
        headers: headers
      );
      if (response.statusCode == 200) {
        emit(SearchStudentInstituteSuccessState());
        print ("search institute success");
      } else {
        emit(SearchStudentInstituteErrorState());
        print("search institute  field");
      }
    } catch (e) {
      emit(SearchStudentInstituteErrorState());
      print(e);
    }
  }
  ///----------------------------------------------search for offers
  Future<void> searchForOffer(String data) async {
    emit(SearchStudentOfferLoadingState());
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${SharedPref.getData(key: 'token')}', // Replace with your header key and value
    };
    try {
      final response = await http.post(
        Uri.parse('${URL}student/',),
        body: data,
        headers: headers
      );
      if (response.statusCode == 200) {
        print("search institute  success");
        emit(SearchStudentOfferSuccessState());
      } else {
        print("search offer field ");
        emit(SearchStudentOfferErrorState());
      }
    } catch (e) {
      emit(SearchStudentOfferErrorState());
      print(e);
    }
  }

int cc=1;
void changValueOfSearch1(int x){
  cc=x;
  emit(ChangeValueIndex());
}
}

