import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:uk_app/Authentication/Login.dart';
import 'package:uk_app/navbar.dart';
import 'package:uk_app/screens/home.dart';
import 'package:uk_app/screens/splash.dart';

import 'Authentication/Signup.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
    return const GetMaterialApp(
      title: 'Flutter Demo',
   home: splash(),
   debugShowCheckedModeBanner: false,
    );
      }
    );
  }
}
