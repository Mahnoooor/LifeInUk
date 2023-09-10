import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:uk_app/screens/homee.dart';
import 'package:uk_app/screens/more.dart';
import 'package:uk_app/screens/stats.dart';
import 'package:uk_app/text.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0; 
    List<Widget> pages =const [
    Homee(),
    Stats(),
    More(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 9.h,
          decoration: BoxDecoration(
            color: Color.fromRGBO(237, 27, 36, 1),
            border: Border.all(color: Color.fromRGBO(183, 23, 30, 1), width: 0.25.w),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildTabItem("Home", Icons.home, 0,),
              Container(color: Colors.white, width: 0.5.w),
              _buildTabItem("Stats", Icons.bar_chart_sharp, 1,),
              Container(color: Colors.white, width: 0.5.w),
              _buildTabItem("More", Icons.more_horiz_outlined, 2, ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem(String title, IconData iconData, int index,) {
    bool isSelected = index == selectedIndex; // Check if the item is currently selected
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // Update the selected index when an item is tapped
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(iconData, color:Colors.white, size: 22.sp),
            SizedBox(height: 4.sp), // Adjust the spacing between the icon and text as needed
            Text(
              title,
              style: TextStyle(
                color:  Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17.sp,
              ),
            ),
            SizedBox(height: 2.5.h,),
            Container(
              height: 4.sp,
              width: isSelected ? double.infinity : 0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
//      