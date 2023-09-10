import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/screens/homee.dart';

import '../red.dart';
import '../text.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Stack(
        children: [

          Align(alignment: AlignmentDirectional.bottomCenter,
            child: Padding(
               padding:  EdgeInsets.only(top: 45.h,left: 2.w,right: 2.w),
              child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/pro.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
            ),
          ),
          Red(),

        Positioned(
          top: 30,
          left: 10,
          child: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,))),

            Positioned(
              top: 35,
              right: 30,
              left: 30,
              child: InkWell(
                onTap: () {
                  
                },
                child: CircleAvatar(
                  radius: 28.sp,
                  backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                  child: Icon(Icons.person,color: Colors.white,size:36.sp ,),
                ),
              ),
            ),

             Positioned(
              top: 115,
         
              child: Transform.translate(
                offset: Offset(48.sp, 0),
                child: TextButton(onPressed: (){}, child:  Textt(
                    text: 'User Name',
                    color: Colors.black,
                    weight: FontWeight.w500,
                    fontSize: 19.sp,
                    linespace: 0.25,
                  ),)
              ),
            ),

              Positioned(
              top: 140,
         
              child: Transform.translate(
                offset: Offset(44.sp, 0),
                child: TextButton(onPressed: (){}, child:  Textt(
                    text: 'abc@gmail.com',
                    color: Colors.black,
                    weight: FontWeight.w400,
                    fontSize: 18.sp,
                    linespace: 0.25,
                  ),)
              ),
            ),

               Positioned.fill(
              top: -200,
                 child: Divider(
                     color: Colors.grey, 
                     thickness: 0.25.w, 
                   ),
               ),
           Positioned(
  top: 290,
  left: 30,
  right: 0,
  child: Material(
    borderRadius: BorderRadius.circular(0),
    color: Colors.transparent, 
    child: TextFormField(
      decoration: const InputDecoration(
        border: InputBorder.none, 
        enabledBorder: InputBorder.none, 
        focusedBorder: InputBorder.none, 
        filled: false, 
        hintText: 'User Name ',
        hintStyle: TextStyle( color: Colors.black, fontWeight: FontWeight.w500),
        contentPadding: EdgeInsets.all(8),
      ),
    ),
  ),
),

    
      Positioned(
        top:360,
      left: 30,
        child: Textt(text: 'Contact Number', color: Colors.black, weight: FontWeight.w500, fontSize: 17.sp)),
Positioned(
  top: 400,
  left: 30,
  right: 0,
  child: Material(
    borderRadius: BorderRadius.circular(0),
    color: Colors.transparent, 
    child: TextFormField(
      decoration: const InputDecoration(
        border: InputBorder.none, 
        enabledBorder: InputBorder.none, 
        focusedBorder: InputBorder.none, 
        filled: false, 
        hintText: '+44 7700 900077',
        contentPadding: EdgeInsets.all(8),
      ),
    ),
  ),
)
,

 Positioned(
        top:460,
      left: 30,
        child: Textt(text: 'Home Address', color: Colors.black, weight: FontWeight.w500, fontSize: 17.sp)),
Positioned(
  top: 490,
  left: 30,
  right: 0,
  child: Material(
    borderRadius: BorderRadius.circular(0),
    color: Colors.transparent, 
    child: TextFormField(
      decoration: const InputDecoration(
        border: InputBorder.none, 
        enabledBorder: InputBorder.none, 
        focusedBorder: InputBorder.none, 
        filled: false, 
        hintText: 'Lorem ipsum',
        contentPadding: EdgeInsets.all(8),
      ),
    ),
  ),
),

Positioned(
  top: 550,
  left: 110,
  child:   Container(
  
    width: 38.w,
    height: 7.h,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15.sp),
    color: Color.fromRGBO(237, 27, 36, 0.9),
  ),
  child: TextButton(onPressed: (){}, child: Textt(text: 'Save', color: Colors.white, weight: FontWeight.w600, fontSize: 18.sp)),
  ),
),

Positioned(
  top: 620,
  left: 110,
  child:   Container(
  
    width: 38.w,
    height: 7.h,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15.sp),
    color: Colors.transparent
  ),
  child: TextButton(onPressed: (){}, child: Textt(text: 'Delete account', color: Colors.black, weight: FontWeight.w600, fontSize: 17.sp)),
  ),
),

        ],
      ),
    );
  }
}