import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../red.dart';
import '../text.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
   late bool status1;
bool initialToggleState=false;
  @override
  void initState() {
    super.initState();
    status1 = initialToggleState;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Stack(
            children: [
                   Red(),

          Positioned(
            top: 30,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {Get.back();},
                  icon: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.black,
                    size: 25.sp,
                  ),
                ),
                SizedBox(width: 2.w),
                Textt(
                  text: 'Notification Settings',
                  color: Colors.black,
                  weight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ],
            ),
          ),
//


Positioned(
            top: 110,
            left: 40,

            child: Row(
            
              children: [

                 Textt(
                  text: 'Notification Status',
                  color: Colors.black,
                  weight: FontWeight.w500,
                  fontSize: 17.sp,
                  linespace: 0,
                ),
 SizedBox(width: 20.w),
                Textt(
                  text: 'Enabled',//disable on click???
                  color: Colors.black,
                  weight: FontWeight.w500,
                  fontSize: 17.sp,
                  linespace: 0,
                ),
                
               

              ],
            ),
          ),
////

Positioned(
            top: 170,
            left: 40,

            child: Row(
            
              children: [

                 Textt(
                  text: 'Battery Optimization Applied?',
                  color: Colors.black,
                  weight: FontWeight.w500,
                  fontSize: 16.5.sp,
                  linespace: 0,
                ),
 SizedBox(width: 9.w),
                Textt(
                  text: 'Yes',//disable on click???
                  color: Colors.black,
                  weight: FontWeight.w500,
                  fontSize: 16.5.sp,
                  linespace: 0,
                ),
                
      
           

              ],
            ),
          ),

          //line

           Positioned.fill(
              top: -250,
                 child: Divider(
                     color: Colors.grey, 
                     thickness: 0.25.w, 
                   ),
               ),

               ////
            
              Positioned(
                  top: 270,
                  left: 35,
                  child:  Row(
         children: [
         
          ImageIcon(AssetImage('assets/icon1.png')),
          
           
             SizedBox(width: 4.w,),
              
             Text(
               'Notification Sound',
               style: GoogleFonts.montserrat(textStyle:TextStyle(
                 color: Colors.black,
                 fontSize: 17.sp,
                 letterSpacing: 0.25,
                 fontWeight: FontWeight.w500,
               ),
               )
             

             
             ),
             SizedBox(width:16.w,),

   FlutterSwitch(
                  width: 11.w,
                  height: 2.75.h,
                  activeColor: Color.fromRGBO(237, 27, 36, 1),
                  toggleSize: 20.sp,
                  padding: 0.001.w,
                  activeToggleColor: Color.fromRGBO(238, 238, 238, 1),
                  inactiveColor: Color.fromRGBO(237, 27, 36, 1),
                  inactiveToggleColor: Color.fromRGBO(238, 238, 238, 1),
                  value: status1,
                  onToggle: (val) {
                    setState(() {
                      status1 = val;
                    });
                  },
                ),
           
      
         ],
       ),
                 
                ),

                  Positioned(
                  top: 320,
                  left: 35,
                  child:  notificationRow(img: 'assets/icon2.png', ontap: () {  }, text: 'Set Push Notifications',width: 13.w,)
                 
                ),

                  Positioned(
                  top: 370,
                  left: 35,
                  child:  notificationRow(img: 'assets/icon3.png', ontap: () {  }, text: 'Troubleshoot Notification',width: 5.w,)
                 
                ),

        
            ],
          )
     
    );
  }
}

class notificationRow extends StatelessWidget {
  final String text;
  final String img;
  final VoidCallback ontap;
  final double width;
  const notificationRow({
    super.key, required this.text, required this.img, required this.ontap, required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
         children: [
         
          ImageIcon(AssetImage(img)),
          
           
             SizedBox(width: 4.w,),
              
             Text(
               text,
               style: GoogleFonts.montserrat(textStyle:TextStyle(
                 color: Colors.black,
                 fontSize: 17.sp,
                 letterSpacing: 0.25,
                 fontWeight: FontWeight.w500,
               ),
               )
             

             
             ),
             SizedBox(width:width,),
             IconButton(onPressed:ontap, icon:Icon (Icons.arrow_forward_ios_rounded,size: 20.sp,))
      
         ],
       );
  }
}