import 'package:flutter/material.dart';
import 'package:simply_poem/constants/constants.dart';
import 'package:sizer/sizer.dart';

class AuthTextField extends StatelessWidget {
  AuthTextField(
      {required this.obsecureText,
      required this.text,
      required this.icon,
      required this.controller});

  bool obsecureText;
  final text;
  final icon;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      style: TextStyle(
        color: Colors.white,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.3,
      ),
      obscureText: obsecureText,
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.3,
        ),
        prefixIcon: Image.asset(icon),
        filled: true,
        fillColor: kTextfieldBg,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            width: 3,
            color: Colors.red,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
