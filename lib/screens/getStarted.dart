import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simply_poem/screens/login.dart';
import 'package:simply_poem/widgets/buttonWidget.dart';
import 'package:simply_poem/widgets/textWidget.dart';
import 'package:sizer/sizer.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/getstartedbac.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0.h, horizontal: 2.0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.5,
                  image: AssetImage("assets/getstarted.png"),
                ),
                SizedBox(height: 2.h),
                Center(
                  child: TextWidget(
                    text: "Write Poem Just In Touch!",
                    size: 32.0.sp,
                  ),
                ),
                SizedBox(height: 0.5.h),
                Text(
                  textAlign: TextAlign.center,
                  "Show your thoughtfulness by treating your significant other to the meaningful and thoughtful gift of poem.",
                  style: GoogleFonts.poppins(
                    color: Color(0xffFFF3F3),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5.h),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: ButtonWidget(text: "Get Started"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
