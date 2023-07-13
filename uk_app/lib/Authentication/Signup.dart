

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:uk_app/button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController dateinput = TextEditingController();
 String _selectedItem='Gender';
bool _obscureText=true;
bool _obscureText1=true;
  List<String> _items = ['Gender','Male', 'Female'];

   @override
  void initState() {
    dateinput.text = ""; 
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromRGBO(14, 76, 161, 1),
      body: Stack(
        children: [Container(
          width: double.infinity,
          height: 42.h,
          decoration: BoxDecoration(
color: Color.fromRGBO(251, 168, 46, 1),
borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(60.w,18.h),
bottomRight: Radius.elliptical(20.w, 20.h)
),
          ),
        ),
         

        Center(
          child: Padding(
            padding:  EdgeInsets.only(top:3.h ),
            child: Container(
              width: 78.w,
              height: 87.h,
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
                      'Sign up!',
                      style: GoogleFonts.roboto(textStyle:TextStyle(
                        color: Colors.black,
                        fontSize: 23.sp,
                        fontWeight: FontWeight.bold,
                      ),)
                    ),
                  
                    SizedBox(height: 2.h,),
                    Formfields(text: 'First Name',icon: Icons.person,obscureText: false,keyboardType: TextInputType.text,),

                     SizedBox(height: 2.h,),
                    Formfields(text: 'Last Name',icon: Icons.person,obscureText: false,keyboardType: TextInputType.text,),

                     SizedBox(height: 2.h,),
                    Formfields(text: 'Email address',icon: Icons.email,obscureText: false,keyboardType: TextInputType.emailAddress,),

                    SizedBox(height: 2.h,),

                    //password

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

                     SizedBox(height: 2.h,),

                     //confirm password
                                     TextFormField(
      obscureText: _obscureText1,
      decoration: InputDecoration(
        hintText: 'Confirm Password',
         
      labelText: 'Confirm Password',
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
              _obscureText1= !_obscureText1;
            });
          },
          child: Icon(
            _obscureText1 ? Icons.visibility_off : Icons.visibility,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ),
    ),
SizedBox(height: 2.h,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                        'Date of birth',
                        style: GoogleFonts.roboto(textStyle:TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),)
                                          ),
                      ),

                     SizedBox(height: 0.5.h,),
                   
//date of birth
TextFormField(
  decoration: InputDecoration(
    hintText: 'DD/MM/YYYY',
    labelStyle: TextStyle(color: Color.fromRGBO(72, 71, 71, 1)),
    fillColor: Color.fromRGBO(247, 247, 247, 1),
    filled: true,
    suffixIcon: Icon(Icons.calendar_today, color: Colors.black.withOpacity(0.5)),
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9), width: 1),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9), width: 1),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9), width: 1),
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 3.w),
  ),
  controller: dateinput,
  readOnly: true,
  onTap: () async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2050),
    );

    if (pickedDate != null) {
      // Format the pickedDate as a string in DD/MM/YYYY format
      String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
      dateinput.text = formattedDate;
    }
  },
),

                     SizedBox(height: 2.h,),
                     //dropdown\

                 DropdownButtonFormField<String>(
                value: _selectedItem,
                items: _items.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                 fillColor: Color.fromRGBO(247, 247, 247, 1),
      filled: true,
                  // labelText: _selectedItem,
                  border: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9), width: 1)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9), width: 1)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(143, 139, 139, 0.9), width: 1)),
                contentPadding: EdgeInsets.symmetric(vertical: 0.5.h,horizontal: 3.w)
                ),
                onChanged: (value) {
                  setState(() {
                    _selectedItem = value!;
                  });
                },
                onSaved: (value) {
          
                },
              ),

              //
SizedBox(height: 1.h,),
              Text(
                        'By clicking Sign Up, you agree to our Terms, Privacy Policy and Cookies Policy.',
                        style: GoogleFonts.roboto(textStyle:TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),)
                                          ),

SizedBox(height: 2.h,),
           
Button(text: 'Sign up', onTap: (){})
      

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
      suffixIcon: Icon(icon, color: Colors.black.withOpacity(0.5)),
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


