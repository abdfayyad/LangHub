import 'package:bloc/bloc.dart';
import 'package:lang_hub/src/Student/featuers/pending_list_student/prisentation/bloc/status.dart';

class PendingListStudentCubit extends Cubit<PendingListStudentStatus>{
  PendingListStudentCubit():super(PendingListStudentInitializeState());
  ///show pending list student and cancel enrollment



}