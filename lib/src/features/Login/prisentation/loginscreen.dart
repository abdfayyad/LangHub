import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/util/colors.dart';

import '../../../util/myTextField.dart';
import '../../../util/defaultbutton.dart';

class Login extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emilController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: SizedBox(
                          width: 384.w,
                          height: 309.h,
                          child: Image.asset('assets/images/login.png'))),
                  Padding(
                    padding:  EdgeInsets.only(left: 10.w),
                    child: const Text(
                      ' Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: mainColor),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: myTextField(

                      controller: emilController,
                      prefixIcon: const Icon(Icons.email),
                      validatorValue: 'emil address must not be empty',
                      labelText: 'Email',
                      // hintText: 'Enter Your Emil Address',
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Center(
                    child: myTextField(

                        controller: passwordController,
                        validatorValue: 'password must not be empty',
                        prefixIcon: const Icon(Icons.lock),
                        labelText: 'password',
                        // obscureText: LoginCubit.get(context).isPasswordShow,
                        // hintText: 'Enter Your Password',
                        suffixIcon: IconButton(
                            onPressed: () {
                              // LoginCubit.get(context)
                              //     .changePasswordVisibility();
                            },
                            icon: Icon(Icons
                                .remove_red_eye_outlined) //Icon(LoginCubit.get(context).suffix),
                            ),
                        onFieldSubmitted: (value) {
                          // if(formKey.currentState!.validate())
                          // {
                          //   LoginCubit.get(context).userLoginIn(
                          //       emilController.text,
                          //       passwordController.text);
                          // }
                        }),
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  Center(
                    child: defaultbutton(
                        function: () {
                          // if(formKey.currentState!.validate())
                          //   {
                          //     LoginCubit.get(context).userLoginIn(
                          //         emilController.text,
                          //         passwordController.text);
                          //   }
                        },
                        text: 'Login',
                        textColor: fillColorInTextFormField,
                        width: 128.w,
                        height: 41.h,
                        fontSizeText: 18.sp,

                        backround: mainColor),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have account ?',
                        style: TextStyle(fontSize: 14,color: mainColor),
                      ),
                      TextButton(
                          onPressed: () {
                            //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MusicPlayer()));
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(fontWeight: FontWeight.w700,
                                fontSize: 16, color:mainColor),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Divider(thickness: 1,color: mainColor)),

                      Padding(
                        padding:  EdgeInsets.only(left: 15.w,right: 15.w),
                        child: Text('Or',style: TextStyle(fontSize: 14.sp,color: mainColor),),
                      ),
                      Expanded(child: Divider(thickness: 1,color: mainColor)),
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
      ),
    );
  }
}
