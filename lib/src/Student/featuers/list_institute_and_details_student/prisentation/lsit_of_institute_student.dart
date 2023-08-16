import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/list_institute_and_details_student/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/Student/featuers/list_institute_and_details_student/prisentation/bloc/status.dart';
import 'package:lang_hub/src/Student/featuers/list_institute_and_details_student/prisentation/details_institute_student.dart';
import 'package:lang_hub/src/teacher/features/list_institute_and_details_teacher/prisentation/institute_detailsTeacher.dart';
import 'package:lang_hub/src/util/show_message_on_screen.dart';

import '../../../../util/colors.dart';
import '../data/show_student_institute_model.dart';

class ListOfInstituteStudent extends StatelessWidget {
   ListOfInstituteStudent({Key? key}) : super(key: key);
  ShowStudentInstituteModel? showStudentInstituteModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context)=>InstituteStudentCubit()..getListStudentInstitute(),
      child: BlocConsumer<InstituteStudentCubit,InstituteStudentStatus>(
        listener: (context,state){
          if(state is InstituteStudentSuccessState) {
            showStudentInstituteModel = state.showStudentInstituteModel;

            print(showStudentInstituteModel?.message);
          } else if(state is InstituteStudentErrorState)
            showMessageOnScreen(context: context, titleText: "Not Found", messageText: "error conection");
        },
        builder: (context,state){
          return  Scaffold(
            body:showStudentInstituteModel?.data==null?Center(child: CircularProgressIndicator(),):  ListView.builder(
                itemCount: showStudentInstituteModel?.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsInstituteStudent(showStudentInstituteModel: showStudentInstituteModel!.data?[index].id,)));
                        // navigateTo(context, CourseDetails());
                      },
                      child: Container(
                        width: 332.w,
                        height: 109.h,
                        decoration: BoxDecoration(
                            color: fillColorInTextFormField,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: borderContainer,
                            )),
                        child: Row(
                          children: [
                            SizedBox(width: 10.w,),
                            CircleAvatar(
                              backgroundImage: NetworkImage('${showStudentInstituteModel!.data?[index].image}'),
                              radius: 45.r,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${showStudentInstituteModel!.data?[index].name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                                  Text(' ${showStudentInstituteModel!.data?[index].location}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp,color: mainColor),),
                                  RatingBarIndicator(
                                    rating:showStudentInstituteModel!.data?[index].rate.toDouble() ,
                                    itemSize: 25,
                                    //initialRating: 3,
                                    // minRating: 1,
                                    direction: Axis.horizontal,
                                    //allowHalfRating: false,
                                    itemCount:5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,

                                    ),
                                    // onRatingUpdate: (rating) {
                                    //   print(rating);
                                    // },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          );
        },
      ),
    );
  }
}
