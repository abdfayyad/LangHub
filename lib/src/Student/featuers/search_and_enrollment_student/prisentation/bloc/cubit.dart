import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:lang_hub/src/Student/featuers/search_and_enrollment_student/prisentation/bloc/status.dart';

enum SearchStatus {
  initial,
  loading,
  success,
  failure,
}
class SearchStudentCubit extends Cubit<SearchStudentStatus> {
  SearchStudentCubit() : super(SearchStudentInitializeState());

  // Future<void> postData(String data) async {
  //   emit(state.copyWith(status: RequestStatus.loading));
  //
  //   try {
  //     final response = await http.post(
  //       Uri.parse('your_post_url'),
  //       body: data,
  //     );
  //
  //     if (response.statusCode == 200) {
  //       emit(state.copyWith(status: RequestStatus.success));
  //     } else {
  //       emit(state.copyWith(status: RequestStatus.failure));
  //     }
  //   } catch (e) {
  //     emit(state.copyWith(status: RequestStatus.failure));
  //   }
  // }


int cc=2;
void changValueOfSearch1(int x){
  cc=x;
  emit(ChangeValueIndex());
}
}

