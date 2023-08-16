import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/util/colors.dart';
import 'package:lang_hub/src/util/defaultbutton.dart';


class DegreeTrackerApp extends StatefulWidget {
  @override
  _DegreeTrackerAppState createState() => _DegreeTrackerAppState();
}

class _DegreeTrackerAppState extends State<DegreeTrackerApp> {
  List<Student> students = [
    Student('a Doe', 'john@example.com', '1234567890'),
    Student('b Smith', 'jane@example.com', '9876543210'),
    Student('c Smith', 'jane@example.com', '9876543210'),
    Student('d Smith', 'jane@example.com', '9876543210'),
    Student('n Smith', 'jane@example.com', '9876543210'),
    Student('f Smith', 'jane@example.com', '9876543210'),
    Student('b Smith', 'jane@example.com', '9876543210'),
    // Add more students here
  ];

  List<Degree> degrees = [];

  List<TextEditingController> degreeControllers = [];

  void addDegree(Student student, TextEditingController degreeController) {
    int? degree = int.tryParse(degreeController.text);

    if (degree != null) {
      Degree newDegree = Degree(student, degree);
      setState(() {
        degrees.add(newDegree);
        degreeController.clear();
      });
    }
  }

  void addAllDegrees(Student student) {
    for (int i = 0; i < students.length; i++) {
      if (students[i] == student) {
        addDegree(student, degreeControllers[i]);
      }
    }
  }


  void sendDegrees() {
    for (Degree degree in degrees) {
      print('Sending degree for ${degree.student.name}: ${degree.degree}');
      // Perform the sending logic here
    }
    degrees.clear();
  }

  @override
  void initState() {
    super.initState();
    // Initialize the degree controllers for each student
    for (int i = 0; i < students.length; i++) {
      degreeControllers.add(TextEditingController());
    }
  }

  @override
  void dispose() {
    // Dispose of the degree controllers
    for (TextEditingController controller in degreeControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'add degrees ',
            style: TextStyle(color: mainColor),
          ),
          backgroundColor: fillColorInTextFormField,
          iconTheme: IconThemeData(color: mainColor),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    Student student = students[index];
                    TextEditingController controller = degreeControllers[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 330.w,
                        height: 133.h,
                        decoration: BoxDecoration(
                            color: fillColorInTextFormField,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: borderContainer,
                            )),
                        child:Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${student.name}",
                                style: TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp),),
                              Text("${student.email}",
                                style: TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20.sp),),
                              Row(children: [
                                Expanded(child: Text("${student.phoneNumber}",
                                  style: TextStyle(
                                      color: mainColor,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20.sp),)),
                                SizedBox(

                                  width: 111.w,
                                  height: 42.h,

                                  child: TextFormField(

                                          controller: controller,
                                          decoration: InputDecoration(hintText: 'Degree',fillColor:mainColor ),
                                          keyboardType: TextInputType.number,
                                        ),
                                ),
                              ],)
                            ],
                          ),
                        ),
                      ),
                    );
                    // return ListTile(
                    //   title: Text(student.name),
                    //   subtitle: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       // Text('Email: ${student.email}'),
                    //       // Text('Phone: ${student.phoneNumber}'),
                    //       // TextField(
                    //       //   controller: controller,
                    //       //   decoration: InputDecoration(labelText: 'Degree'),
                    //       //   keyboardType: TextInputType.number,
                    //       // ),
                    //       // SizedBox(height: 8.0),
                    //
                    //     ],
                    //   ),
                    // );
                  },
                ),
              ),
              SizedBox(height: 120.h,),
              // ElevatedButton(
              //   onPressed: () {
              //     for (Student student in students) {
              //       addAllDegrees(student);
              //       print(student);
              //     }
              //
              //   },
              //   child: Text('Add All Degrees'),
              // ),
              // ElevatedButton(
              //   onPressed: sendDegrees,
              //   child: Text('Send Degrees'),
              // ),

              defaultbutton(backround: mainColor,
                  text: "Done",
                  textColor: fillColorInTextFormField,
                  function: (){
                   for (Student student in students) {
                       addAllDegrees(student);
                      // print(student);
                    }
                    sendDegrees;
                  }
              ),
              SizedBox(height: 16.0),
              // Expanded(
              //   child: ListView.builder(
              //     itemCount: degrees.length,
              //     itemBuilder: (context, index) {
              //       Degree degree = degrees[index];
              //       Student student = degree.student;
              //       return ListTile(
              //         title: Text(student.name),
              //         subtitle: Text('Degree: ${degree.degree}'),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class Student {
  String name;
  String email;
  String phoneNumber;

  Student(this.name, this.email, this.phoneNumber);
}

class Degree {
  Student student;
  int degree;

  Degree(this.student, this.degree);
}