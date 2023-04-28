import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:simply_poem/screens/bottomBar.dart';
import 'package:simply_poem/screens/contactUs.dart';
import 'package:simply_poem/screens/login.dart';
import 'package:simply_poem/screens/personalityForm.dart';
import 'package:simply_poem/screens/poemsArchieve.dart';
import 'package:simply_poem/screens/privacyPolicy.dart';
import 'package:simply_poem/screens/subscriptionPlans.dart';
import 'package:simply_poem/widgets/buttonWidget.dart';
import 'package:simply_poem/widgets/profileCard.dart';
import 'package:simply_poem/widgets/textWidget.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _imageFile;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 2.0.h),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 115,
                    width: 115,
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.expand,
                      children: [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Colors.grey[300],
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRRZMZU4ZFxCqMvgBTlmy1XK52qm5lfyrU3cAaui3_&s"),
                        ),
                        Positioned(
                          right: -16,
                          bottom: 0,
                          child: SizedBox(
                            height: 46,
                            width: 46,
                            child: GestureDetector(
                              onTap: getImage,
                              child: Center(
                                  child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.add_a_photo,
                                    color: Colors.green,
                                  ),
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextWidget(
                    text: "Olivia Austin",
                    size: 15.sp,
                  ),
                  Text(
                    "oliviaaustin@gmail.com",
                    style: TextStyle(
                        color: Color(0xffE8D8F2),
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp,
                        letterSpacing: 1.sp),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Profilecard(
                    icon: "assets/editprofile.png",
                    text: "Edit Profile",
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PersonalityFormScreen()),
                    );
                  },
                  child: Profilecard(
                    icon: "assets/personality.png",
                    text: "Edit Personality form",
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SubscriptionPlanScreen()),
                    );
                  },
                  child: Profilecard(
                    icon: "assets/creditCards.png",
                    text: "Subscription Plans",
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigationHolder()),
                    );
                  },
                  child: Profilecard(
                    icon: "assets/poems.png",
                    text: "My Poems",
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrivacyPolicyScreen()),
                    );
                  },
                  child: Profilecard(
                    icon: "assets/privacy.png",
                    text: "Privacy Policy",
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactUsScreen()),
                    );
                  },
                  child: Profilecard(
                    icon: "assets/contact.png",
                    text: "Contact Us",
                  ),
                ),
              ],
            ),
            Spacer(),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                child: SecondaryButtonWidget(text: "Logout")),
          ],
        ),
      ),
    ));
  }

  Future getImage() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      setState(() {
        _imageFile = File(result.files.single.path.toString());
      });
    }
  }
}
