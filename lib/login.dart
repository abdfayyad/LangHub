import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'componantes.dart';
import 'defaultbutton.dart';

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
                  const Text(
                    ' Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  myTextField(
                    width: 354.w,
                    height: 46.h,
                    controller: emilController,
                    prefixIcon: const Icon(Icons.email),
                    validatorValue: 'emil address must not be empty',
                    labelText: 'Email',
                    // hintText: 'Enter Your Emil Address',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  myTextField(
                      width: 354.w,
                      height: 46.h,
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
                        icon:Icon(Icons.remove_red_eye_outlined) //Icon(LoginCubit.get(context).suffix),
                      ),
                      onFieldSubmitted: (value) {
                        // if(formKey.currentState!.validate())
                        // {
                        //   LoginCubit.get(context).userLoginIn(
                        //       emilController.text,
                        //       passwordController.text);
                        // }
                      }),
                  SizedBox(
                    height: 26.h,
                  ),
                  Center(
                    child:  defaultbutton(
                          function: () {
                            // if(formKey.currentState!.validate())
                            //   {
                            //     LoginCubit.get(context).userLoginIn(
                            //         emilController.text,
                            //         passwordController.text);
                            //   }
                          },
                          text: 'Login',
                          textColor: Colors.white,
                          width: 259.w,
                          height: 48.h,
                          fontSizeText: 18.sp,
                          backround: const Color(0xFF5A729E)),

                    ),

                  SizedBox(
                    height: 16.h,
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () {
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage()));

                        },
                        child: const Text(
                          'Forget  your password ?',
                          style: TextStyle(

                              fontSize: 14, color: Color(0xff44567B)),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have account ?',
                        style: TextStyle(fontSize: 14),
                      ),
                      TextButton(
                          onPressed: () {
                            //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MusicPlayer()));
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff44567B)),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
