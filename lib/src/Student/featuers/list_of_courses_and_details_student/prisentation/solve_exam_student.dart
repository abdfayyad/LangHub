import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/Student/featuers/list_of_courses_and_details_student/prisentation/bloc/status.dart';

import '../../../../util/colors.dart';


class Question {
  final int id;
  final String text;
  final List<String> options;

  Question({required this.id, required this.text, required this.options});
}

class SolveExamStudent extends StatefulWidget {
  @override
  _SolveExamStudentState createState() => _SolveExamStudentState();
}

class _SolveExamStudentState extends State<SolveExamStudent> {
  List<Question> questions = [
    Question(
      id: 1,
      text: 'What is the capital of France?',
      options: ['Paris', 'Berlin', 'London'],
    ),
    Question(
      id: 2,
      text: 'Which planet is known as the Red Planet?',
      options: ['Mars', 'Venus', 'Jupiter'],
    ),    Question(
      id: 3,
      text: 'What is the capital of France?',
      options: ['Paris', 'Berlin', 'London'],
    ),
    Question(
      id: 4,
      text: 'Which planet is known as the Red Planet?',
      options: ['Mars', 'Venus', 'Jupiter'],
    ),    Question(
      id: 5,
      text: 'What is the capital of France?',
      options: ['Paris', 'Berlin', 'London'],
    ),
    Question(
      id: 6,
      text: 'Which planet is known as the Red Planet?',
      options: ['Mars', 'Venus', 'Jupiter'],
    ),    Question(
      id: 7,
      text: 'What is the capital of France?',
      options: ['Parissdlkfjdgkljdsakljsdkl', 'Berlin', 'London'],
    ),
    Question(
      id: 8,
      text: 'Which planet is known as the Red Planet?',
      options: ['Mars', 'Venus', 'Jupiter'],
    ),
    // Add more questions here
  ];

  Map<int, int> selectedAnswers = {};

  void selectOption(int questionId, int optionIndex) {
    setState(() {
      selectedAnswers[questionId] = optionIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>CourseStudentCubit(),
    child: BlocConsumer<CourseStudentCubit,CourseStudentStatus>(
      listener: (context,state){},
      builder: (context,state){
        return  Scaffold(
          appBar: AppBar(
            title: Text(
              'solve your exam',
              style: TextStyle(color: mainColor),
            ),
            backgroundColor: fillColorInTextFormField,
            iconTheme: IconThemeData(color: mainColor),
          ),
          body: ListView.builder(
            itemCount: questions.length,
            itemBuilder: (context, index) {
              Question question = questions[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Question ${question.id}: ${question.text}',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: mainColor),
                      ),
                    ),
                    for (int optionIndex = 0; optionIndex < question.options.length; optionIndex++)
                      Padding(
                        padding:  EdgeInsets.only(left:10.w,top:10.h,right: 0,bottom: 0),
                        child: OptionButton(
                          questionId: question.id,
                          optionIndex: optionIndex,
                          text: question.options[optionIndex],
                          isSelected: selectedAnswers[question.id] == optionIndex,
                          onTap: () => selectOption(question.id, optionIndex),
                        ),
                      ),
                    SizedBox(height: 5.h),
                  ],
                ),
              );
            },
          ),
          floatingActionButton: ElevatedButton(
            style:ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(mainColor),) ,
            onPressed: () {
              // Handle answer submission here
              print(selectedAnswers.map((questionId, optionIndex) => MapEntry('"$questionId"', '$optionIndex')));

            },
            child: Text('Submit'),
          ),
        );
      },
    ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final int questionId;
  final int optionIndex;
  final String text;
  final bool isSelected;
  final Function onTap;

  OptionButton({
    required this.questionId,
    required this.optionIndex,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? mainColor : fillColorInTextFormField,
          borderRadius: BorderRadius.circular(8),
          border: isSelected ? null : Border.all(color: mainColor),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
