import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simply_poem/constants/constants.dart';
import 'package:sizer/sizer.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x723D92).withOpacity(0.5),
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
        color: kButtonBac,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 4.h),
          child: Text(
            text,
            style: GoogleFonts.mulish(
              color: kButtonText,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.045,
            ),
          ),
        ),
      ),
    );
  }
}

class SecondaryButtonWidget extends StatelessWidget {
  SecondaryButtonWidget({required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x723D92).withOpacity(0.5),
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 4.h),
          child: Text(
            text,
            style: GoogleFonts.mulish(
              color: Color(0xff723D92),
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.045,
            ),
          ),
        ),
      ),
    );
  }
}
