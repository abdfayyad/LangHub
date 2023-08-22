import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/status.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/details_courses_student.dart';
import 'package:lang_hub/src/Student/featuers/search_and_enrollment_student/prisentation/details_offers_enrollment.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../teacher/features/list_of_courses_and_details_teacher/prisentation/courseDetailsTeacher.dart';
import '../data/courses_and_offers_model.dart';
import '../data/show_ten_offers_model.dart';

class ListOfCoursesStudent extends StatelessWidget {
   ListOfCoursesStudent({Key? key}) : super(key: key);
   ShowCoursesAndOffersModel? showCoursesAndOffersModel;
   ShowTenOffersModel ?showTenOffersModel;
   final List<List<String>> productDetails = [

     ['assets/images/p.jpg','C++', 'ALTC institute ', '55\$','15/3/2023'],
     ['assets/images/p.jpg','C++', 'ALTC institute ', '55\$','15/3/2023'],
     ['assets/images/p.jpg','C++', 'ALTC institute ', '55\$','15/3/2023'],
     ['assets/images/p.jpg','C++', 'ALTC institute ', '55\$','15/3/2023'],
     ['assets/images/p.jpg','C++', 'ALTC institute ', '55\$','15/3/2023'],



     // Add more product details here
   ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context)=>CourseStudentCubit()..getListCoursesAndOffers()..getTenOffer(),
      child: BlocConsumer<CourseStudentCubit,CourseStudentStatus>(
        listener: (context,state){
          if(state is CourseStudentSuccessState)
            showCoursesAndOffersModel=state.showCoursesAndOffersModel;
          if(state is TenOffersSuccessState)
            showTenOffersModel=state.showTenOffersModel;
        },
        builder: (context,state){
          return  Scaffold(
            body:showCoursesAndOffersModel?.data==null?Center(child: CircularProgressIndicator(),): Column(
              children: [
                SizedBox(height: 15.h,),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.8,
                    aspectRatio: 16 / 9,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      // Handle page change
                    },
                  ),
                  items: showTenOffersModel?.data?.map((details) {
                    return Builder(
                      builder: (BuildContext context) {
                        return InkWell(
                          onTap: (){
                           // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsOffersEnrollment()));
                          }
                          ,

                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 190.h,
                            decoration: BoxDecoration(
                                color: fillColorInTextFormField,
                                borderRadius: BorderRadius.circular(20.r)

                            ),
                            // margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Container(
                                  width:152.w,
                                  height: 190.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r)
                                      ,image:details.image==null ? DecorationImage(image: AssetImage("assets/images/p.png"),fit: BoxFit.cover):DecorationImage(image: NetworkImage("${details.image}"),fit: BoxFit.cover)
                                  ),
                                  // child: Image(image: AssetImage(details[0]))
                                ),
                                SizedBox(width: 15.w,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(details.name.toString(), style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: mainColor)),
                                    Text(details.hours!, style:TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: mainColor)),
                                    Text("${details.price!}", style:TextStyle(fontSize: 16.sp,fontWeight: FontWeight.normal,color: mainColor)),
                                    Text(details.startDate!, style:TextStyle(fontSize: 16.sp,fontWeight: FontWeight.normal,color: mainColor)),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:showCoursesAndOffersModel?.data==null?Center(child: CircularProgressIndicator(),): ListView.builder(
                        itemCount:showCoursesAndOffersModel?.data?.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsCoursesStudent()));
                                // navigateTo(context, CourseDetails());
                              },
                              child: Container(
                                width: 380.w,
                                height: 107.h,
                                decoration: BoxDecoration(
                                    color: fillColorInTextFormField,
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(
                                      color: borderContainer,
                                    )),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 107.h,
                                      width: 107.w,
                                      decoration: BoxDecoration(
                                        image:DecorationImage(fit: BoxFit.cover,image:  NetworkImage('${showCoursesAndOffersModel!.data?[index].courseImage}'), ),
                                        color: fillColorInTextFormField,
                                        borderRadius: BorderRadius.circular(10.r),
                                        // border: Border.all(
                                        //   color: borderContainer,
                                        // )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('${showCoursesAndOffersModel!.data?[index].name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                                          Text('${showCoursesAndOffersModel!.data?[index].academy!.name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp,color: mainColor),),
                                          Text("${showCoursesAndOffersModel!.data?[index].startTime}",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16.sp,color: mainColor),)
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
                ),
              ],
            ),
          );
        },
      )
    );
  }
}
