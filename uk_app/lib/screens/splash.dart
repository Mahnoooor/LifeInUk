import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(14, 76, 161, 1),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 42.h,
            decoration: BoxDecoration(
              color: Color.fromRGBO(237, 27, 36, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(80.w, 25.h),
                bottomRight: Radius.elliptical(30.w, 20.h),
              ),
            ),
            child: FractionallySizedBox(
              heightFactor: 0.8, // Adjust the fraction to increase the height
              child: Image.asset(
                'assets/login.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
         Padding(
           padding: EdgeInsets.only(top:40.h,left: 22.w),
           child: Text(
                'Life In the UK',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 25.sp,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              
            ),
         ),
          Padding(
           padding: EdgeInsets.only(top:45.h,left: 22.w),
           child: Text(
                'Prepare. Excel. Thrive!',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 19.sp,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              
            ),),

            Align(

             alignment: Alignment.bottomCenter,
              child: Image.asset('assets/splash.png',width: double.infinity,),
            )
        ],
      ),
    );
  }
}
