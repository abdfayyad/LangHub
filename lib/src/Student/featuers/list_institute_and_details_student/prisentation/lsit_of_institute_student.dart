import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/list_institute_and_details_student/prisentation/details_institute_student.dart';
import 'package:lang_hub/src/teacher/features/list_institute_and_details_teacher/prisentation/institute_detailsTeacher.dart';

import '../../../../util/colors.dart';

class ListOfInstituteStudent extends StatelessWidget {
  const ListOfInstituteStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsInstituteStudent()));
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
    );
  }
}
