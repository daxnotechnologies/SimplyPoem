import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simply_poem/screens/login.dart';
import 'package:simply_poem/widgets/authTextField.dart';
import 'package:simply_poem/widgets/buttonWidget.dart';
import 'package:simply_poem/widgets/textWidget.dart';
import 'package:sizer/sizer.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController _emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.2,
                    image: AssetImage("assets/logo.png"),
                  ),
                ),
                TextWidget(
                  text: "Forgot your password",
                  size: 30.0.sp,
                ),
                SizedBox(
                  height: 5.h,
                ),
                AuthTextField(
                  controller: _emailcontroller,
                  obsecureText: false,
                  text: "Email",
                  icon: "assets/mail.png",
                ),
                SizedBox(
                  height: 6.0.h,
                ),
                InkWell(
                  onTap: () {},
                  child: ButtonWidget(text: "Send Link"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
