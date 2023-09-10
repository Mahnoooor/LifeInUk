import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class Textt extends StatefulWidget {
  final String text;
  final Color color;
  final FontWeight weight;
   final double fontSize;
   final double ? linespace;
  const Textt({super.key, required this.text, required this.color, required this.weight, required this.fontSize, this.linespace});

  @override
  State<Textt> createState() => _TexttState();
}

class _TexttState extends State<Textt> {
  @override
  Widget build(BuildContext context) {
    return  Text(
                widget.text,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: widget.color,
                    fontSize: widget.fontSize,
                    letterSpacing: widget.linespace,
                    fontWeight: widget.weight,
                  ),
                ),
              );
  }
}