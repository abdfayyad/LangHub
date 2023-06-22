import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/teacher/features/home/prisentation/widget/checkboxLanguge.dart';
import 'package:lang_hub/src/teacher/features/home/prisentation/widget/rate_and_like_and_dislike.dart';
import 'package:lang_hub/src/teacher/features/list_institute_and_details_teacher/prisentation/widget/drop_button.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:lang_hub/src/util/summary.dart';

import '../../../../util/defaultbutton.dart';
import '../../../../util/details_container.dart';

class DetailsInstituteEnrollment extends StatelessWidget {
   DetailsInstituteEnrollment({Key? key}) : super(key: key);
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line";
   final List<String> items =   [
     'English',
     'french',
     'Spainish',
     'Germany',
   ];
   String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    'Institute rate',
                    style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp),
                  ),
                  SizedBox(width: 5.w,),
                  ShowRateInstituteAndTeacher(rate: 3),
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
              SizedBox(
                height: 15.h,
              ),
              defaultbutton(
                  function: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage()));
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

                                height: 150.h,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start
                                  ,mainAxisAlignment: MainAxisAlignment.center,

                                  children: <Widget>[
                                    Text("Please visit us within a maximum of four days",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20.sp,color: mainColor)),
                                    DropListItem(item:items.first , s:items),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(onPressed: (){}, child: Text('cancel',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),)),
                                        SizedBox(width: 10.w,),
                                        TextButton(onPressed: (){}, child: Text('Enroll',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),)),
                                      ],),


                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                    );
                  },
                  text: 'Sign up',
                  //textColor: Colors.white,
                  width: 128.w,
                  height: 41.h,
                  fontSizeText: 18.sp,
                  textColor: fillColorInTextFormField,
                  backround:mainColor
              ),
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
