import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/list_institute_and_details_student/data/show_details_institute_student_model.dart';
import 'package:lang_hub/src/Student/featuers/list_institute_and_details_student/data/show_student_institute_model.dart';
import 'package:lang_hub/src/Student/featuers/list_institute_and_details_student/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/Student/featuers/list_institute_and_details_student/prisentation/bloc/status.dart';

import '../../../../teacher/features/home/prisentation/widget/checkboxLanguge.dart';
import '../../../../teacher/features/home/prisentation/widget/rate_and_like_and_dislike.dart';
import '../../../../util/colors.dart';
import '../../../../util/details_container.dart';
import '../../../../util/summary.dart';

class DetailsInstituteStudent extends StatelessWidget {
  DetailsInstituteStudent({Key? key, required this.showStudentInstituteModel})
      : super(key: key);
  final int? showStudentInstituteModel;
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line";
  ShowDetailsInstituteStudentModel? showDetailsInstituteStudentModel;
  bool convertToBool(int number) {
    if(number==0)return false;
    else return true;
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => InstituteStudentCubit()
        ..getListStudentInstituteDetails(showStudentInstituteModel!),
      child: BlocConsumer<InstituteStudentCubit, InstituteStudentStatus>(
        listener: (context, state) {
          if(state is InstituteDetailsStudentSuccessState)
            showDetailsInstituteStudentModel=state.showDetailsInstituteStudentModel;
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'institute details',
                style: TextStyle(color: mainColor),
              ),
              backgroundColor: fillColorInTextFormField,
              iconTheme: IconThemeData(color: mainColor),
            ),
            body:showDetailsInstituteStudentModel?.data==null?Center(child: CircularProgressIndicator(),): SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage('${showDetailsInstituteStudentModel!.data!.image}'),
                      radius: 110.r,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Institute rate: ',
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        ShowRateInstituteAndTeacher(rate: showDetailsInstituteStudentModel!.data!.rate.toDouble()),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your rate: ',
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        Container(
                          height: 40.h,
                          width: 142.w,
                          decoration: BoxDecoration(
                              color: fillColorInTextFormField,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                color: borderContainer,
                              )),
                          child: Center(
                            child: RatingBar.builder(
                              maxRating: 5,
                              itemSize: 28,
                              initialRating: showDetailsInstituteStudentModel!.data!.myRate.toDouble(),
                              minRating: 1,
                              direction: Axis.horizontal,
                              //allowHalfRating: false,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 0.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    detailsContainer(text: '${showDetailsInstituteStudentModel!.data!.name}'),
                    detailsContainer(text: '${showDetailsInstituteStudentModel!.data!.location}'),
                    SizedBox(
                      height: 15.h,
                    ),
                    LanguageInDetailsInstitute(
                        english:showDetailsInstituteStudentModel!.data!.english!.isOdd,
                        french: showDetailsInstituteStudentModel!.data!.french!.isOdd,
                        spanish: showDetailsInstituteStudentModel!.data!.spanish!.isOdd,
                        germany: showDetailsInstituteStudentModel!.data!.germany!.isOdd),
                    SizedBox(
                      height: 15.h,
                    ),
                    ShowMoreShowLess(text: showDetailsInstituteStudentModel!.data!.description),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
