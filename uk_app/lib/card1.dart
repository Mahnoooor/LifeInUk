      import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/screens/homee.dart';
import 'package:uk_app/text.dart';

class Card1 extends StatelessWidget {
  final String text;
  final String text2;
  final String image;
  final String Rowtext;
  final String Rowtext2;
  final IconData icon;
  final IconData icon2;
    final String Row2text;
  final String Row2text2;
  final IconData icon3;
  final IconData icon4;
  final VoidCallback tap;

  const Card1({super.key, required this.text, required this.text2, required this.image, required this.Rowtext, required this.Rowtext2, required this.icon, required this.icon2, required this.Row2text, required this.Row2text2, required this.icon3, required this.icon4, required this.tap});

  @override
  Widget build(BuildContext context) {
    return        GestureDetector(
      onTap:tap ,
      child: Card(
                   shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(10.sp)
                        ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal:3.w,vertical: 2.h),
                    child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                  Textt(
                                                            text: 'TESTS',
                                                            color: Color.fromRGBO(14, 76, 161, 1),
                                                            weight: FontWeight.w600,
                                                            fontSize: 18.sp,
                                                          ),
                  SizedBox(height: 2.h,),
                                                          Image.asset('assets/card.png'),
          
                       SizedBox(height: 2.h,),
                       Textt(
                                                            text: 'Mock Test 1',
                                                            color: Colors.black,
                                                            weight: FontWeight.w500,
                                                            fontSize: 18.sp,
                                                          ), 
          
                                                          SizedBox(height: 2.h,),
                                                           CardRow.buildCardRow(
              text: Rowtext,
              text2: Rowtext2,
              icon: icon,
              icon2: icon2,
            ),
    SizedBox(height: 3.h,),
            CardRow.buildCardRow(
              text: Row2text,
              text2: Row2text2,
              icon: icon3,
              icon2: icon4,
            ),
          
          
                                                                               
                                                          
                      ],
                    ),
                  ),
                ),
    );
  }
}


class CardRow {
  static Row buildCardRow({
    required String text,
    required String text2,
    required IconData icon,
    required IconData icon2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.black, size: 19.sp),
           Textt(
                                                          text: text,
                                                          color: Colors.black,
                                                          weight: FontWeight.w500,
                                                          fontSize: 17.sp,
                                                        ), 
          ],
        ),
        Row(
          children: [
            Icon(icon2, color: Colors.black, size: 20.sp),
            Textt(
                                                          text: text2,
                                                          color: Colors.black,
                                                          weight: FontWeight.w500,
                                                          fontSize: 17.sp,
                                                        ), 
          ],
        ),
      ],
    );
  }
}


  
      