import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../util/colors.dart';

Widget rateAndLike({
  required String numLike,
  required String numDisLike,
  required double rate,
}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [

      Container(height:40.h ,width: 71.w,
        decoration: BoxDecoration(
            color: fillColorInTextFormField,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: borderContainer,
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(numLike,style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold),),
            Icon(Icons.thumb_up,color: mainColor,)
          ],
        ),
      ),
      SizedBox(width: 4.w,),
      Container(height:40.h ,width: 71.w,

        decoration: BoxDecoration(
            color: fillColorInTextFormField,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: borderContainer,
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(numDisLike,style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold),),
            Icon(Icons.thumb_down,color: mainColor,)
          ],
        ),
      ),
      SizedBox(width: 4.w,),
      Container(height:40.h ,width: 142.w,
        decoration: BoxDecoration(
            color: fillColorInTextFormField,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: borderContainer,
            )
        ),
        child:Center(
          child: RatingBarIndicator(
            rating: rate,
            itemSize: 28,
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
        ),
      ),

    ],
  );

}