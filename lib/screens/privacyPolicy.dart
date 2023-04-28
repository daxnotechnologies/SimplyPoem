import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kScaffoldBg,
          title: Text("Privacy Policy"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 2.0.h),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce massa dolor non turpis. Purus suscipit mauris semper arcu at pulvinar. In sociis morbi magna at non arcu ornare nunc porttitor. Elementum id placerat elit bibendum. Ut tellus mi euismod semper vulputate congue nunc. Urna, mauris tempor fermentum sit est nibh. Pharetra posuere tincidunt amet id aliquet imperdiet ac, aliquam. Ut ipsum faucibus feugiat aliquam consectetur etiam quisque. Magna feugiat diam gravida sagittis. Tempor montes, at egestas nullam fringilla at consectetur cursus convallis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce massa dolor non turpis. Purus suscipit mauris semper arcu at pulvinar. In sociis morbi magna at non arcu ornare nunc porttitor. Elementum id placerat elit bibendum. Ut tellus mi euismod semper vulputate congue nunc. Urna, mauris tempor fermentum sit est nibh. Pharetra posuere tincidunt amet id aliquet imperdiet ac, aliquam Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce massa dolor non turpis. Purus suscipit mauris semper arcu at pulvinar. In sociis morbi magna at non arcu ornare nunc porttitor. Elementum id placerat elit aliquam consectetur etiam quisque. Magna feugiat diam semper vulputate congue nunc. Urna, mauris tempor fermentum sit est nibh. Pharetra posuere tincidunt amet id aliquet imperdiet ac, aliquam..",
              style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  letterSpacing: 0.5.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffE8D8F2)),
            ),
          ),
        ),
      ),
    );
  }
}
