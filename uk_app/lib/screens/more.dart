import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uk_app/screens/FAQ.dart';
import 'package:uk_app/screens/Terms.dart';
import 'package:uk_app/screens/policy.dart';
import 'package:uk_app/screens/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uk_app/screens/splash.dart';

import '../Session.dart';
import '../red.dart';
import '../text.dart';
import 'homee.dart';
import 'notification.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {

   //Logout
void logout() async {
  SessionManager.setLoggedIn(false);
  var status = await SessionManager.isLoggedIn();
  if(status==false){
    SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
  try {
    await FirebaseAuth.instance.signOut();
  
  } catch (e) {
    print('Error signing out: $e');
    
  }
 
  Get.off(() => splash());
  }
  
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Stack(
        children: [

          Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/mm.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          Red(),

          Positioned(
            top: 30,
            child: Image.asset('assets/m.png')),

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

   Positioned(
              top: 190,
         right: -0,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(onPressed: (){
                    Get.to(Profile());
                  }, child:  Textt(
                      text: 'Edit Profile',
                      color: Colors.black,
                      weight: FontWeight.w500,
                      fontSize: 17.5.sp,
                    ),),
                )
              ),
               Positioned.fill(
              top: -200,
                 child: Divider(
                     color: Colors.grey, 
                     thickness: 0.25.w, 
                   ),
               ),
      
           //notification
                Positioned(
                  top: 240,
                  right: 30,
                  child:  Row(
         children: [
           Container(
             width: 8.w,
             height: 3.5.h,
           decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black87),
                     boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2.sp, 
                      blurRadius: 5.sp, 
                      offset: const Offset(0, 4), 
                    ),
                  ],
                  ),
             child: Icon(Icons.notification_add_outlined,size: 19.sp,),
           ),
             SizedBox(width: 2.w,),
              
             Text(
               'Notification Settings',
               style: GoogleFonts.roboto(textStyle:TextStyle(
                 color: Colors.black,
                 fontSize: 17.sp,
                 letterSpacing: 0.25,
                 fontWeight: FontWeight.w500,
               ),
               )
             

             
             ),
             SizedBox(width:19.5.w,),
             IconButton(onPressed: (){
              Get.to( notification());
             }, icon:Icon (Icons.arrow_forward_ios_rounded,size: 20.sp,))
      
         ],
       )
                  // MoreIcons(ontap: () {  }, text: 'Notification Settings', icon: Icons.notification_add_outlined,)
                ),

//share
             Positioned(
              top: 290,
              left: 30,
               child: MoreIcons(ontap: () {  }, text: 'Share', icon: Icons.ios_share,)
             ),

//contact
  Positioned(
              top: 340,
              left: 30,
               child: MoreIcons(ontap: () {  }, text: 'Contact Us', icon: Icons.phone,),
             ),
//contact
  Positioned(
              top: 390,
              left: 30,
               child: MoreIcons(ontap: () {  Get.to(FAQ());}, text: 'FAQs', icon: Icons.man_sharp,)
             ),

//condition
  Positioned(
              top: 440,
              left: 30,
               child: MoreIcons(ontap: () { Get.to(Terms()); }, text: 'Terms & Conditions', icon: Icons.file_present_sharp,)
             ),

//privacy
  Positioned(
              top: 490,
              left: 30,
               child: MoreIcons(ontap: () { Get.to(Policy()); }, text: 'Privacy Policy', icon: Icons.privacy_tip_sharp,)
             ),

 Positioned.fill(
              top: 440,
                 child: Divider(
                     color: Colors.grey, 
                     thickness: 0.25.w, 
                   ),
               ),

     //logout
  Positioned(
              top: 570,
              left: 30,
               child: MoreIcons(ontap: () { logout(); }, text: 'Logout', icon: Icons.subdirectory_arrow_right_rounded,)
             ),          

        ],
      ),
    );
  }
}

class MoreIcons extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final IconData icon;
  const MoreIcons({
    super.key, required this.text, required this.ontap, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
         children: [
           Container(
             width: 7.5.w,
             height: 3.25.h,
            decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black87),
                     boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2.sp, 
                      blurRadius: 5.sp, 
                      offset: const Offset(0, 4), 
                    ),
                  ],
                  ),
             child: Center(child: Icon(icon,size: 19.sp,)),
           ),
             SizedBox(width: 2.w,),
             TextButton(onPressed: ontap, child: 
             Text(
               text,
               style: GoogleFonts.roboto(textStyle:TextStyle(
                 color: Colors.black,
                 fontSize: 17.sp,
                 letterSpacing: 0.25,
                 fontWeight: FontWeight.w500,
               ),
               )
             ),
             ),
      
         ],
       );
  }
}