 abstract class  SearchStudentStatus {}
 class SearchStudentInstituteInitializeState extends SearchStudentStatus{}
 ///search for institute
 class SearchStudentInstituteLoadingState extends SearchStudentStatus{}
 class SearchStudentInstituteSuccessState extends SearchStudentStatus{}
 class SearchStudentInstituteErrorState extends SearchStudentStatus{}
 ///
 class ChangeValueIndex extends SearchStudentStatus{}
///search for offers
 class SearchStudentOfferLoadingState extends SearchStudentStatus{}
 class SearchStudentOfferSuccessState extends SearchStudentStatus{}
 class SearchStudentOfferErrorState extends SearchStudentStatus{}