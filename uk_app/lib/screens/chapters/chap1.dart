import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/button.dart';

import '../../red.dart';
import 'hint.dart';
import 'options.dart';

class Chapter1 extends StatefulWidget {
  
  const Chapter1({Key? key}) : super(key: key);

  @override
  State<Chapter1> createState() => _Chapter1State();
}

class _Chapter1State extends State<Chapter1> {
  double progress = 0.2;
  bool _isChecked = false; 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(14, 76, 161, 1),
      body: Stack(
        children: [
      Red(),
          Positioned(
            top: 25,
            left: 75,
            child: Text(
              'Life In the UK',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 23.sp,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 110,
            child: Text(
              'CHAPTER NO. 01',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 50,
            child: Text(
              'Question 1/5',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 30,
            right: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.sp),
              child: LinearProgressIndicator(
                value: progress,
                      
                backgroundColor: Colors.white, 
                valueColor: const AlwaysStoppedAnimation<Color>(
                  Color.fromRGBO(237, 27, 36, 1),
                ), 
              ),
            ),
          ),

           Center(
          child: Padding(
            padding:  EdgeInsets.only(top:20.h ),
            child: Container(
              width: 78.w,
              height: 72.h,
                       decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.sp),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal:4.w,vertical: 2.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                      SizedBox(height: 5.h,),

                        Text(
                      'Lorem ipsum dolor sit amet, elit, sed do eiusmod? ',
                      style: GoogleFonts.montserrat(textStyle:TextStyle(
                        color: Colors.black,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                      ),)
                    ),
SizedBox(
  height: 3.h,

  
),

Option(text: 'Option A', initialValue: false),

SizedBox(height: 2.h,),

Option(text: 'Option A', initialValue: false),
SizedBox(height: 2.h,),

Option(text: 'Option A', initialValue: false),
SizedBox(height: 2.h,),

Option(text: 'Option A', initialValue: false),

SizedBox(height: 2.h,),

 Row(
  mainAxisAlignment: MainAxisAlignment.end,
    children: [
  
        Text(
  
                        'Hint Image',
  
                        style: GoogleFonts.montserrat(textStyle:TextStyle(
  
                          color: Colors.black,
  
                          fontSize: 17.sp,
  
                          fontWeight: FontWeight.w500,
  
                        ),)
  
                      ),
  
  SizedBox(width:2.w),
  
      hint(image: 'assets/splash.png',)
    ],
  
  ),

  Button(text: 'Submit', onTap: (){})

                      ]
                    ),
                  ),
                )
            ),
          ),
           ),

            Positioned(top: 155,
            left: 50,
                    
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset('assets/chap1.png')),
                        ),
        ],
      ),
    );
  }
}
