import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../util/colors.dart';

class ShowCertificate extends StatelessWidget {
  const ShowCertificate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: mainColor,
        backgroundColor: fillColorInTextFormField,
        title: Text("Certificate",style: TextStyle(
            fontSize: 24.sp,fontWeight: FontWeight.bold,color: mainColor
        ),),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350.w,
                height: 280.h,
                decoration: BoxDecoration(
                    color: fillColorInTextFormField,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: borderContainer,
                    )),

              child: Column(
                children: [
                  Container(
                    width: 380.w,
                    height: 200.h,
                    decoration: BoxDecoration(image: DecorationImage(
                      fit: BoxFit.cover,
                        image: AssetImage("assets/images/p.jpg")),

                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r),topRight: Radius.circular(10.r)),

                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(

                          children: [
                            Text("Level 0",style: TextStyle(
                                fontSize: 19.sp,fontWeight: FontWeight.bold,color: mainColor
                            ),),
                            SizedBox(height: 15.h,),
                            Text("Be Flount",style: TextStyle(
                                fontSize: 15.sp,fontWeight: FontWeight.normal,color: mainColor
                            ),)
                          ],
                        ),
                        Column(
                          children: [
                            Text("Level 0",style: TextStyle(
                                fontSize: 15.sp,fontWeight: FontWeight.normal,color: mainColor
                            ),),
                            SizedBox(height: 15.h,),
                            Text("Be Flount",style: TextStyle(
                                fontSize: 15.sp,fontWeight: FontWeight.normal,color: mainColor
                            ),)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              ),
            );
          }),
    );
  }
}
