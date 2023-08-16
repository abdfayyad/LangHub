import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/home_student/prisentation/home_student.dart';
import 'package:lang_hub/src/both/Login/prisentation/loginscreen.dart';
import 'package:lang_hub/src/both/splash/spalsh_screen.dart';

import 'package:lang_hub/src/teacher/features/home/prisentation/home_teacher.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:lang_hub/src/util/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primaryColor: mainColor),
            //themeMode: ThemeMode.system,
            home: child,
          );
        },
        child: SplashScreen());
  }
}
