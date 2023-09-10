import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/Authentication/Login.dart';
import 'package:uk_app/Authentication/Signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uk_app/screens/homee.dart';

import '../Session.dart';



class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
   void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 4), () {
      goToNextScreen();
    });
  }
  void goToNextScreen() async {
  var status = await SessionManager.isLoggedIn();

  if (status == true) {
    Get.to(Homee()); 
  } else {
    Get.to(Login()); 
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(14, 76, 161, 1),
      body: Stack(
        children: [
          
Image.asset('assets/red.png'),

           Align(
            alignment: Alignment.topCenter,
            
             child: FractionallySizedBox(
                heightFactor: 0.8,
                child: Image.asset(
                  'assets/login.png',
                  fit: BoxFit.contain,
                ),
              
                     ),
           ),
         Padding(
           padding: EdgeInsets.only(top:56.h,left: 22.w),
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
           padding: EdgeInsets.only(top:62.h,left: 19.w),
           child: Text(
                'Prepare. Excel. Thrive!',
                style: GoogleFonts.montserrat(
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


