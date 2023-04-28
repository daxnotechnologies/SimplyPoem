import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simply_poem/screens/login.dart';
import 'package:simply_poem/widgets/authTextField.dart';
import 'package:simply_poem/widgets/buttonWidget.dart';
import 'package:simply_poem/widgets/textWidget.dart';
import 'package:sizer/sizer.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 2.0.h),
            child: Column(
              children: [
                Center(
                  child: Image(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.25,
                    image: AssetImage("assets/logo.png"),
                  ),
                ),
                TextWidget(
                  text: "Create a new account",
                  size: 30.0.sp,
                ),
                SizedBox(
                  height: 5.h,
                ),
                AuthTextField(
                  controller: _namecontroller,
                  obsecureText: false,
                  text: "Username",
                  icon: "assets/mail.png",
                ),
                SizedBox(
                  height: 2.h,
                ),
                AuthTextField(
                  controller: _emailcontroller,
                  obsecureText: false,
                  text: "Email",
                  icon: "assets/mail.png",
                ),
                SizedBox(
                  height: 2.h,
                ),
                AuthTextField(
                  controller: _passwordcontroller,
                  obsecureText: true,
                  text: "Password",
                  icon: "assets/lock.png",
                ),
                SizedBox(
                  height: 6.0.h,
                ),
                InkWell(
                  onTap: () {},
                  child: ButtonWidget(text: "Sign up"),
                ),
                SizedBox(
                  height: 6.0.h,
                ),
                Wrap(
                  children: [
                    Text(
                      "Already have an account? ",
                      style: GoogleFonts.mulish(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.mulish(
                          color: Color(0xffF1BAFF),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
