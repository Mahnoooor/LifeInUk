import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:uk_app/Authentication/Login.dart';
import 'package:uk_app/navbar.dart';
import 'package:uk_app/screens/FAQ.dart';
import 'package:uk_app/screens/Terms.dart';
import 'package:uk_app/screens/chapters/chap1.dart';
import 'package:uk_app/screens/homee.dart';
import 'package:uk_app/screens/more.dart';
import 'package:uk_app/screens/policy.dart';
import 'package:uk_app/screens/splash.dart';
import 'package:uk_app/screens/try.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Authentication/Signup.dart';
import 'screens/profile.dart';


void main() async {
     WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {

    return   GetMaterialApp(
      title: 'Flutter Demo',
   home: BottomNavBar(),
   debugShowCheckedModeBanner: false,
    );
      }
    );
  }
}
