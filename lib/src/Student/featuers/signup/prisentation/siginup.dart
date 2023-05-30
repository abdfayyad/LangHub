import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/signup/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/Student/featuers/signup/prisentation/bloc/states.dart';
import 'package:lang_hub/src/util/colors.dart';


import '../../../../both/Login/prisentation/loginscreen.dart';
import '../../../../util/defaultbutton.dart';
import '../../../../util/myTextField.dart';


class SignUpScreenStudent extends StatelessWidget {
  const SignUpScreenStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstNameController = TextEditingController();
    var lastNameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => SignInCubit(),
      child: BlocConsumer<SignInCubit, SignInScreenStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 15.w, top: 15.h, right: 15.w, bottom: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Container(
                              width: 307.w,
                              height: 247.h,
                              child: Image.asset('assets/images/login.png'))),
                      Text('Welcome Student',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: mainColor,
                            fontSize: 30.sp),),
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                          myTextField(
                            width: 166.w,
                            height: 46.h,
                            controller: firstNameController,
                            validatorValue: 'First name is embty',
                            labelText: 'First name',

                          ),
                          SizedBox(width: 20.w,),
                          myTextField(
                            width: 166.w,
                            height: 46.h,
                            controller: lastNameController,
                            validatorValue: 'Last name is embty',
                            labelText: 'Last name',

                          ),
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      myTextField(
                        width: 354.w,
                        height: 46.h,
                        controller: emailController,
                        prefixIcon: Icon(Icons.email),
                        validatorValue: 'emil address must not be embty',
                        labelText: 'Email',

                        keyboardType: TextInputType.emailAddress,

                      ),
                      SizedBox(height: 20.h,),
                      myTextField(
                        width: 354.w,
                        height: 46.h,
                        controller: passwordController,
                        validatorValue: 'password must not be empty',
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'password',
                        obscureText: SignInCubit
                            .get(context)
                            .isPasswordShow,

                        suffixIcon: IconButton(
                          onPressed: () {
                            SignInCubit.get(context).changePasswordVisibility();
                          },
                          icon: Icon(SignInCubit
                              .get(context)
                              .suffix),

                        ),

                      ),
                      SizedBox(height: 20.h,),
                      Center(
                        child: defaultbutton(
                            function: () {
                           // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage()));

                            },
                            text: 'Sign up',
                            //textColor: Colors.white,
                            width: 128.w,
                            height: 41.h,
                            fontSizeText: 18.sp,
                            textColor: fillColorInTextFormField,
                            backround:mainColor
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'You have an account ?',
                            style: TextStyle(fontSize: 14.sp,color: mainColor),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
                              },
                              child:  Text(
                                'Login',
                                style: TextStyle(fontWeight: FontWeight.w700,
                                    fontSize: 16.sp, color:mainColor),
                              )),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                          Expanded(child: Divider(
                              thickness: 1, color: Color(0xff707070))),

                          Padding(
                            padding: EdgeInsets.only(left: 15.w, right: 15.w),
                            child: Text(
                              'Or', style: TextStyle(fontSize: 14.sp),),
                          ),
                          Expanded(child: Divider(
                            thickness: 1, color: Color(0xff707070),)),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          defaultbutton(
                              function: (){},
                              text: 'Google',
                              width: 128.w,
                              height: 41.h,
                              fontSizeText: 18.sp,
                              textColor: mainColor,
                              backround: fillColorInTextFormField
                          ),
                          defaultbutton(
                              function: (){
                              },
                              text: 'Facebook',
                              width: 128.w,
                              height: 41.h,
                              fontSizeText: 18.sp,
                              textColor: mainColor,

                              backround:fillColorInTextFormField
                          ),
                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
