import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import '../widgets/textWidget.dart';

class SinglePoemScreen extends StatefulWidget {
  const SinglePoemScreen({super.key});

  @override
  State<SinglePoemScreen> createState() => _SinglePoemScreenState();
}

class _SinglePoemScreenState extends State<SinglePoemScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kScaffoldBg,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 2.0.h),
            child: Column(
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Center(
                  child: Image(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,
                    image: AssetImage("assets/poem.png"),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextWidget(
                  text: "A Fairy Tale",
                  size: 25.0.sp,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Up the airy mountain, Down the rushy glen, We daren't go a-hunting For fear of little men; Wee folk, good folk, Trooping all together; Green jacket, red cap, And white owl's feather. Down along the rocky shore Some make their home, They live on crispy pancakes Of yellow tide-foam; Some in the reeds Of the black mountain lake,",
                  style: TextStyle(
                      color: Color(0xffE8D8F2),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.7.sp,
                      fontSize: 13.sp),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
