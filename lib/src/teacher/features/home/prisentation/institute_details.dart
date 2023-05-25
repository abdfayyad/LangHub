import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/teacher/features/home/prisentation/widget/checkboxLanguge.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:lang_hub/src/util/details_container.dart';

import '../../../../util/colors.dart';
import '../../../../util/colors.dart';
import '../../../../util/summary.dart';
import 'widget/rate_and_like_and_dislike.dart';

class InstituteDetails extends StatelessWidget {
  const InstituteDetails({Key? key}) : super(key: key);
  final String description ="Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line";
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
              SizedBox(height: 15.h,),

              CircleAvatar(
                backgroundImage: AssetImage('assets/images/p.png'),
                radius: 110.r,
              ),
              SizedBox(height: 15.h,),
              rateAndLike(numLike: '500',numDisLike: '1.5k',rate: 3),
              detailsContainer( text: 'ALTC institute'),
              detailsContainer( text: 'Baghdad street'),
              SizedBox(height: 15.h,),
              LanguageInDetailsInstitute(english: true, french: true, spanish: true, germany: true),
              SizedBox(height: 15.h,),
              ShowMoreShowLess(text: description),
            ],
          ),
        ),
      ),
    );
  }
}
