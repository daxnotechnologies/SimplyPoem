import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simply_poem/screens/login.dart';

import 'bottomBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () => moveToNextScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Image(
            image: AssetImage("assets/logo.png"),
          ),
        ),
      ),
    );
  }

  moveToNextScreen() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }
}
