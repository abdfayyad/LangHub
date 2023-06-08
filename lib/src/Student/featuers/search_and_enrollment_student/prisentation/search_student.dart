import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:lang_hub/src/util/myTextField.dart';

class SearchStudent extends StatelessWidget {
  const SearchStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchController=new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fillColorInTextFormField,
        foregroundColor: mainColor,
        title: Text("Search",style: TextStyle(
            fontSize: 24.sp,fontWeight: FontWeight.bold,color: mainColor
        ),),
      ),
      body:Center(
        child: Column(
          children: [
            SizedBox(height: 15.h,),
            myTextField(
                controller: searchController
            ,labelText: "search",
            ),

          ],
        ),
      ) ,
    );
  }
}
