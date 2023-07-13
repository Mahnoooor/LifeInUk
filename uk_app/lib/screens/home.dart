import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/test.dart';

import '../navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      backgroundColor: Color.fromRGBO(14, 76, 161, 1),
      body:  Stack(
          children: [
            Positioned(
              top: 0,
              left: -10,
              child: Container(
              width: 30.w,
              height: 20.h,
              decoration: BoxDecoration(
            color: Color.fromRGBO(237, 27, 36, 1),
            
            borderRadius: BorderRadius.only(topRight: Radius.elliptical(20.w,20.h),
            topLeft: Radius.elliptical(20.w, 20.h),
            bottomRight: Radius.circular(40.sp),
            bottomLeft: Radius.circular(40.sp)
            ),
              ),
              ),
            ),
      
             Positioned(
              top: 65,
             
              left: 88,
              child: Text(
                          'Life In the UK',
                          style: GoogleFonts.roboto(textStyle:TextStyle(
                            color: Colors.white,
                            fontSize: 25.sp,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
            ), 
      
             Positioned(
                top: 150,
                left: 50,
               
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                       Test(text: 'Test 1',ontap: (){},),
                       SizedBox(width: 12.w,),
                       Test(text: 'Test 1',ontap: (){},),
                       
                
                        ],
                      ),
SizedBox(height: 6.h,),
                         Row(
                        children: [
                       Test(text: 'Test 1',ontap: (){},),
                       SizedBox(width: 12.w,),
                       Test(text: 'Test 1',ontap: (){},),
                       
                
                        ],
                      ),
SizedBox(height: 7.h,),
                         Row(
                        children: [
                       Test(text: 'Test 1',ontap: (){},),
                       SizedBox(width: 12.w,),
                       Test(text: 'Test 1',ontap: (){},),
                       
                
                        ],
                      ),
                
                      
                    ],
                  ),
                ),
              
            )
          ],
        ),
      
    );
  }
}
BottomNavigationBarItem buildNavBarItem(IconData icon, String label, int index) {
  return BottomNavigationBarItem(
    icon: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 25.sp),
        Container(
          height: 20,
          width: 1,
          color: Colors.white,
        ),
      ],
    ),
    label: label,
  );
}


