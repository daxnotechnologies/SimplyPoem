import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';

class PersonalityField extends StatelessWidget {
  PersonalityField({required this.text, required this.controller});

  final text;

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      style: TextStyle(
        color: Color(0xff868889),
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.3,
      ),
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          color: Color(0xff868889),
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.3,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
