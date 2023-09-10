import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/text.dart';
import '../red.dart';

class Policy extends StatefulWidget {
  const Policy({Key? key}) : super(key: key);

  @override
  State<Policy> createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         
         Padding(
           padding:  EdgeInsets.only(left:8.w,top: 4.h),
           child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/p.png'),
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
                  onPressed: () {Get.back();},
                  icon: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.black,
                    size: 25.sp,
                  ),
                ),
                SizedBox(width: 2.w),
                Textt(
                  text: 'Privacy Statement',
                  color: Colors.black,
                  weight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            right: 7,
            child: Container(
              width: 90.w,
              height: 15.h,
              child: Textt(
                text:
                    'By accessing and using this app, you acknowledge and agree to be bound by the terms and conditions outlined on this page. We will ensure the safety of your personal information also.',
                color: Colors.black,
                weight: FontWeight.w500,
                fontSize: 17.sp,
              ),
            ),
          ),
          Positioned(
            top: 240,
            child: Transform.translate(
              offset: Offset(37.sp, 0),
              child: Textt(
                text: 'Our Privacy Policy',
                color: Color.fromRGBO(14, 76, 161, 1),
                weight: FontWeight.w800,
                fontSize: 20.sp,
              ),
            ),
          ),
          Positioned(
            top: 300,
            right: 3,
            child: Container(
              alignment: Alignment.topLeft,
              width: 90.w,
              height: 16.h,
              child: Textt(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo con Lorem ipsum dolor sit amet, consectetur adipiscing , sed do eiusmod tempor incididunt ut labore ',
                color: Colors.black,
                weight: FontWeight.w500,
                fontSize: 17.sp,
              ),
            ),
          ),
          Positioned(
            top: 450,
            right: 3,
            child: Container(
              alignment: Alignment.topLeft,
              width: 90.w,
              height: 16.h,
              child: Textt(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo con Lorem ipsum dolor sit amet, consectetur adipiscing , sed do eiusmod tempor incididunt ut labore ',
                color: Colors.black,
                weight: FontWeight.w500,
                fontSize: 17.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
