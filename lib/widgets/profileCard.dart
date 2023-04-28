import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Profilecard extends StatelessWidget {
  Profilecard({required this.icon, required this.text});

  final icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(icon),
              SizedBox(
                width: 4.0.w,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Color(0xffF1BAFF),
          ),
        ],
      ),
    );
  }
}
