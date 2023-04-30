import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/features/signup/prisentation/siginup.dart';

import 'src/features/Login/prisentation/loginscreen.dart';

void main() {
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
      builder: (context , child) {
        return MaterialApp(

          debugShowCheckedModeBanner: false,

          themeMode: ThemeMode.system,
          home: child,
        );
      },
      child:  SignUpScreen(),
    );
  }
}

