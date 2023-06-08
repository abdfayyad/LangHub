 abstract class  SearchStudentStatus {}
 class SearchStudentInitializeState extends SearchStudentStatus{}
 class SearchStudentLoadingState extends SearchStudentStatus{}

 class SearchStudentSuccessState extends SearchStudentStatus{}
 class SearchStudentErrorState extends SearchStudentStatus{}
 class ChangeValueIndex extends SearchStudentStatus{}