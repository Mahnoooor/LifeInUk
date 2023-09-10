    import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class hint extends StatefulWidget {
  final String image;
  const hint({super.key, required this.image});

  @override
  State<hint> createState() => _hintState();
}

class _hintState extends State<hint> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 30.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                         Get.back(); 
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: CircleAvatar(
          radius: 25.sp,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(widget.image),
        ),
      ),
    );
  }
}
    
