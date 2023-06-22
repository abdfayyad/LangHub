import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/profile_student_management/prisentation/edit_profile_student.dart';
import 'package:lang_hub/src/Student/featuers/profile_student_management/prisentation/show_certificate.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:lang_hub/src/util/details_container.dart';

class ProfileStudent extends StatelessWidget {
  const ProfileStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          color: fillColorInTextFormField,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileStudent()));
                          },
                          icon: Icon(Icons.edit)),
                      IconButton(
                          color: fillColorInTextFormField,
                          onPressed: () {},
                          icon: Icon(Icons.logout))
                    ],
                  ),
                ),
              ],
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/p.png'),
              radius: 110.r,
            ),
            detailsContainer(text: "abd alkaremm"),
            detailsContainer(text: "abd@gmail.com"),
            detailsContainer(text: "0938415566"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ShowCertificate()));
        },
        child: Icon(Icons.add_chart_rounded),
        backgroundColor: mainColor,
      ),
    );
  }
}
