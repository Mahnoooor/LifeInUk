import 'dart:io';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/screens/chapters/chap1.dart';
import 'package:uk_app/screens/splash.dart';

import '../card1.dart';
import '../text.dart';

class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
       onWillPop: () => showExitPopup(context),
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal:5.w,vertical:2.h),
          child:  Column(
              children: [
                
               Container(
                    width: double.infinity,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 76, 161, 1),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(22.sp),
                bottomLeft: Radius.circular(22.sp),
                topRight: Radius.circular(22.sp),
                      
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:3.w,vertical: 3.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             CircleAvatar(
                          radius: 22.sp,
                          backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                          child: Icon(Icons.person,color: Colors.white,size:26.sp ,),
                        ), 
                
                        Textt(
                      text: 'Life In the UK',
                      color: Colors.white,
                      weight: FontWeight.w700,
                      fontSize: 22.sp,
                    ),
                
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active,color: Colors.white,size: 23.sp,))
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                
                 Textt(
                      text: 'Hi, Username!',
                      color: Colors.white,
                      weight: FontWeight.w600,
                      fontSize: 20.sp,
                    ),
                
                     Textt(
                      text: 'Welcome to our comprehensive UK test preparation app.',
                      color: Colors.white,
                      weight: FontWeight.w300,
                      fontSize: 17.5.sp,
                    ),
                
                        ],
                      ),
                    ),
                 
                
                ),
              SizedBox(height: 4.h,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
         
                    Container(
                        width: 25.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 76, 161, 1),
                      borderRadius: BorderRadius.circular(15.sp)
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Textt(
                                        text: 'Attempted',
                                        color: Colors.white,
                                        weight: FontWeight.w500,
                                        fontSize: 16.sp,
                                      ),
                            ),
Positioned(
  left: 10,
  top: 0,
  child:   CircleAvatar(radius: 16.sp,
  
                                          backgroundColor: Color.fromRGBO(237, 27, 36, 1),
  
                                          child:Textt(
  
                                                            text: '3',
  
                                                            color: Colors.white,
  
                                                            weight: FontWeight.w600,
  
                                                            fontSize: 15.sp,
  
                                                          )
  
                                                          ),
),
                                      

                          ],
                        ) ),
                
                            
                                   
                      
          
                 
                      SizedBox(width: 4.w,),
                                 Container(
                        width: 25.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 76, 161, 1),
                      borderRadius: BorderRadius.circular(15.sp)
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Textt(
                                        text: 'Passed',
                                        color: Colors.white,
                                        weight: FontWeight.w500,
                                        fontSize: 16.sp,
                                      ),
                            ),
Positioned(
  left: 10,
  top: 0,
  child:   CircleAvatar(radius: 16.sp,
  
                                          backgroundColor: Color.fromRGBO(237, 27, 36, 1),
  
                                          child:Textt(
  
                                                            text: '2',
  
                                                            color: Colors.white,
  
                                                            weight: FontWeight.w600,
  
                                                            fontSize: 15.sp,
  
                                                          )
  
                                                          ),
),
                                      

                          ],
                        ) ,
                                 ), 
                      SizedBox(width: 4.w,),
                         Container(
                        width: 25.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 76, 161, 1),
                      borderRadius: BorderRadius.circular(15.sp)
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Textt(
                                        text: 'Failed',
                                        color: Colors.white,
                                        weight: FontWeight.w500,
                                        fontSize: 16.sp,
                                      ),
                            ),
Positioned(
  left: 10,
  top: 0,
  child:   CircleAvatar(radius: 16.sp,
  
                                          backgroundColor: Color.fromRGBO(237, 27, 36, 1),
  
                                          child:Textt(
  
                                                            text: '1',
  
                                                            color: Colors.white,
  
                                                            weight: FontWeight.w600,
  
                                                            fontSize: 15.sp,
  
                                                          )
  
                                                          ),
),
                                      

                          ],
                        ) 
                        // Center(
                        //   child: Textt(
                        //               text: 'Failed',
                        //               color: Colors.white,
                        //               weight: FontWeight.w400,
                        //               fontSize: 16.sp,
                        //             ),
                        // ), 
       ), 
                    ],
                  ),
               
          
          SizedBox(height: 3.h,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
               Card1(text: 'text', text2: '', image: 'assets/card.png', Rowtext: 'DD/MM/YYY', Rowtext2: '24 Questions',
                      icon:Icons.calendar_today, icon2: Icons.quiz_outlined, Row2text: 'DD/MM/YYY', Row2text2: '10 Enrolled', 
                      icon3: Icons.alarm_on_sharp, icon4: Icons.people_outline, 
                      tap: (){
                        Get.to(Chapter1());
                      },
                      ),
            
                          SizedBox(height: 3.h,),
                    Card1(text: 'text', text2: '', image: 'assets/card.png', Rowtext: 'DD/MM/YYY', Rowtext2: '24 Questions',
                      icon:Icons.calendar_today, icon2: Icons.quiz_outlined, Row2text: 'DD/MM/YYY', Row2text2: '10 Enrolled', 
                      icon3: Icons.alarm_on_sharp, icon4: Icons.people_outline,

                     tap: (){
                      Get.to(Chapter1());
                     },
                      ),
                ],
              ),
            ),
          ),
    
               
              
              ],
            ),
          
        ),
      ),
    );
  }
}

Future<bool> showExitPopup(context) async{
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Do you want to exit?"),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          exit(0);
                         
                        },
                        child: Text("Yes"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red.shade800),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('no selected');
                            Navigator.of(context).pop();
                          },
                          child: Text("No", style: TextStyle(color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        );
      });
}
