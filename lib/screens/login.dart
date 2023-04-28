import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simply_poem/screens/forgetPassword.dart';
import 'package:simply_poem/screens/getStarted2.dart';
import 'package:simply_poem/screens/signup.dart';
import 'package:simply_poem/screens/trialEnded.dart';
import 'package:simply_poem/widgets/authTextField.dart';
import 'package:simply_poem/widgets/buttonWidget.dart';
import 'package:simply_poem/widgets/textWidget.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  text: "Login to your account",
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
                  height: 2.h,
                ),
                AuthTextField(
                  controller: _passwordcontroller,
                  obsecureText: true,
                  text: "Password",
                  icon: "assets/lock.png",
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgetPasswordScreen()),
                      );
                    },
                    child: Text(
                      "Forgot the password?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GetStarted2(),
                      ),
                    );
                  },
                  child: ButtonWidget(text: "Login"),
                ),
                SizedBox(
                  height: 6.0.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.2.h),
                      child: Text(
                        'or continue with',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            letterSpacing: 1.7,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 0.5,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage("assets/google.png"),
                      ),
                    ),
                    Expanded(
                      child: Image(
                        image: AssetImage("assets/fb.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.0.h,
                ),
                Wrap(
                  children: [
                    Text(
                      "Don’t have an account? ",
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
                              builder: (context) => const SignupScreen()),
                        );
                      },
                      child: Text(
                        "Sign Up",
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
