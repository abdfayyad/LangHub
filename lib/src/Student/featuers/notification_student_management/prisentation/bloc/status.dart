abstract class ShowNotificationInstituteState{}
class ShowNotificationInstituteInitializeState extends ShowNotificationInstituteState{}
///show notification institute status
class ShowNotificationInstituteLoadingState extends ShowNotificationInstituteState{}
class ShowNotificationInstituteSuccessState extends ShowNotificationInstituteState{}
class ShowNotificationInstituteErrorState extends ShowNotificationInstituteState{}
///show offer notification status
class ShowNotificationOfferLoadingState extends ShowNotificationInstituteState{}
class ShowNotificationOfferSuccessState extends ShowNotificationInstituteState{}
class ShowNotificationOfferErrorState extends ShowNotificationInstituteState{}

///add lesson status
class ShowNotificationAddLessonLoadingState extends ShowNotificationInstituteState{}
class ShowNotificationAddLessonSuccessState extends ShowNotificationInstituteState{}
class ShowNotificationAddLessonErrorState extends ShowNotificationInstituteState{}