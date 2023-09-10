import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class Red extends StatelessWidget {
  const Red({super.key});

  @override
  Widget build(BuildContext context) {
    return     Positioned(
            top: 0,
            left: -10,
            child: Container(
  width: 30.w,
  height: 20.h,
  decoration: BoxDecoration(
    color: Color.fromRGBO(237, 27, 36, 1),
    borderRadius: BorderRadius.only(
      topRight: Radius.elliptical(28.w, 30.h),
      topLeft: Radius.elliptical(40.w, 30.h), 
      bottomRight: Radius.circular(50.sp),
      bottomLeft: Radius.circular(50.sp),
    ),
  ),
)

          );
  }
}