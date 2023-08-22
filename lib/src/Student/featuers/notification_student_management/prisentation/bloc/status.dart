import 'package:lang_hub/src/Student/featuers/notification_student_management/data/ListAcceptInstituteNotificationModel.dart';
import 'package:lang_hub/src/Student/featuers/notification_student_management/data/list_accept_offer_notification_model.dart';
import 'package:lang_hub/src/Student/featuers/notification_student_management/data/showOfferDetailsNotificationModel.dart';
import 'package:lang_hub/src/Student/featuers/notification_student_management/data/show_lesson_notificaiton_model.dart';

import '../../data/List_lesson_notification_model.dart';

abstract class ShowNotificationInstituteState{}
class ShowNotificationInstituteInitializeState extends ShowNotificationInstituteState{}
///show notification institute status
class ShowNotificationInstituteLoadingState extends ShowNotificationInstituteState{}
class ShowNotificationInstituteSuccessState extends ShowNotificationInstituteState{
  ListAcceptInstituteNotificationModel listAcceptInstituteNotificationModel;

  ShowNotificationInstituteSuccessState(
      this.listAcceptInstituteNotificationModel);
}
class ShowNotificationInstituteErrorState extends ShowNotificationInstituteState{}
///show offer notification status
class ShowNotificationOfferLoadingState extends ShowNotificationInstituteState{}
class ShowNotificationOfferSuccessState extends ShowNotificationInstituteState{
  ListAcceptOfferNotificationModel listAcceptOfferNotificationModel;

  ShowNotificationOfferSuccessState(this.listAcceptOfferNotificationModel);
}
class ShowNotificationOfferErrorState extends ShowNotificationInstituteState{}

///add lesson status
class ShowNotificationAddLessonLoadingState extends ShowNotificationInstituteState{}
class ShowNotificationAddLessonSuccessState extends ShowNotificationInstituteState{
  ListLessonsAddedNotificationModel lessonsAddedNotificationModel;

  ShowNotificationAddLessonSuccessState(this.lessonsAddedNotificationModel);
}
class ShowNotificationAddLessonErrorState extends ShowNotificationInstituteState{}


///open offer details notification 0----------------------------------------------------
class ShowOfferDetailsLoadingState extends ShowNotificationInstituteState{}
class ShowOfferDetailsSuccessState extends ShowNotificationInstituteState{
ShowOfferDetailsNotificationModel showOfferDetailsNotificationModel;

ShowOfferDetailsSuccessState(this.showOfferDetailsNotificationModel);
}
class ShowOfferDetailsErrorState extends ShowNotificationInstituteState{}
///show lesson notification details-------------------------------------------
class ShowLessonDetailsLoadingState extends ShowNotificationInstituteState{}
class ShowLessonDetailsSuccessState extends ShowNotificationInstituteState{
  ShowLessonNotificationModel showLessonNotificationModel;

  ShowLessonDetailsSuccessState(this.showLessonNotificationModel);
}
class ShowLessonDetailsErrorState extends ShowNotificationInstituteState{}
