import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Test extends StatefulWidget {
  final String text;
  final VoidCallback ontap;
  const Test({super.key, required this.text, required this.ontap});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
      onTap: widget.ontap,
      child: Container(
                            width: 30.w,
                            height: 17.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,width: 0.5.w
                              ),
         
          gradient: const LinearGradient(
            colors: [Color.fromRGBO(75, 108, 183, 0.3),Color.fromRGBO(24, 40, 72, 0.3)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
                          
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                             Text(
                          widget.text,
                          style: GoogleFonts.roboto(textStyle:TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),)
                                            ),

                                            GestureDetector(
                                              onTap: (){},
                                              child: Icon(Icons.lock_outline_rounded)),

                                            // IconButton(onPressed: (){}, icon: Icon(Icons.lock_outline_rounded)),
                              Image.asset('assets/test.png')
                            ],),
                          ),
    );
  }
}