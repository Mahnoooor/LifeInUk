import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../red.dart';
import '../text.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SingleChildScrollView(
    child: Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [

                  Padding(
           padding:  EdgeInsets.only(top: 30.h),
           child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/qa.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
         ),
          Red(),
          Positioned(
            top: 30,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.black,
                    size: 25.sp,
                  ),
                ),
                SizedBox(width: 2.w),
                Textt(
                  text: 'FAQs',
                  color: Colors.black,
                  weight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ],
            ),
          ),
          Positioned(
            top: 80,
            right: 20,
            left: 20,
            child: Align(
              alignment: Alignment.center,
              child: Textt(
                text: 'FREQUENTLY',
                color: Color.fromRGBO(14, 76, 161, 1),
                weight: FontWeight.w700,
                fontSize: 20.sp,
              ),
            ),
          ),
          Positioned(
            top: 95,
            right: 40,
            left: 40,
            child: Transform.translate(
              offset: Offset(23.sp, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textt(
                    text: 'ASKED',
                    color: Color.fromRGBO(14, 76, 161, 1),
                    weight: FontWeight.w700,
                    fontSize: 20.sp,
                  ),
                  Image.asset('assets/q.png'),
                ],
              ),
            ),
          ),
          Positioned(
            top: 155,
            right: 20,
            left: 20,
            child: Align(
              alignment: Alignment.center,
              child: Textt(
                text: 'QUESTIONS',
                color: Color.fromRGBO(14, 76, 161, 1),
                weight: FontWeight.w700,
                fontSize: 20.sp,
              ),
            ),
          ),
          Positioned(
            top: 215,
            right: 20,
            child: QA(
              text1: 'Lorem ipsum dolor sit amet?',
              text2:
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo con',
            ),
          ),
          Positioned(
            top: 320,
            right: 20,
            child: QA(
              text1: 'Lorem ipsum dolor sit amet?',
              text2:
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo con',
            ),
          ),
          Positioned(
            top: 425,
            right: 20,
            child: QA(
              text1: 'Lorem ipsum dolor sit amet?',
              text2:
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo con',
            ),
          ),
          Positioned(
            top: 530,
            right: 20,
            child: QA(
              text1: 'Lorem ipsum dolor sit amet?',
              text2:
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo con',
            ),
          ),
        ],
      ),
    ),
  ),
);

  }
}

class QA extends StatelessWidget {
  final String text1;
  final String text2;
  const QA({
    super.key, required this.text1, required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 90.w,
    height: 15.h,
       child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    
           Textt(
    text:text1,
          
    
          color: Colors.black,
    
          weight: FontWeight.w600,
    
          fontSize: 18.sp,
    
        ),
    
    
    
        SizedBox(height: 2.h,),
    
    
    
           Textt(
    text:text2,
         
    
          color: Colors.black,
    
          weight: FontWeight.w400,
    
          fontSize: 17.sp,
    
        ),
    
        ],
    
       )
    
    );
  }
}