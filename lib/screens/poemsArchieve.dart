import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simply_poem/constants/constants.dart';
import 'package:simply_poem/screens/singlePoemScreen.dart';
import 'package:sizer/sizer.dart';

class PoemsArchieveScreen extends StatefulWidget {
  const PoemsArchieveScreen({super.key});

  @override
  State<PoemsArchieveScreen> createState() => _PoemsArchieveScreenState();
}

class _PoemsArchieveScreenState extends State<PoemsArchieveScreen> {
  TextEditingController textController = TextEditingController();
  List<String> _options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  List<String> _selectedOptions = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kScaffoldBg,
          leading: Image.asset("assets/logo.png"),
          title: Text("Poems Archieve"),
          actions: [
            AnimSearchBar(
              width: 200,
              textController: textController,
              onSubmitted: (query) {
                // handle the submitted query here
              },
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
            ),
            SizedBox(
              width: 2.w,
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 2.0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SinglePoemScreen()),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image(
                          width: 8.w,
                          height: 10.h,
                          image: AssetImage("assets/poem.png"),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "A Fairy tale",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              "Over hill, over dale,Thorough bush, thorough brier",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffA095A7)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image(
                        width: 8.w,
                        height: 10.h,
                        image: AssetImage("assets/poem.png"),
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "A Fairy tale",
                            style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "Over hill, over dale,Thorough bush, thorough brier",
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffA095A7)),
                          ),
                        ],
                      ),
                    )
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
