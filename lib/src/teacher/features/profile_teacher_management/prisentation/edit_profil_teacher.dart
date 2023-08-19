import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:lang_hub/src/util/defaultbutton.dart';
import 'package:lang_hub/src/util/myTextField.dart';

class EditProfileTeacher extends StatefulWidget {
  EditProfileTeacher({Key? key}) : super(key: key);

  @override
  State<EditProfileTeacher> createState() => _EditProfileTeacherState();
}

class _EditProfileTeacherState extends State<EditProfileTeacher> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().getImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var _controllerName = TextEditingController();
    var _controllerPhone = TextEditingController();
    var _controllerEmail = TextEditingController();
    var _controllerOldPassword = TextEditingController();
    var _controllerNewPassword = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: mainColor,
        backgroundColor: fillColorInTextFormField,
        title: Text(
          "Edit Profile",
          style: TextStyle(
              fontSize: 24.sp, fontWeight: FontWeight.bold, color: mainColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.h),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => Center(
                      child: Dialog(
                        backgroundColor: fillColorInTextFormField,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        //this right here
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200.h,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("chose from Gallery",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20.sp,
                                        color: mainColor)),
                                SizedBox(
                                  height: 5.h,
                                ),
                                defaultbutton(
                                    backround: mainColor,
                                    text: "Gallery",
                                    textColor: fillColorInTextFormField,
                                    function: () {
                                      _pickImage(ImageSource.gallery);
                                      Navigator.of(context).pop();
                                    }),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text("chose from camera",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20.sp,
                                        color: mainColor)),
                                SizedBox(
                                  height: 5.h,
                                ),
                                defaultbutton(
                                    backround: mainColor,
                                    text: "Camera",
                                    textColor: fillColorInTextFormField,
                                    function: () {
                                      _pickImage(ImageSource.camera);
                                      Navigator.of(context).pop();
                                    }),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ));
              },
              child: CircleAvatar(
                radius: 110.r,
                backgroundColor: fillColorInTextFormField,
                backgroundImage: _image != null ? FileImage(_image!) : null,
                child: _image == null
                    ? Icon(
                  Icons.camera_alt,
                  size: 80,
                  color: mainColor,
                )
                    : null,
              ),
            ),
            SizedBox(height: 20.h),
            myTextField(
              radios: 20.r,
              controller: _controllerName,
            ),
            SizedBox(height: 20.h),
            myTextField(
              radios: 20.r,
              controller: _controllerPhone,
            ),
            SizedBox(height: 20.h),
            myTextField(
              radios: 20.r,
              controller: _controllerEmail,
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("can you change password:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18.sp,
                        color: mainColor)),
                TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => Center(
                            child: Dialog(
                              backgroundColor: fillColorInTextFormField,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(16.0)),
                              //this right here
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 210.h,
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Old Password",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 20.sp,
                                              color: mainColor)),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      myTextField(
                                          controller:
                                          _controllerOldPassword,
                                          colorfillColor: Colors.white),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("New Password",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 20.sp,
                                              color: mainColor)),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      myTextField(
                                          controller:
                                          _controllerNewPassword,
                                          colorfillColor: Colors.white),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'cancel',
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 20.sp,
                                                    color: mainColor),
                                              )),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Change',
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 20.sp,
                                                    color: mainColor),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ));
                    },
                    child: Text("change password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: mainColor)))
              ],
            ),
            SizedBox(height: 20.h),
            defaultbutton(
                backround: mainColor,
                text: "Done",
                textColor: fillColorInTextFormField,
                function: () {}),
            SizedBox(height: 300.h),
          ],
        ),
      ),
    );
  }
}
