import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../teacher/features/home/prisentation/widget/checkboxLanguge.dart';
import '../../../../teacher/features/home/prisentation/widget/rate_and_like_and_dislike.dart';
import '../../../../util/colors.dart';
import '../../../../util/details_container.dart';
import '../../../../util/summary.dart';

class DetailsInstituteStudent extends StatelessWidget {
  const DetailsInstituteStudent({Key? key}) : super(key: key);
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'institute details',
          style: TextStyle(color: mainColor),
        ),
        backgroundColor: fillColorInTextFormField,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/p.png'),
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
                  ShowRateInstituteAndTeacher(rate: 3),
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
          Container(height:40.h ,width: 142.w,
            decoration: BoxDecoration(
                color: fillColorInTextFormField,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: borderContainer,
                )
            ),
            child:Center(
              child: RatingBar.builder(
                maxRating: 5,
                itemSize: 28,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                //allowHalfRating: false,
                itemCount:5,
                itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
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
              detailsContainer(text: 'ALTC institute'),
              detailsContainer(text: 'Baghdad street'),
              SizedBox(
                height: 15.h,
              ),
              LanguageInDetailsInstitute(
                  english: true, french: true, spanish: true, germany: true),
              SizedBox(
                height: 15.h,
              ),
              ShowMoreShowLess(text: description),
            ],
          ),
        ),
      ),
    );
  }
}
