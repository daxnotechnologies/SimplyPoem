import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simply_poem/widgets/buttonWidget.dart';
import 'package:simply_poem/widgets/plancard.dart';
import 'package:simply_poem/widgets/textWidget.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';

class SubscriptionPlanScreen extends StatefulWidget {
  const SubscriptionPlanScreen({super.key});

  @override
  State<SubscriptionPlanScreen> createState() => _SubscriptionPlanScreenState();
}

class _SubscriptionPlanScreenState extends State<SubscriptionPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kScaffoldBg,
          title: Text("Subscription details"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 2.0.h),
            child: Column(
              children: [
                TextWidget(
                  text:
                      "With the choice of monthly or annual subscriptions, treat your significant other to the gift of poetry and show your thoughtfulness.",
                  size: 15.sp,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 3.5.h, horizontal: 4.0.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Subscription Details",
                            style: GoogleFonts.poppins(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          textAlign: TextAlign.left,
                          "Ends on 05/04/24",
                          style: GoogleFonts.poppins(
                            color: Color(0xff723D92),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          textAlign: TextAlign.left,
                          "15 May 2024 - Next Payment",
                          style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select your plan",
                    style: GoogleFonts.poppins(
                      color: Color(0xffffffff),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                PlanCard(
                  title: "Monthly",
                  desc: "Expires in 30 Days",
                  price: "\$1.25",
                ),
                SizedBox(
                  height: 3.h,
                ),
                PlanCard(
                  title: "Yearly",
                  desc: "Expires in 365 Days",
                  price: "\$155",
                ),
                SizedBox(height: 6.0.h),
                InkWell(
                    onTap: () {}, child: ButtonWidget(text: "Subscribe Now"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
