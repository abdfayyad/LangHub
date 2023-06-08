import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/p.png'),
              radius: 110.r,
            ),
            detailsContainer(text: "abd alkaremm"),
            detailsContainer(text: "abd@gmail.com"),
            detailsContainer(text: "0938415566"),

        ],),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowCertificate()));
      },
        child: Icon(Icons.add_chart_rounded),
        backgroundColor: mainColor,

      ),
    );
  }
}
