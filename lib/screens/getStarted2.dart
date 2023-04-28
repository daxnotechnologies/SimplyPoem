import 'package:flutter/material.dart';
import 'package:simply_poem/screens/subscriptionPlans.dart';
import 'package:simply_poem/screens/trialEnded.dart';
import 'package:simply_poem/widgets/buttonWidget.dart';
import 'package:simply_poem/widgets/textWidget.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';

class GetStarted2 extends StatefulWidget {
  const GetStarted2({super.key});

  @override
  State<GetStarted2> createState() => _GetStarted2State();
}

class _GetStarted2State extends State<GetStarted2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 7.h,
            ),
            Center(
              child: Image(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
                image: AssetImage("assets/poem.png"),
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 2.0.h),
                child: Column(
                  children: [
                    TextWidget(
                      text:
                          "From the latest to the greatest hits, play your favorite tracks on now!",
                      size: 18.sp,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Center(
                      child: Image(
                        image: AssetImage("assets/divider.png"),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TrialEndedScreen()),
                          );
                        },
                        child: SecondaryButtonWidget(text: "Start Trial")),
                    SizedBox(
                      height: 3.h,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SubscriptionPlanScreen()),
                          );
                        },
                        child: ButtonWidget(text: "Subscribe Now"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
