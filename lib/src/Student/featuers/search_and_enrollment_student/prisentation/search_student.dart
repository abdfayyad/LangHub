import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/search_and_enrollment_student/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/Student/featuers/search_and_enrollment_student/prisentation/bloc/status.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:lang_hub/src/util/myTextField.dart';

import '../widget/toggel_bottun_for_search.dart';

class SearchStudent extends StatelessWidget {
   SearchStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int valueOfSearch=1;
    var searchController = new TextEditingController();
    return BlocProvider<SearchStudentCubit>(
      create: (BuildContext context) => SearchStudentCubit(),
      child: BlocConsumer<SearchStudentCubit,SearchStudentStatus>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: fillColorInTextFormField,
              foregroundColor: mainColor,
              title: Text(
                "Search",
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: mainColor),
              ),
            ),
            body: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  myTextField(
                      controller: searchController,
                      labelText: "search",
                      prefixIcon: Icon(Icons.search,color: mainColor,)
                      ,
                      onFieldSubmitted: (String query) {

                      }
                    ),
                  SizedBox(height: 15.h,),
                  ToggleButton(
                    width: 320.w,
                    height: 40.h,
                    toggleBackgroundColor:fillColorInTextFormField,
                    toggleBorderColor: mainColor,
                    toggleColor: mainColor,
                    activeTextColor: Colors.white,
                    inactiveTextColor: mainColor,
                    leftDescription: 'Institute',
                    rightDescription: 'Offers',
                    onLeftToggleActive: () {
                     BlocProvider.of<SearchStudentCubit>(context).changValueOfSearch1(2);
                      print(BlocProvider.of<SearchStudentCubit>(context).cc);
                    },
                    onRightToggleActive: () {
                     BlocProvider.of<SearchStudentCubit>(context).changValueOfSearch1(1);
                      print(BlocProvider.of<SearchStudentCubit>(context).cc);
                    },
                  ),
                  SizedBox(height: 15.h,),

                BlocProvider.of<SearchStudentCubit>(context).cc==1 ? Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                print("institute");
                                print(BlocProvider.of<SearchStudentCubit>(context).cc);
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsCoursesStudent()));
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
                                      backgroundImage: AssetImage('assets/images/p.png'),
                                      radius: 45.r,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(' ALTC institue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                                          Text(' English antro a',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp,color: mainColor),),
                                          RatingBarIndicator(
                                            rating: 3,
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
                    ):Expanded(
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: (){
                                  print("offers");
                                  print(BlocProvider.of<SearchStudentCubit>(context).cc);
                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsCoursesStudent()));
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

                                 Container(
                                   width: 109.w,
                                   height: 109.h,
                                   decoration: BoxDecoration(
                                       color: fillColorInTextFormField,
                                       image: DecorationImage(
                                         fit: BoxFit.cover,
                                         image: AssetImage('assets/images/p.png',)
                                       ),
                                       borderRadius: BorderRadius.circular(10.r),
                                       border: Border.all(

                                       )),),

                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(' ALTC institue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                                          Text(' English antro a',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp,color: mainColor),),
                                          Text(' 50\$',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16.sp,color: mainColor),),
                                          Text(' 2020\\10\\10',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16.sp,color: mainColor),),

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              ),
                            );
                          }),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
