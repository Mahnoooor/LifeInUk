import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/screens/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
     List pages=[
  Home(),
  Home(),
  Home(),
  // Home(),
  // Home()
  ];
  
int changed_index=0;
  void onTap(int index){
setState(() {
  changed_index=index;
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[changed_index],
      bottomNavigationBar: Container(
        height: 12.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(183, 23, 30, 1),
              Color.fromRGBO(237, 27, 36, 1)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          onTap: onTap,
          currentIndex: changed_index,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: false,
          showSelectedLabels:false,
          elevation: 0,
          unselectedLabelStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          selectedLabelStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          items: [
            buildBottomNavigationBarItem(Icons.home, 'Home', 0),
          
            buildBottomNavigationBarItem(Icons.bar_chart_sharp, 'Stats', 1),
            // BottomNavigationBarItem(icon: Separator(),
            //  label: ''),
            buildBottomNavigationBarItem(Icons.more_horiz, 'More', 2),
          ],
        ),
      ),
    );
  }

BottomNavigationBarItem buildBottomNavigationBarItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 25.sp,color: Colors.black,),
           Text(
              label,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height:2.h),
          if (index == changed_index)
           
             Align(
              alignment:Alignment.bottomCenter,
               child: Container(
                  height:0.5.h,
                  
                  width: double.infinity,
                  color: Colors.white, 
                ),
             ),
           
        ],
      ),
      label: '',
    );
  }

}
class Separator extends StatelessWidget{
  final double separatorWidth;
  final double itemHeight;
  final Color separatorColor;

  const Separator({
    this.separatorWidth = 2.0,
    this.itemHeight = 50,
    this.separatorColor = Colors.white,

});
  @override
  Widget build(BuildContext context){
    return Container(
      width: separatorWidth,
      height: itemHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            separatorColor,
            separatorColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
  }
