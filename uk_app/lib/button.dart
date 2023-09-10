
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const Button({super.key, required this.text, required this.onTap});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return   Container(
                      width: 33.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: Color.fromRGBO(237, 27, 36, 1),
                        border: Border.all(color: Color.fromRGBO(183, 23, 30, 1))
                      ),
                      child: TextButton(onPressed: widget.onTap, child: Text(
                        widget.text,
                        style: GoogleFonts.roboto(textStyle:TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                        )
                      ),
                      ),
        );
  }
}


 