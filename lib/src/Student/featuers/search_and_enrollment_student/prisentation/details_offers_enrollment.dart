import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:lang_hub/src/util/defaultbutton.dart';
import 'package:lang_hub/src/util/summary.dart';

import 'profile_teacher_in_offers_search.dart';
import '../../widgets/show_time_and_days.dart';

class DetailsOffersEnrollment extends StatelessWidget {
  const DetailsOffersEnrollment({Key? key}) : super(key: key);
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fillColorInTextFormField,
        foregroundColor: mainColor,
        title: Text(
          "details offers",
          style: TextStyle(
              fontSize: 24.sp, fontWeight: FontWeight.bold, color: mainColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 217.w,
                height: 183.h,
                decoration: BoxDecoration(
                    color: fillColorInTextFormField,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/p.png',
                        )),
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all()),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 290.w,
                height: 226.h,
                decoration: BoxDecoration(
                    color: fillColorInTextFormField,
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all()),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ILTC",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: mainColor),
                      ),
                      Text(
                        "ALTC institute",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: mainColor),
                      ),
                      Row(
                        children: [
                          Text(
                            "give By:",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.normal,
                                color: mainColor),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        ProfileTeacherInOffersSearch()));
                              },
                              child: Text(
                                "Abd Fayyad ",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: mainColor),
                              )),
                        ],
                      ),
                      Text(
                        "Start in: 2024-02-03",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.normal,
                            color: mainColor),
                      ),
                      Text(
                        "end in: 2024-03-03",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.normal,
                            color: mainColor),
                      ),
                      Text(
                        "Number of hour :50 hour",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.normal,
                            color: mainColor),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 20.w),
                child: Column(
                  children: [
                    ShowDaysAndTime(
                        day: "Saturday ",
                        chickBoxValue: false,
                        startTime: "10:10 AM",
                        endTime: "9:50 AM"),
                    ShowDaysAndTime(
                        day: "Sunday   ",
                        chickBoxValue: true,
                        startTime: "10:10 AM",
                        endTime: "9:50 AM"),
                    ShowDaysAndTime(
                        day: "Monday   ",
                        chickBoxValue: true,
                        startTime: "10:10 AM",
                        endTime: "9:50 AM"),
                    ShowDaysAndTime(
                        day: "Tuesday  ",
                        chickBoxValue: true,
                        startTime: "10:10 AM",
                        endTime: "9:50 AM"),
                    ShowDaysAndTime(
                        day: "Wednesday",
                        chickBoxValue: true,
                        startTime: "10:10 AM",
                        endTime: "9:50 AM"),
                    ShowDaysAndTime(
                        day: "Thursday ",
                        chickBoxValue: true,
                        startTime: "10:10 AM",
                        endTime: "9:50 AM"),
                    ShowDaysAndTime(
                        day: "Friday   ",
                        chickBoxValue: true,
                        startTime: "10:10 AM",
                        endTime: "9:50 AM"),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              ShowMoreShowLess(text: description),
              SizedBox(
                height: 15.h,
              ),
              defaultbutton(
                  function: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => Center(
                              child: Dialog(
                                backgroundColor: fillColorInTextFormField,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0)),
                                //this right here
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 120.h,
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                            "Please visit us within a maximum of four days",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 20.sp,
                                                color: mainColor)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'cancel',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20.sp,
                                                      color: mainColor),
                                                )),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Enroll',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20.sp,
                                                      color: mainColor),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ));
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage()));
                  },
                  text: 'Enroll',
                  //textColor: Colors.white,
                  width: 128.w,
                  height: 41.h,
                  fontSizeText: 18.sp,
                  textColor: fillColorInTextFormField,
                  backround: mainColor),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
