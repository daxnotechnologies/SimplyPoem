import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simply_poem/widgets/buttonWidget.dart';
import 'package:simply_poem/widgets/personalityField.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';

class PersonalityFormScreen extends StatefulWidget {
  const PersonalityFormScreen({super.key});

  @override
  State<PersonalityFormScreen> createState() => _PersonalityFormScreenState();
}

class _PersonalityFormScreenState extends State<PersonalityFormScreen> {
  TextEditingController question1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kScaffoldBg,
          title: Text("Personality Form"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 2.0.h),
            child: Column(
              children: [
                PersonalityField(
                  text: "What are some of his/her passions and interests?",
                  controller: question1,
                ),
                SizedBox(height: 2.h),
                PersonalityField(
                  text: "What are some of his/her unique talents or skills?",
                  controller: question1,
                ),
                SizedBox(height: 2.h),
                PersonalityField(
                  text:
                      "What are some of his/her favorite memories or experiences?",
                  controller: question1,
                ),
                SizedBox(height: 2.h),
                PersonalityField(
                  text:
                      "What are some of his/her favorite places or things to do?",
                  controller: question1,
                ),
                SizedBox(height: 2.h),
                PersonalityField(
                  text:
                      "What are some of his/her personality traits that stand out to you?",
                  controller: question1,
                ),
                SizedBox(height: 2.h),
                PersonalityField(
                  text:
                      "What are some of the things he/she values most in life?",
                  controller: question1,
                ),
                SizedBox(height: 2.h),
                PersonalityField(
                  text:
                      "What are some of the challenges he/she has faced and overcome?",
                  controller: question1,
                ),
                SizedBox(height: 2.h),
                PersonalityField(
                  text:
                      "What are some of his/her dreams and aspirations for the future?",
                  controller: question1,
                ),
                SizedBox(height: 2.h),
                PersonalityField(
                  text:
                      "What are some of the ways he/she has impacted your life or the lives of others?",
                  controller: question1,
                ),
                SizedBox(height: 6.h),
                InkWell(onTap: () {}, child: ButtonWidget(text: "Craft a Poem"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
