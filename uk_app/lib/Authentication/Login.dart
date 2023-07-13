

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(14, 76, 161, 1),
      body: Stack(
        children: [Container(
          width: double.infinity,
          height: 42.h,
          decoration: BoxDecoration(
color: Color.fromRGBO(237, 27, 36, 1),
borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(60.w,18.h),
bottomRight: Radius.elliptical(20.w, 20.h)
),
          ),
          child: Image.asset('assets/login.png'),
        ),
          Positioned(
            top: 120,
           
            left: 75,
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

        Center(
          child: Padding(
            padding:  EdgeInsets.only(top:31.h ),
            child: Container(
              width: 78.w,
              height: 62.h,
                       decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.sp),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal:4.w,vertical: 3.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                      'Sign in!',
                      style: GoogleFonts.roboto(textStyle:TextStyle(
                        color: Colors.black,
                        fontSize: 23.sp,
                        fontWeight: FontWeight.bold,
                      ),)
                    ),
                  
                    SizedBox(height: 3.h,),
                    Formfields(text: 'Email address',icon: Icons.email,obscureText: false,keyboardType: TextInputType.emailAddress,),

                    SizedBox(height: 3.h,),
                    TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: 'Password',
         
      labelText: 'Password',
      labelStyle: TextStyle(color: Color.fromRGBO(72, 71, 71, 1)),
      fillColor: Color.fromRGBO(247, 247, 247, 1),
      filled: true,
      
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9)),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 0.5.h,horizontal: 3.w),
    
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ),
    ),
SizedBox(height: 0.5.h,),

                    Align(
                      alignment: Alignment.topRight,
                       child:TextButton(onPressed: (){}, child: Text(
                        'Forgot password?',
                        style: GoogleFonts.roboto(textStyle:TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        )
                      ),
                      )
                     
                    ), 

                    //loginbutton

                       SizedBox(height: 2.h,),
     Button(text: 'Sign in', onTap: () {
       
     },),

        SizedBox(height: 2.5.h,),
Text(
                        'OR',
                        style: GoogleFonts.roboto(textStyle:TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w600,
                        ),
                        )
                      ),
 SizedBox(height: 1.h,),
                      TextButton(onPressed: (){}, child: Text(
                        'Sign up',
                        style: GoogleFonts.roboto(textStyle:TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w600,
                        ),
                        )
                      ))
                      ],
                    ),
                  ),
                ),
            ),
          ),
        )
        ],
      ),
    );
  }
}

class Formfields extends StatelessWidget {
  final String text;
  final IconData icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const Formfields({
    Key? key,
    required this.text,
    required this.icon,
    this.keyboardType,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    TextFormField(
    // controller: controller,
    style: const TextStyle(color: Colors.black),
    obscureText: obscureText,
    keyboardType: keyboardType,
    decoration: InputDecoration(
      labelText: text,
      labelStyle: TextStyle(color: Color.fromRGBO(72, 71, 71, 1)),
      fillColor: Color.fromRGBO(247, 247, 247, 1),
      filled: true,
      suffixIcon: Icon(icon, color: Colors.black.withOpacity(0.8)),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9)),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 0.5.h,horizontal: 3.w)
    ),
    
 
);
  }
}


