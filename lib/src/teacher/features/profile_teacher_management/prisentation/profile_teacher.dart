import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lang_hub/src/util/colors.dart';

class ProfileTeacher extends StatefulWidget {

//proton vpn cli c -f -p tcp
  late final String title;

  @override
  _ProfileTeacherState createState() => _ProfileTeacherState();
}

class _ProfileTeacherState extends State<ProfileTeacher>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 1, vsync: this);
  }

  double getHeight() {
    return 800;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Stack(
          children: [
            DefaultTabController(
              length: 3,
              child: NestedScrollView(
                headerSliverBuilder: (context, value) {
                  return [
                    SliverAppBar(
                        floating: true,
                        pinned: true,
                        snap: true,
                        //elevation: 70,
                        collapsedHeight:80,
                      expandedHeight: 400.0,
                      title: IconButton(icon: Icon(Icons.edit),onPressed: (){
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>pdfViewerPage()));
                      },),
                      flexibleSpace: FlexibleSpaceBar(

                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15.h),
                            Text('abd fayyad'),
                            SizedBox(height: 5.h),
                            Text('abd fayyad',style: TextStyle(fontSize: 14.sp),),
                          ],
                        ),

                        background: Image(
                            image: AssetImage('assets/images/login.png'),
                            fit: BoxFit.fill,
                          ) ,
                      )
                      // Stack(
                      //   children: [
                      //     Image(
                      //
                      //       image: AssetImage('assets/images/login.png'),
                      //       fit: BoxFit.fill,
                      //     )
                      //   ],
                      // ),
                    ),
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: _SliverAppBarDelegate(
                        minHeight: 90,
                        maxHeight: 90,
                        child: Container(
                          height: getHeight() * (1 / 11),
                          width: double.infinity,
                          color: fillColorInTextFormField,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text("phone number",style: TextStyle(color: mainColor,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10.h,),
                                Text("+9630936854125",style: TextStyle(color: mainColor,fontSize: 18.sp,fontWeight: FontWeight.normal),)
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          )
                        ),
                      ),
                    ),

                    SliverPersistentHeader(
                      pinned: true,
                      delegate: _SliverAppBarDelegate(
                        minHeight: 60,
                        maxHeight: 60,
                        child: Container(
                          height: getHeight() * (1 / 11),
                          width: double.infinity,
                          color: fillColorInTextFormField,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text("My posts",style: TextStyle(color: mainColor,fontSize: 20.sp,fontWeight: FontWeight.normal),),

                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          )
                        ),
                      ),
                    ),
                  ];
                },
                // body: TabBarView(
                //   controller: _tabController,
                //   children: [
                //     SingleChildScrollView(
                //       child: Container(
                //         padding: EdgeInsets.only(bottom: 600),
                //         child: Column(
                //           children: [
                //             // RoundedPicture(),
                //             Icon(
                //               Icons.favorite,
                //               color: Colors.pink,
                //               size: 150.0,
                //               semanticLabel:
                //               'Text to announce in accessibility modes',
                //             ),
                //             FittedBox(
                //               child: Text("Hello World",
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       color: Colors.black,
                //                       fontSize: 40)),
                //             ),
                //             SizedBox(
                //               height: 20,
                //             ),
                //             Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 RichText(
                //                   text: TextSpan(
                //                       style: TextStyle(
                //                           fontWeight: FontWeight.bold,
                //                           color: Colors.black,
                //                           fontSize: 20),
                //                       text: 'Info1:  ',
                //                       children: [
                //                         TextSpan(
                //                           text: "123",
                //                           style: TextStyle(),
                //                         ),
                //                       ]),
                //                 ),
                //                 SizedBox(
                //                   height: 20,
                //                 ),
                //                 RichText(
                //                   text: TextSpan(
                //                       style: TextStyle(
                //                           fontWeight: FontWeight.bold,
                //                           color: Colors.black,
                //                           fontSize: 20),
                //                       text: 'Info2:  ',
                //                       children: [
                //                         TextSpan(
                //                           text: "abcd",
                //                           style: TextStyle(),
                //                         ),
                //                       ]),
                //                 ),
                //                 SizedBox(
                //                   height: 20,
                //                 ),
                //                 RichText(
                //                   text: TextSpan(
                //                       style: TextStyle(
                //                           fontWeight: FontWeight.bold,
                //                           color: Colors.black,
                //                           fontSize: 20),
                //                       text: 'Info3:  ',
                //                       children: [
                //                         TextSpan(
                //                           text: "xyz",
                //                           style: TextStyle(),
                //                         ),
                //                       ]),
                //                 ),
                //               ],
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //     SingleChildScrollView(
                //       child: Container(
                //         padding: EdgeInsets.only(bottom: 600),
                //         child: Column(
                //           children: [
                //             Container(
                //               padding: EdgeInsets.only(bottom: 600),
                //               child: Center(
                //                 child: Text("TITLE2"),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //
                //
                //   ],
                // ),
                body:  ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CourseDetails()));
                            // navigateTo(context, CourseDetails());
                          },
                          child: Container(
                            width: 299.w,
                            height: 350.h,
                            decoration: BoxDecoration(
                                color: fillColorInTextFormField,
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                  color: borderContainer,
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("my cv",style: TextStyle(color: mainColor,fontSize: 20.sp,fontWeight: FontWeight.normal),),
                                ),

                                Container(
                                  width: double.infinity,
                                  height:300,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/p.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                        ),
                      );
                    }),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
