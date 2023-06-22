import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/details_courses_student.dart';
import 'package:lang_hub/src/Student/featuers/search_and_enrollment_student/prisentation/details_offers_enrollment.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../teacher/features/list_of_courses_and_details_teacher/prisentation/courseDetailsTeacher.dart';

class ListOfCoursesStudent extends StatelessWidget {
   ListOfCoursesStudent({Key? key}) : super(key: key);
   final PageController _pageController = PageController();
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
    return Scaffold(
      body: Column(
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
            items: productDetails.map((details) {
              return Builder(
                builder: (BuildContext context) {
                  return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsOffersEnrollment()));
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
                                    ,image: DecorationImage(image: AssetImage(details[0]),fit: BoxFit.cover)
                              ),
                             // child: Image(image: AssetImage(details[0]))
                          ),
                          SizedBox(width: 15.w,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(details[1], style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: mainColor)),
                              Text(details[2], style:TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: mainColor)),
                              Text(details[3], style:TextStyle(fontSize: 16.sp,fontWeight: FontWeight.normal,color: mainColor)),
                              Text(details[4], style:TextStyle(fontSize: 16.sp,fontWeight: FontWeight.normal,color: mainColor)),

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
          // SmoothPageIndicator(
          //     controller: _pageController,
          //     effect: ExpandingDotsEffect(
          //         dotColor: Colors.grey,
          //         activeDotColor: mainColor,
          //         dotHeight: 10,
          //         expansionFactor: 4,
          //         dotWidth: 10,
          //         spacing: 5.0
          //     ),
          //     count: productDetails.length),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: 5,
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
                                  image:DecorationImage(fit: BoxFit.cover,image:  AssetImage('assets/images/p.jpg'), ),
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
                                    Text('ALTC',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                                    Text('ALTC institue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp,color: mainColor),),
                                    Text("start in 1/10/2023",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16.sp,color: mainColor),)
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
  }
}
