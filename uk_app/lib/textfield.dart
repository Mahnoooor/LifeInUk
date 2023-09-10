import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MytextField extends StatelessWidget {
  final String text;
  final String suffix;
  final TextInputType? keyboardType;

  const MytextField({
    Key? key,
    required this.text,
    this.keyboardType,
    required this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      keyboardType: keyboardType,
      readOnly: true, 
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(color: Color.fromRGBO(72, 71, 71, 1)),
        fillColor: Color.fromRGBO(247, 247, 247, 1),
        filled: true,
        suffixIcon: Padding(
          padding: EdgeInsets.only(right:2.sp,top: 2.h),
          child: Text(suffix,style: TextStyle(fontSize: 18.sp, color: Color.fromRGBO(72, 71, 71, 1)),),
        ),

        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9)),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 3.w),
      ),
    );
  }
}
