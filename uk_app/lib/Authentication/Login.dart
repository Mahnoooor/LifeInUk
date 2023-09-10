

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/Authentication/Signup.dart';
import 'package:uk_app/Session.dart';
import 'package:uk_app/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uk_app/navbar.dart';
import 'package:uk_app/screens/homee.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   final _formKey = GlobalKey<FormState>();
    final TextEditingController name = TextEditingController();
   final TextEditingController email=TextEditingController();
   final TextEditingController password=TextEditingController();
FirebaseAuth _auth = FirebaseAuth.instance;

  bool _obscureText=true;

  //loginn

 @override
  void dispose() {
    
    email.dispose();
    password.dispose();
    super.dispose();
  }
  //logic function
//    @override
//   void initState() {
//     super.initState();
//     checkLoggedInStatus();
//   }
// //shared pref use
//   Future<void> checkLoggedInStatus() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? email = prefs.getString('email');
//     String? password = prefs.getString('password');

//     if (email != null && password != null) {
     
//       loginUser(email, password);
//     }
//   }

  // Logic function
  Future<void> loginUser(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('user logged in');
      // Save the login credentials for automatic login next time
      // saveLoginCredentials(email, password);
      // SessionManager.setLoggedIn(true);
      Get.off(BottomNavBar());
    } catch (e) {
      debugPrint(e.toString());
      print(e.toString());
      Get.snackbar(
        'Login failed',
        'Incorrect email or password',
        duration: Duration(seconds: 3),
        backgroundColor: Color.fromRGBO(14, 76, 161, 1),
        colorText: Colors.white,
      );
    }
  }
//saving login stuff
  // Future<void> saveLoginCredentials(String email, String password) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('email', email);
  //   prefs.setString('password', password);
  // }

//forget password

Future resetPassword() async{
try {
  await FirebaseAuth.instance.sendPasswordResetEmail(
      email: email.text.trim());
        Get.snackbar(
        'Password Resr Email Sent',
        '',
        duration: Duration(seconds: 3),
        backgroundColor: Color.fromRGBO(14, 76, 161, 1),
        colorText: Colors.white,
      );

}
 on FirebaseAuthException catch(e)
  {
    print(e);
  Get.snackbar(
        '$e',
        'Incorrect email',
        duration: Duration(seconds: 3),
        backgroundColor: Color.fromRGBO(14, 76, 161, 1),
        colorText: Colors.white,
        
      );
  }
}





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(14, 76, 161, 1),
      body: Form(
         key: _formKey,
        child: Stack(
          children: [

            Image.asset('assets/red.png'),
            Positioned(
              top: 70,
             right:70,
                child: Image.asset('assets/login.png'),
            ),
          
            Positioned(
              top: 110,
             
              left: 60,
              child: Text(
                          'Life In the UK',
                          style: GoogleFonts.montserrat(textStyle:TextStyle(
                            color: Colors.white,
                            fontSize: 25.sp,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),)
                        ),
            ),
      
          Center(
            child: Padding(
              padding:  EdgeInsets.only(top:22.h ),
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
                        style: GoogleFonts.montserrat(textStyle:TextStyle(
                          color: Colors.black,
                          fontSize: 23.sp,
                          fontWeight: FontWeight.bold,
                        ),)
                      ),
                    
                      SizedBox(height: 3.h,),
                      Formfields(text: 'Email address',icon: Icons.email,obscureText: false,
                      keyboardType: TextInputType.emailAddress, controller: email,
                      validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!GetUtils.isEmail(value)) {
                            return 'Please enter a valid email';
                          }
                           final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Invalid email format';
    }
                          return null;
                        },
                        ),
      
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
      
        controller: password,validator:(value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 6) {
                            return 'Password should be at least 6 characters';
                          }
                          return null;
                        }
          ),
      SizedBox(height: 0.5.h,),
      
                      Align(
                        alignment: Alignment.topRight,
                         child:TextButton(onPressed: (){
                          resetPassword();
                         }, child: Text(
                          'Forgot password?',
                          style: GoogleFonts.montserrat(textStyle:TextStyle(
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
           Button(text: 'Sign in', onTap: () async {
                          if (_formKey.currentState!.validate()) {
                           var userEmail = email.text.trim();
    var userPassword = password.text.trim();
    await loginUser(userEmail, userPassword);
                          }
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
                        TextButton(onPressed: (){
                          Get.to(SignUp());
                        }, child: Text(
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
      ),
    );
  }
}

class Formfields extends StatelessWidget {
  final String text;
  final IconData icon;
  final TextInputType? keyboardType;
  final bool obscureText;
    final Function(String)? validator;
  final TextEditingController controller;

  const Formfields({
    Key? key,
    required this.text,
    required this.icon,
    this.keyboardType,
    required this.obscureText,
     this.validator, 
     required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    TextFormField(
    controller: controller,
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


