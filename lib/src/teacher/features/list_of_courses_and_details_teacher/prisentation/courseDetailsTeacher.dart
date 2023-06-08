import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:lang_hub/src/util/myTextField.dart';

import '../../../../util/details_container.dart';
import '../../../../util/summary.dart';

class CourseDetails extends StatelessWidget {
   CourseDetails({Key? key}) : super(key: key);
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. have a question , how can I put the show more behind the text , I mean it looks like this Flutter is Google’s mobile UI framework for... show more,they are both in the same line";
  var titleController = TextEditingController();
  var q1Controller = TextEditingController();
  var q2Controller = TextEditingController();
  var q3Controller = TextEditingController();
  var q4Controller = TextEditingController();
  var q5Controller = TextEditingController();
  var q6Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'courses details',
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
              Container(
                height: 234.h,
                width: 253.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/p.png')),
                  color: mainColor,
                  borderRadius: BorderRadius.circular(38.r),
                ),
              ),
              detailsContainer(text: 'Antro A'),
              detailsContainer(text: '5500.sp'),
              detailsContainer(text: '30 hours'),
              detailsContainer(text: '15seats'),


              SizedBox(
                height: 15.h,
              ),
              ShowMoreShowLess(text: description),
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: mainColor,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            backgroundColor: mainColor,
            child: Icon(Icons.add,color: fillColorInTextFormField,),
            label: "Add Lesson",
              labelBackgroundColor: fillColorInTextFormField,
            labelStyle: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
            onTap: (){
              AddQustion(context);
            }
          ),
          SpeedDialChild(
            backgroundColor: mainColor,
            child: Icon(Icons.add,color: fillColorInTextFormField,),
            label: "Activate Exam",
            labelBackgroundColor: fillColorInTextFormField,
              labelStyle: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
          ) ,
          SpeedDialChild(
            backgroundColor: mainColor,
            child: Icon(Icons.add,color: fillColorInTextFormField,),
            label: "Add degrees",
              labelBackgroundColor: fillColorInTextFormField,
              labelStyle: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
          ),
          SpeedDialChild(
            backgroundColor: mainColor,
            child: Icon(Icons.add,color: fillColorInTextFormField,),
            label: "Show lessons",
              labelBackgroundColor: fillColorInTextFormField,
              labelStyle: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
            onTap: (){}
          )
        ],
      ),
    );
  }
  void AddQustion(BuildContext context){

        showDialog(
            context: context,
            builder: (BuildContext context) => SingleChildScrollView(
              child: Dialog(
                backgroundColor: fillColorInTextFormField,
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(16.0)),
                //this right here
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    height: 690.h,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10.h,),
                        Text(" Add title lesson:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                        SizedBox(height: 10.h,),
                        myTextField(controller: titleController,colorfillColor: Color(0xffffffff)),
                        SizedBox(height: 10.h,),
                        Text(" question 1:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                        SizedBox(height: 10.h,),
                        myTextField(controller: q1Controller,colorfillColor: Color(0xffffffff)),
                        SizedBox(height: 10.h,),
                        Text(" question 2:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                        SizedBox(height: 10.h,),
                        myTextField(controller: q2Controller,colorfillColor: Color(0xffffffff)),
                        SizedBox(height: 10.h,),
                        Text(" question 3:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                        SizedBox(height: 10.h,),
                        myTextField(controller: q3Controller,colorfillColor: Color(0xffffffff)),
                        SizedBox(height: 10.h,),
                        Text(" question 4:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                        SizedBox(height: 10.h,),
                        myTextField(controller: q4Controller,colorfillColor: Color(0xffffffff)),
                        SizedBox(height: 10.h,),
                        Text(" question 5:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                        SizedBox(height: 10.h,),
                        myTextField(controller: q5Controller,colorfillColor: Color(0xffffffff)),
                        SizedBox(height: 10.h,),
                        Text(" question 6:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),),
                        SizedBox(height: 10.h,),
                        myTextField(controller: q6Controller,colorfillColor: Color(0xffffffff)),
                        SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: (){}, child: Text('cancel',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),)),
                            SizedBox(width: 10.w,),
                            TextButton(onPressed: (){}, child: Text('Add',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: mainColor),)),
                          ],),


                      ],
                    ),
                  ),
                ),
              ),
            )
        );



  }
}
