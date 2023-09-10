import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Option extends StatefulWidget {
  final String text;
  final bool initialValue;

  const Option({Key? key, required this.text, required this.initialValue})
      : super(key: key);

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 6.5.h,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(143, 139, 139, 0.9)),
        color: Color.fromRGBO(247, 247, 247, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            widget.text,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(width: 5.w,),
          Checkbox(
            checkColor: Colors.black,
            focusColor: Colors.black,
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
