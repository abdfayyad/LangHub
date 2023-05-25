import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/teacher/features/home/prisentation/bloc/cubit.dart';
import 'package:lang_hub/src/teacher/features/home/prisentation/bloc/states.dart';
import 'package:lang_hub/src/util/colors.dart';

class HomeTeacher extends StatelessWidget {
  const HomeTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>HomeTeacherCubit(),
      child: BlocConsumer<HomeTeacherCubit,HomeTeacherStates>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            appBar: AppBar(
              title: Text('LangHub',style: TextStyle(
                fontSize: 24.sp,fontWeight: FontWeight.bold,color: mainColor
              ),),
            //centerTitle: true,
              iconTheme: IconThemeData(color: mainColor),
              actionsIconTheme:IconThemeData(color: mainColor) ,

            backgroundColor: fillColorInTextFormField,

             // elevation: 0,
              actions: [

                IconButton(onPressed: (){

                },color: mainColor,
                  icon: Icon(Icons.search,size: 30.sh,color:mainColor,),)
              ],
            ),
            body: HomeTeacherCubit.get(context).screen[HomeTeacherCubit.get(context).currentIndex],
            bottomNavigationBar: BottomNavigationBar(

                currentIndex: HomeTeacherCubit.get(context).currentIndex,
                onTap: (index) {
                  HomeTeacherCubit.get(context).changeIndex(index);
                },
              unselectedItemColor: mainColor,
              unselectedFontSize: 14,
             showSelectedLabels: false,
               showUnselectedLabels: false,
              backgroundColor: fillColorInTextFormField,

                items:  <BottomNavigationBarItem>[

                  BottomNavigationBarItem(
                    icon: Icon(Icons.business_sharp,color: mainColor,size: 30),
                    label: 'Screen One',
                    backgroundColor: fillColorInTextFormField
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle,color: mainColor,size: 30),
                    label: 'Screen Two',backgroundColor: fillColorInTextFormField
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_sharp,color: mainColor,size: 30,),
                    label: 'Screen Three',backgroundColor: fillColorInTextFormField
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.group_rounded,color: mainColor,size: 30),
                    label: 'Screen Four',backgroundColor: fillColorInTextFormField
                  ),  BottomNavigationBarItem(
                    icon: Icon(Icons.chat_rounded,color: mainColor,size: 30),
                    label: 'Screen Four',

                      backgroundColor: fillColorInTextFormField
                  ),
                ],
              ),
            );
        },
      ),
    );
  }
}
