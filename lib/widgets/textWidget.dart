import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    required this.text,
    this.size,
  });

  final text;
  final size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
          fontSize: size,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.5,
          color: Colors.white),
    );
  }
}
