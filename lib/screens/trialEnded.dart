import 'package:flutter/material.dart';
import 'package:simply_poem/screens/bottomBar.dart';
import 'package:sizer/sizer.dart';

import '../widgets/buttonWidget.dart';
import '../widgets/textWidget.dart';
import 'subscriptionPlans.dart';

class TrialEndedScreen extends StatefulWidget {
  const TrialEndedScreen({super.key});

  @override
  State<TrialEndedScreen> createState() => _TrialEndedScreenState();
}

class _TrialEndedScreenState extends State<TrialEndedScreen> {
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
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.2,
                    image: AssetImage("assets/trialended.png"),
                  ),
                ),
                TextWidget(
                  text: "Trial Period has been ended!",
                  size: 30.0.sp,
                ),
                SizedBox(
                  height: 6.0.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigationHolder()),
                    );
                  },
                  child: SecondaryButtonWidget(text: "View Sample Poems"),
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SubscriptionPlanScreen()),
                    );
                  },
                  child: ButtonWidget(text: "Subscribe Now"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
