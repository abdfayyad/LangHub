import 'package:bloc/bloc.dart';
import 'package:lang_hub/src/teacher/features/pending_requests/prisintation/bloc/status.dart';

class PendingListTeacherCubit extends Cubit<PendingListTeacherStatus>{
  PendingListTeacherCubit():super(PendingListTeacherInitializeState());
  ///show pending list Teacher and cancel enrollment



}