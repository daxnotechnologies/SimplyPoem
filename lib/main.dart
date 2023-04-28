import 'package:flutter/material.dart';
import 'package:simply_poem/constants/constants.dart';
import 'package:simply_poem/screens/bottomBar.dart';
import 'package:simply_poem/screens/contactUs.dart';
import 'package:simply_poem/screens/getStarted.dart';
import 'package:simply_poem/screens/poemsArchieve.dart';
import 'package:simply_poem/screens/splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simply_poem/screens/trialEnded.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SimplyPoem',
        theme: ThemeData(
          scaffoldBackgroundColor: kScaffoldBg,
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      );
    });
  }
}
